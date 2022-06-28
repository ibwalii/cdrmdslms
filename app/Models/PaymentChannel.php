<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PaymentChannel extends Model
{
    protected $table = 'payment_channels';
    protected $guarded = ['id'];
    public $timestamps = false;

    static $classes = [
        'Paypal', 'Paystack', 'Paytm', 'Payu', 'Razorpay', 'Zarinpal',
        'Stripe', 'Paysera', 'Fastpay', 'YandexCheckout', '2checkout',
        'Bitpay', 'Midtrans', 'Adyen', 'Flutterwave', 'Payfort', 'UnionPay'
    ];
}
