<?php

namespace App\Http\Controllers\Panel;

use App\Bitwise\UserLevelOfTraining;
use App\Http\Controllers\Controller;
use App\Mixins\RegistrationPackage\UserPackage;
use App\Models\Category;
use App\Models\Meeting;
use App\Models\Newsletter;
use App\Models\Region;
use App\Models\ReserveMeeting;
use App\Models\Reward;
use App\Models\RewardAccounting;
use App\Models\Role;
use App\Models\UserMeta;
use App\Models\UserOccupation;
use App\Models\UserZoomApi;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Response;

class UserController extends Controller
{
    public function setting($step = 1)
    {
        $user = auth()->user();

        if (!empty($user->location)) {
            $user->location = \Geo::getST_AsTextFromBinary($user->location);

            $user->location = \Geo::get_geo_array($user->location);
        }

        $categories = Category::where('parent_id', null)
            ->with('subCategories')
            ->get();

        $userMetas = $user->userMetas;

        if (!empty($userMetas)) {
            foreach ($userMetas as $meta) {
                $user->{$meta->name} = $meta->value;
            }
        }

        $occupations = $user->occupations->pluck('category_id')->toArray();


        $userLanguages = getGeneralSettings('user_languages');
        if (!empty($userLanguages) and is_array($userLanguages)) {
            $userLanguages = getLanguages($userLanguages);
        } else {
            $userLanguages = [];
        }

        $countries = null;
        $provinces = null;
        $cities = null;
        $districts = null;
        if ($step == 9) {
            $countries = Region::select(DB::raw('*, ST_AsText(geo_center) as geo_center'))
                ->where('type', Region::$country)
                ->get();

            if (!empty($user->country_id)) {
                $provinces = Region::select(DB::raw('*, ST_AsText(geo_center) as geo_center'))
                    ->where('type', Region::$province)
                    ->where('country_id', $user->country_id)
                    ->get();
            }

            if (!empty($user->province_id)) {
                $cities = Region::select(DB::raw('*, ST_AsText(geo_center) as geo_center'))
                    ->where('type', Region::$city)
                    ->where('province_id', $user->province_id)
                    ->get();
            }

            if (!empty($user->city_id)) {
                $districts = Region::select(DB::raw('*, ST_AsText(geo_center) as geo_center'))
                    ->where('type', Region::$district)
                    ->where('city_id', $user->city_id)
                    ->get();
            }
        }

        $data = [
            'pageTitle' => trans('panel.settings'),
            'user' => $user,
            'categories' => $categories,
            'educations' => $userMetas->where('name', 'education'),
            'experiences' => $userMetas->where('name', 'experience'),
            'occupations' => $occupations,
            'userLanguages' => $userLanguages,
            'currentStep' => $step,
            'countries' => $countries,
            'provinces' => $provinces,
            'cities' => $cities,
            'districts' => $districts,
        ];
        
        return view(getTemplate() . '.panel.setting.index', $data);
    }

    public function update(Request $request)
    {
        $data = $request->all();

        $organization = null;
        if (!empty($data['organization_id']) and !empty($data['user_id'])) {
            $organization = auth()->user();
            $user = User::where('id', $data['user_id'])
                ->where('organ_id', $organization->id)
                ->first();
        } else {
            $user = auth()->user();
        }

        $step = $data['step'] ?? 1;
        $nextStep = (!empty($data['next_step']) and $data['next_step'] == '1') ?? false;

        $rules = [
            'iban' => 'required_with:account_type',
            'account_id' => 'required_with:account_type',
            'identity_scan' => 'required_with:account_type',
            'bio' => 'nullable|string|min:3|max:48',
        ];

        if ($step == 1) {
            $rules = array_merge($rules, [
                'full_name' => 'required|string',
                'email' => 'required|email|unique:users,email,' . $user->id,
                'mobile' => 'required|numeric|unique:users,mobile,' . $user->id,
            ]);
        }

        $this->validate($request, $rules);

        if (!empty($user)) {

            if (!empty($data['password'])) {
                $this->validate($request, [
                    'password' => 'required|confirmed|min:6',
                ]);

                $user->update([
                    'password' => User::generatePassword($data['password'])
                ]);
            }

            $updateData = [];

            if ($step == 1) {
                $joinNewsletter = (!empty($data['join_newsletter']) and $data['join_newsletter'] == 'on');

                $updateData = [
                    'matric_no' => $data['matric_no'],
                    'email' => $data['email'],
                    'full_name' => $data['full_name'],
                    'mobile' => $data['mobile'],
                    'language' => 'EN',
                    'timezone' => 'Africa/Lagos',
                    'newsletter' => $joinNewsletter,
                    'public_message' => (!empty($data['public_messages']) and $data['public_messages'] == 'on'),
                ];

                $this->handleNewsletter($data['email'], $user->id, $joinNewsletter);
            } elseif ($step == 2) {
                $updateData = [
                    'cover_img' => $data['cover_img'],
                ];

                if (!empty($data['profile_image'])) {
                    $profileImage = $this->createImage($user, $data['profile_image']);
                    $updateData['avatar'] = $profileImage;
                }
            } elseif ($step == 3) {
                $updateData = [
                    'about' => $data['about'],
                    'bio' => $data['bio'],
                ];
            } elseif ($step == 6) {
                if (!$user->isUser() and !empty($data['zoom_jwt_token'])) {
                    UserZoomApi::updateOrCreate(
                        [
                            'user_id' => $user->id,
                        ],
                        [
                            'jwt_token' => $data['zoom_jwt_token'],
                            'created_at' => time()
                        ]
                    );
                }
                // UserOccupation::where('user_id', $user->id)->delete();
                // if (!empty($data['occupations'])) {

                //     foreach ($data['occupations'] as $category_id) {
                //         UserOccupation::create([
                //             'user_id' => $user->id,
                //             'category_id' => $category_id
                //         ]);
                //     }
                // }
            // } elseif ($step == 7) {
            //     $updateData = [
            //         'account_type' => $data['account_type'] ?? '',
            //         'iban' => $data['iban'] ?? '',
            //         'account_id' => $data['account_id'] ?? '',
            //         'identity_scan' => $data['identity_scan'] ?? '',
            //         'certificate' => $data['certificate'] ?? '',
            //         'address' => $data['address'] ?? '',
            //     ];
            // } elseif ($step == 8) {
            //     if (!$user->isUser() and !empty($data['zoom_jwt_token'])) {
            //         UserZoomApi::updateOrCreate(
            //             [
            //                 'user_id' => $user->id,
            //             ],
            //             [
            //                 'jwt_token' => $data['zoom_jwt_token'],
            //                 'created_at' => time()
            //             ]
            //         );
            //     }
            // } elseif ($step == 9) {

            //     $updateData = [
            //         "level_of_training" => !empty($data['level_of_training']) ? (new UserLevelOfTraining())->getValue($data['level_of_training']) : null,
            //         "meeting_type" => $data['meeting_type'] ?? null,
            //         "group_meeting" => (!empty($data['group_meeting']) and $data['group_meeting'] == 'on'),
            //         "country_id" => $data['country_id'] ?? null,
            //         "province_id" => $data['province_id'] ?? null,
            //         "city_id" => $data['city_id'] ?? null,
            //         "district_id" => $data['district_id'] ?? null,
            //         "location" => (!empty($data['latitude']) and !empty($data['longitude'])) ? DB::raw("POINT(" . $data['latitude'] . "," . $data['longitude'] . ")") : null,
            //     ];

            //     $updateUserMeta = [
            //         "gender" => $data['gender'] ?? null,
            //         "age" => $data['age'] ?? null,
            //         "address" => $data['address'] ?? null,
            //     ];

            //     foreach ($updateUserMeta as $name => $value) {
            //         $checkMeta = UserMeta::where('user_id', $user->id)
            //             ->where('name', $name)
            //             ->first();

            //         if (!empty($checkMeta)) {
            //             if (!empty($value)) {
            //                 $checkMeta->update([
            //                     'value' => $value
            //                 ]);
            //             } else {
            //                 $checkMeta->delete();
            //             }
            //         } else if (!empty($value)) {
            //             UserMeta::create([
            //                 'user_id' => $user->id,
            //                 'name' => $name,
            //                 'value' => $value
            //             ]);
            //         }
            //     }
            }

            if (!empty($updateData)) {
                $user->update($updateData);
            }

            $url = '/panel/setting';
            if (!empty($organization)) {
                $url = '/panel/manage/instructors/' . $user->id . '/edit';
            }

            if ($step <= 9) {
                if ($nextStep) {
                    $step = $step + 1;
                }

                $url .= '/step/' . (($step <= 8) ? $step : 9);
            }

            $toastData = [
                'title' => trans('public.request_success'),
                'msg' => trans('panel.user_setting_success'),
                'status' => 'success'
            ];
            return redirect($url)->with(['toast' => $toastData]);
        }
        abort(404);
    }

    private function handleNewsletter($email, $user_id, $joinNewsletter)
    {
        $check = Newsletter::where('email', $email)->first();

        if ($joinNewsletter) {
            if (empty($check)) {
                Newsletter::create([
                    'user_id' => $user_id,
                    'email' => $email,
                    'created_at' => time()
                ]);
            } else {
                $check->update([
                    'user_id' => $user_id,
                ]);
            }

            $newsletterReward = RewardAccounting::calculateScore(Reward::NEWSLETTERS);
            RewardAccounting::makeRewardAccounting($user_id, $newsletterReward, Reward::NEWSLETTERS, $user_id, true);
        } elseif (!empty($check)) {
            $reward = RewardAccounting::where('user_id', $user_id)
                ->where('item_id', $user_id)
                ->where('type', Reward::NEWSLETTERS)
                ->where('status', RewardAccounting::ADDICTION)
                ->first();

            if (!empty($reward)) {
                $reward->delete();
            }

            $check->delete();
        }
    }

    public function createImage($user, $img)
    {
        $folderPath = "/" . $user->id . '/avatar/';

        $image_parts = explode(";base64,", $img);
        $image_type_aux = explode("image/", $image_parts[0]);
        $image_type = $image_type_aux[1];
        $image_base64 = base64_decode($image_parts[1]);
        $file = uniqid() . '.' . $image_type;

        Storage::disk('public')->put($folderPath . $file, $image_base64);

        return Storage::disk('public')->url($folderPath . $file);
    }

    public function storeMetas(Request $request)
    {
        $data = $request->all();

        if (!empty($data['name']) and !empty($data['value'])) {

            if (!empty($data['user_id'])) {
                $organization = auth()->user();
                $user = User::where('id', $data['user_id'])
                    ->where('organ_id', $organization->id)
                    ->first();
            } else {
                $user = auth()->user();
            }

            UserMeta::create([
                'user_id' => $user->id,
                'name' => $data['name'],
                'value' => $data['value'],
            ]);

            return response()->json([
                'code' => 200
            ], 200);
        }

        return response()->json([], 422);
    }

    public function updateMeta(Request $request, $meta_id)
    {
        $data = $request->all();
        $user = auth()->user();

        if (!empty($data['user_id'])) {
            $checkUser = User::find($data['user_id']);

            if ((!empty($checkUser) and ($data['user_id'] == $user->id) or $checkUser->organ_id == $user->id)) {
                $meta = UserMeta::where('id', $meta_id)
                    ->where('user_id', $data['user_id'])
                    ->where('name', $data['name'])
                    ->first();

                if (!empty($meta)) {
                    $meta->update([
                        'value' => $data['value']
                    ]);

                    return response()->json([
                        'code' => 200
                    ], 200);
                }

                return response()->json([
                    'code' => 403
                ], 200);
            }
        }

        return response()->json([], 422);
    }

    public function deleteMeta(Request $request, $meta_id)
    {
        $data = $request->all();
        $user = auth()->user();

        if (!empty($data['user_id'])) {
            $checkUser = User::find($data['user_id']);

            if (!empty($checkUser) and ($data['user_id'] == $user->id or $checkUser->organ_id == $user->id)) {
                $meta = UserMeta::where('id', $meta_id)
                    ->where('user_id', $data['user_id'])
                    ->first();

                $meta->delete();

                return response()->json([
                    'code' => 200
                ], 200);
            }
        }

        return response()->json([], 422);
    }

    public function manageUsers(Request $request, $user_type)
    {
        $valid_type = ['instructors', 'students'];
        $organization = auth()->user();

        if ($organization->isOrganization() and in_array($user_type, $valid_type)) {
            if ($user_type == 'instructors') {
                $query = $organization->getOrganizationTeachers();
            } else {
                $query = $organization->getOrganizationStudents();
            }

            $activeCount = deepClone($query)->where('status', 'active')->count();
            $verifiedCount = deepClone($query)->where('verified', true)->count();
            $inActiveCount = deepClone($query)->where('status', 'inactive')->count();

            $from = $request->get('from', null);
            $to = $request->get('to', null);
            $name = $request->get('name', null);
            $email = $request->get('email', null);
            $level = $request->get('level', null);
            $type = request()->get('type', null);

            if (!empty($from) and !empty($to)) {
                $from = strtotime($from);
                $to = strtotime($to);

                $query->whereBetween('created_at', [$from, $to]);
            } else {
                if (!empty($from)) {
                    $from = strtotime($from);

                    $query->where('created_at', '>=', $from);
                }

                if (!empty($to)) {
                    $to = strtotime($to);

                    $query->where('created_at', '<', $to);
                }
            }

            if (!empty($name)) {
                $query->where('full_name', 'like', "%$name%");
            }

            if (!empty($email)) {
                $query->where('email', $email);
            }

            if (!empty($type)) {
                if (in_array($type, ['active', 'inactive'])) {
                    $query->where('status', $type);
                } elseif ($type == 'verified') {
                    $query->where('verified', true);
                }
            }
            
            if (!empty($level)) {
                $query->where('level', $level);
            }

            $users = $query->orderBy('created_at', 'desc')
                ->paginate(10);

            $data = [
                'pageTitle' => trans('public.' . $user_type),
                'user_type' => $user_type,
                'organization' => $organization,
                'users' => $users,
                'activeCount' => $activeCount,
                'inActiveCount' => $inActiveCount,
                'verifiedCount' => $verifiedCount,
            ];

            return view(getTemplate() . '.panel.manage.' . $user_type, $data);
        }

        abort(404);
    }

    public function createUser($user_type)
    {
        $valid_type = ['instructors', 'students'];
        $organization = auth()->user();

        if ($organization->isOrganization() and in_array($user_type, $valid_type)) {

            $packageType = $user_type == 'instructors' ? 'instructors_count' : 'students_count';
            $userPackage = new UserPackage();
            $userAccountLimited = $userPackage->checkPackageLimit($packageType);

            if ($userAccountLimited) {
                session()->put('registration_package_limited', $userAccountLimited);

                return redirect()->back();
            }

            $categories = Category::where('parent_id', null)
                ->with('subCategories')
                ->get();

            $userLanguages = getGeneralSettings('user_languages');
            if (!empty($userLanguages) and is_array($userLanguages)) {
                $userLanguages = getLanguages($userLanguages);
            }

            $data = [
                'pageTitle' => trans('public.new') . ' ' . trans('quiz.' . $user_type),
                'new_user' => true,
                'user_type' => $user_type,
                'user' => $organization,
                'categories' => $categories,
                'organization_id' => $organization->id,
                'userLanguages' => $userLanguages,
                'currentStep' => 1,
            ];

            return view(getTemplate() . '.panel.setting.index', $data);
        }

        abort(404);
    }
    
    public function bulkUpload($user_type)
    {
        $valid_type = ['instructors', 'students'];
        $organization = auth()->user();

        if ($organization->isOrganization() and in_array($user_type, $valid_type)) {

            $packageType = $user_type == 'instructors' ? 'instructors_count' : 'students_count';
            $userPackage = new UserPackage();
            $userAccountLimited = $userPackage->checkPackageLimit($packageType);

            if ($userAccountLimited) {
                session()->put('registration_package_limited', $userAccountLimited);

                return redirect()->back();
            }

            $categories = Category::where('parent_id', null)
                ->with('subCategories')
                ->get();

            $userLanguages = getGeneralSettings('user_languages');
            if (!empty($userLanguages) and is_array($userLanguages)) {
                $userLanguages = getLanguages($userLanguages);
            }

            $data = [
                'pageTitle' => trans('public.bulk_upload') . ' ' . trans('quiz.' . $user_type),
                'new_user' => true,
                'user_type' => $user_type,
                'user' => $organization,
                'categories' => $categories,
                'organization_id' => $organization->id,
                'userLanguages' => $userLanguages,
                'currentStep' => 1,
            ];

            return view(getTemplate() . '.panel.setting.bulk_upload', $data);
        }

        abort(404);
    }

    public function storeBulkUpload(Request $request, $user_type)
    {
        $organization = auth()->user();
        $file = $request->file('bulk_upload');

        if($file){
            $filename = $file->getClientOriginalName();
            $extension = $file->getClientOriginalExtension(); //Get extension of uploaded file
            $tempPath = $file->getRealPath();
            $fileSize = $file->getSize(); //Get size of uploaded file in bytes
        
            //Check for file extension and size
            $this->checkUploadedFileProperties($extension, $fileSize);
        
            //Where uploaded file will be stored on the server 
            $location = 'uploads'; //Created an "uploads" folder for that
        
            // Upload file
            $file->move($location, $filename);
        
            // In case the uploaded file path is to be stored in the database 
            $filepath = public_path($location . "/" . $filename);
        
            // Reading file
            $file = fopen($filepath, "r");
            $importData_arr = array(); // Read through the file and store the contents as an array
            $i = 0;
        
            //Read the contents of the uploaded file 
            while (($filedata = fgetcsv($file, 1000, ",")) !== FALSE) 
            {
                $num = count($filedata);
            
                // Skip first row (Remove below comment if you want to skip the first row)
                if($i == 0) {
                    $i++;
                    continue;
                }
                for($c = 0; $c < $num; $c++) {
                    $importData_arr[$i][] = $filedata[$c];
                }
                $i++;

                $j = 0;
                foreach($importData_arr as $importData) {
                    $j++;
                    try{
                        DB::beginTransaction();
                            User::create([
                                'full_name' => $importData[1],
                                'role_name' => $importData[2],
                                'role_id' => $importData[3],
                                'matric_no' => $importData[4],
                                'level' => $importData[5],
                                'semester' => $importData[6],
                                'mobile' => $importData[7],
                                'email' => $importData[8],
                                'organ_id' => $organization->id,
                                'verified' => 1,
                                'password' => Hash::make('students'),
                                'language' => 'EN',
                                'timezone' => 'Africa/Lagos',
                                'created_at' => time()
                            ]);
                        DB::commit();
                    }catch(\Exception $e) {
                        //throw $th;
                        DB::rollBack();
                    }
                }
            }
            fclose($file); //Close after reading
            return response()->json(['message' => "$j records successfully uploaded"]);
        }else{
            //no file was uploaded
            throw new \Exception('No file was uploaded', Response::HTTP_BAD_REQUEST);
        }
    }

    public function checkUploadedFileProperties($extension, $fileSize)
    {
        $valid_extension = array("csv", "xlsx"); //Only want csv and excel files
        $maxFileSize = 2097152; // Uploaded file size limit is 2mb
    
        if(in_array(strtolower($extension), $valid_extension)) {
            if($fileSize <= $maxFileSize) {
            }else{
                throw new \Exception('No file was uploaded', Response::HTTP_REQUEST_ENTITY_TOO_LARGE); //413 error
            }
        }else{
            throw new \Exception('Invalid file extension', Response::HTTP_UNSUPPORTED_MEDIA_TYPE); //415 error
        }
    }

    public function storeUser(Request $request, $user_type)
    {
        $valid_type = ['instructors', 'students'];
        $organization = auth()->user();

        if ($organization->isOrganization() and in_array($user_type, $valid_type)) {
            
            $this->validate($request, [
                'email' => 'required|string|email|max:255|unique:users',
                'full_name' => 'required|string',
                'mobile' => 'required|numeric',
            ]);

            if($user_type == 'instructors'){
                $password = 'instructors';
            }else if($user_type == 'students'){
                $password = 'students';
            }

            $data = $request->all();
            $role_name = ($user_type == 'instructors') ? Role::$teacher : Role::$user;
            $role_id = ($user_type == 'instructors') ? Role::getTeacherRoleId() : Role::getUserRoleId();

            $referralSettings = getReferralSettings();
            $usersAffiliateStatus = (!empty($referralSettings) and !empty($referralSettings['users_affiliate_status']));

            
            $user = User::create([
                'role_name' => $role_name,
                'role_id' => $role_id,
                'verified' => 1,
                'matric_no' => $request->matric_no,
                'level' => $request->level,
                'semester' => $request->semester,
                'email' => $data['email'],
                'organ_id' => $organization->id,
                'password' => Hash::make($password),
                'full_name' => $data['full_name'],
                'mobile' => $data['mobile'],
                'language' => 'EN',
                'timezone' => 'Africa/Lagos',
                'affiliate' => $usersAffiliateStatus,
                'newsletter' => (!empty($data['join_newsletter']) and $data['join_newsletter'] == 'on'),
                'public_message' => (!empty($data['public_messages']) and $data['public_messages'] == 'on'),
                'created_at' => time()
            ]);

            if($role_name == 'teacher'){

                $organization_id = $organization->id;
                $user_email = $data['email'];
                $time = time();

                $get_organization_jwt = UserZoomApi::select('jwt_token')->where('user_id', $organization_id)->pluck('jwt_token')->first();
                $get_new_instructor_id_from_users_table = User::select('id')->where('email', $user_email)->pluck('id')->first();

                $store_new_instructor_jwt = UserZoomApi::updateOrCreate(
                        [
                            'user_id' => $get_new_instructor_id_from_users_table,
                        ],
                        [
                            'jwt_token' => $get_organization_jwt,
                            'created_at' => $time
                        ]
                    );
            }

            return redirect('/panel/manage/' . $user_type . '/' . $user->id . '/edit');
        }

        abort(404);
    }

    public function editUser($user_type, $user_id, $step = 1)
    {
        $valid_type = ['instructors', 'students'];
        $organization = auth()->user();

        if ($organization->isOrganization() and in_array($user_type, $valid_type)) {
            $user = User::where('id', $user_id)
                ->where('organ_id', $organization->id)
                ->first();

            if (!empty($user)) {
                $categories = Category::where('parent_id', null)
                    ->with('subCategories')
                    ->get();
                $userMetas = $user->userMetas;

                $occupations = $user->occupations->pluck('category_id')->toArray();

                $userLanguages = getGeneralSettings('user_languages');
                if (!empty($userLanguages) and is_array($userLanguages)) {
                    $userLanguages = getLanguages($userLanguages);
                }

                $data = [
                    'organization_id' => $organization->id,
                    'user' => $user,
                    'user_type' => $user_type,
                    'categories' => $categories,
                    'educations' => $userMetas->where('name', 'education'),
                    'experiences' => $userMetas->where('name', 'experience'),
                    'pageTitle' => trans('panel.settings'),
                    'occupations' => $occupations,
                    'userLanguages' => $userLanguages,
                    'currentStep' => $step,
                ];
                return view(getTemplate() . '.panel.setting.index', $data);
            }
        }

        abort(404);
    }

    public function deleteUser($user_type, $user_id)
    {
        $valid_type = ['instructors', 'students'];
        $organization = auth()->user();

        if ($organization->isOrganization() and in_array($user_type, $valid_type)) {
            $user = User::where('id', $user_id)
                ->where('organ_id', $organization->id)
                ->first();

            if (!empty($user)) {
                $user->delete();

                return response()->json([
                    'code' => 200
                ]);
            }
        }

        return response()->json([], 422);
    }

    public function search(Request $request)
    {
        $term = $request->get('term');
        $option = $request->get('option', null);
        $user = auth()->user();

        if (!empty($term)) {
            $query = User::select('id', 'full_name')
                ->where(function ($query) use ($term) {
                    $query->where('full_name', 'like', '%' . $term . '%');
                    $query->orWhere('email', 'like', '%' . $term . '%');
                    $query->orWhere('mobile', 'like', '%' . $term . '%');
                })
                ->where('id', '<>', $user->id)
                ->whereNotIn('role_name', ['admin']);

            if (!empty($option) and $option == 'just_teachers') {
                $query->where('role_name', 'teacher');
            }

            $users = $query->get();

            return response()->json($users, 200);
        }

        return response('', 422);
    }

    public function contactInfo(Request $request)
    {
        $this->validate($request, [
            'user_id' => 'required',
            'user_type' => 'required|in:student,instructor',
        ]);

        $user = User::find($request->get('user_id'));

        if (!empty($user)) {
            $itemId = $request->get('item_id');
            $userType = $request->get('user_type');
            $description = null;
            $location = null;

            if (!empty($itemId)) {
                $reserve = ReserveMeeting::where('id', $itemId)
                    ->where(function ($query) use ($user) {
                        $query->where('user_id', $user->id);

                        if (!empty($user->meeting)) {
                            $query->orWhere('meeting_id', $user->meeting->id);
                        }
                    })->first();

                if (!empty($reserve)) {
                    if ($userType == 'student') {
                        $description = $reserve->description;
                    } elseif (!empty($reserve->meetingTime)) {
                        $description = $reserve->meetingTime->description;
                    }

                    if ($reserve->meeting_type == 'in_person') {
                        $userMetas = $user->userMetas;

                        if (!empty($userMetas)) {
                            foreach ($userMetas as $meta) {
                                if ($meta->name == 'address') {
                                    $location = $meta->value;
                                }
                            }
                        }
                    }
                }
            }

            return response()->json([
                'code' => 200,
                'avatar' => $user->getAvatar(),
                'name' => $user->full_name,
                'email' => !empty($user->email) ? $user->email : '-',
                'phone' => !empty($user->mobile) ? $user->mobile : '-',
                'description' => $description,
                'location' => $location,
            ], 200);
        }

        return response()->json([], 422);
    }

    public function offlineToggle(Request $request)
    {
        $user = auth()->user();

        $message = $request->get('message');
        $toggle = $request->get('toggle');
        $toggle = (!empty($toggle) and $toggle == 'true');

        $user->offline = $toggle;
        $user->offline_message = $message;

        $user->save();

        return response()->json([
            'code' => 200
        ], 200);
    }
}
