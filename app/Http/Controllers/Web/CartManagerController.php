<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\Cart;
use App\Models\ReserveMeeting;
use App\Models\Ticket;
use App\Models\Webinar;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cookie;
use mysql_xdevapi\Exception;

class CartManagerController extends Controller
{
    public $cookieKey = 'carts';

    public function getCarts()
    {
        $carts = null;

        if (auth()->check()) {
            $user = auth()->user();

            $carts = $user->carts()
                ->with([
                    'webinar'
                ])
                ->get();
        } else {
            $cookieCarts = Cookie::get($this->cookieKey);

            if (!empty($cookieCarts)) {
                $cookieCarts = json_decode($cookieCarts, true);

                if (!empty($cookieCarts) and count($cookieCarts)) {
                    $carts = collect();

                    foreach ($cookieCarts as $cookieCart) {

                        $webinar = Webinar::where('id', $cookieCart['webinar_id'])
                            ->where('private', false)
                            ->where('status', 'active')
                            ->first();

                        if (!empty($webinar)) {
                            $ticket = null;

                            if (!empty($cookieCart['ticket_id'])) {
                                $ticket = Ticket::where('id', $cookieCart['ticket_id'])->first();
                            }

                            $item = (object)[
                                'webinar_id' => $webinar->id,
                                'webinar' => $webinar,
                                'ticket' => $ticket
                            ];

                            $carts->add($item);
                        }
                    }
                }
            }
        }

        return $carts;
    }

    public function storeCookieCartsToDB()
    {
        try {
            if (auth()->check()) {
                $user = auth()->user();
                $carts = Cookie::get($this->cookieKey);

                if (!empty($carts)) {
                    $carts = json_decode($carts, true);

                    if (!empty($carts)) {
                        foreach ($carts as $cart) {
                            if (!empty($cart['webinar_id'])) {
                                $webinar_id = $cart['webinar_id'];
                                $ticket_id = $cart['ticket_id'] ?? null;

                                $this->storeUserCart($user, $webinar_id, $ticket_id);
                            }
                        }
                    }

                    Cookie::queue($this->cookieKey, null, 0);
                }
            }
        } catch (\Exception $exception) {

        }
    }

    public function storeUserCart($user, $webinar_id, $ticket_id)
    {
        $webinar = Webinar::where('id', $webinar_id)
            ->where('private', false)
            ->where('status', 'active')
            ->first();

        if (!empty($webinar) and !empty($user)) {
            $checkCourseForSale = checkCourseForSale($webinar, $user);

            if ($checkCourseForSale != 'ok') {
                return $checkCourseForSale;
            }

            $activeSpecialOffer = $webinar->activeSpecialOffer();

            if (!empty($webinar) and $webinar->canSale()) {
                Cart::updateOrCreate([
                    'creator_id' => $user->id,
                    'webinar_id' => $webinar_id,
                ], [
                    'ticket_id' => $ticket_id,
                    'special_offer_id' => !empty($activeSpecialOffer) ? $activeSpecialOffer->id : null,
                    'created_at' => time()
                ]);

                return 'ok';
            }
        }

        $toastData = [
            'title' => trans('public.request_failed'),
            'msg' => trans('cart.course_not_found'),
            'status' => 'error'
        ];
        return back()->with(['toast' => $toastData]);
    }

    public function storeCookieCart($webinar_id, $ticket_id)
    {
        $carts = Cookie::get($this->cookieKey);

        if (!empty($carts)) {
            $carts = json_decode($carts, true);
        } else {
            $carts = [];
        }

        $carts[$webinar_id] = [
            'webinar_id' => $webinar_id,
            'ticket_id' => $ticket_id ?? null,
        ];

        Cookie::queue($this->cookieKey, json_encode($carts), 30 * 24 * 60);
    }

    public function store(Request $request)
    {
        $user = auth()->user();

        $this->validate($request, [
            'webinar_id' => 'required',
            'ticket_id' => 'nullable',
        ]);

        $webinar_id = $request->get('webinar_id');
        $ticket_id = $request->input('ticket_id');

        if (!empty($user)) { // store in DB
            $result = $this->storeUserCart($user, $webinar_id, $ticket_id);

            if ($result != 'ok') {
                return $result;
            }
        } else { // store in cookie
            $this->storeCookieCart($webinar_id, $ticket_id);
        }

        $toastData = [
            'title' => trans('cart.cart_add_success_title'),
            'msg' => trans('cart.cart_add_success_msg'),
            'status' => 'success'
        ];
        return back()->with(['toast' => $toastData]);
    }

    public function destroy($id)
    {
        if (auth()->check()) {
            $user_id = auth()->id();

            $cart = Cart::where('id', $id)
                ->where('creator_id', $user_id)
                ->first();

            if (!empty($cart)) {
                if (!empty($cart->reserve_meeting_id)) {
                    $reserve = ReserveMeeting::where('id', $cart->reserve_meeting_id)
                        ->where('user_id', $user_id)
                        ->first();

                    if (!empty($reserve)) {
                        $reserve->delete();
                    }
                }

                $cart->delete();
            }
        } else {
            $carts = Cookie::get($this->cookieKey);

            if (!empty($carts)) {
                $carts = json_decode($carts, true);

                if (!empty($carts[$id])) {
                    unset($carts[$id]);
                }

                Cookie::queue($this->cookieKey, json_encode($carts), 30 * 24 * 60);
            }
        }

        return response()->json([
            'code' => 200
        ], 200);
    }
}
