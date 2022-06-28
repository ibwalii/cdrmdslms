<html>
<head>
    <title>Mercado Checkout Pro</title>
</head>
<body>

<script src="https://sdk.mercadopago.com/js/v2"></script>
<script>
    // Add the SDK credentials
    const mp = new MercadoPago('{{ $public_key }}', {
        locale: 'en-US'
    });

    // Initialize the checkout
    mp.checkout({
        preference: {
            id: '{{ $preference_id }}'
        },
        autoOpen: true,
    });
</script>
</body>
</html>
