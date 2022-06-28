(function ($) {
    $('body').on('change', 'input[name="meeting_type"]', function () {

        const regionCard = $('#regionCard');

        if ($(this).val() === 'in_person') {
            regionCard.removeClass('d-none');
        } else {
            regionCard.addClass('d-none');
        }
    });


    $('body').on('change', 'select[name="country_id"]', function () {
        const $this = $(this);

        $('select[name="province_id"]').val(null).prop('disabled', true);
        $('select[name="city_id"]').val(null).prop('disabled', true);
        $('select[name="district_id"]').val(null).prop('disabled', true);

        if ($this.val()) {
            $this.addClass('loadingbar gray').prop('disabled', true);

            $.get('/regions/provincesByCountry/' + $this.val(), function (result) {
                if (result && result.code === 200) {
                    const selectBox = $('select[name="province_id"]');
                    let html = '<option value="">' + selectProvinceLang + '</option>';

                    if (result.provinces && result.provinces.length) {
                        for (let province of result.provinces) {
                            html += '<option value="' + province.id + '">' + province.title + '</option>';
                        }
                    }

                    selectBox.prop('disabled', false);
                    selectBox.html(html);

                    $this.removeClass('loadingbar gray').prop('disabled', false);
                }
            });
        }
    });

    $('body').on('change', 'select[name="province_id"]', function () {
        const $this = $(this);

        $('select[name="city_id"]').val(null).prop('disabled', true);
        $('select[name="district_id"]').val(null).prop('disabled', true);

        if ($this.val()) {
            $this.addClass('loadingbar gray').prop('disabled', true);

            $.get('/regions/citiesByProvince/' + $this.val(), function (result) {
                if (result && result.code === 200) {
                    const selectBox = $('select[name="city_id"]');

                    let html = '<option value="">' + selectCityLang + '</option>';

                    if (result.cities && result.cities.length) {
                        for (let city of result.cities) {
                            html += '<option value="' + city.id + '">' + city.title + '</option>';
                        }
                    }

                    selectBox.prop('disabled', false);
                    selectBox.html(html);

                    $this.removeClass('loadingbar gray').prop('disabled', false);
                }
            });
        }
    });

    $('body').on('change', 'select[name="city_id"]', function () {
        const $this = $(this);

        $('select[name="district_id"]').val(null).prop('disabled', true);

        if ($this.val()) {
            $this.addClass('loadingbar gray').prop('disabled', true);

            $.get('/regions/districtsByCity/' + $this.val(), function (result) {
                if (result && result.code === 200) {
                    const selectBox = $('select[name="district_id"]');

                    let html = '<option value="">' + selectDistrictLang + '</option>';

                    if (result.districts && result.districts.length) {
                        for (let district of result.districts) {
                            html += '<option value="' + district.id + '">' + district.title + '</option>';
                        }
                    }

                    selectBox.prop('disabled', false);
                    selectBox.html(html);

                    $this.removeClass('loadingbar gray').prop('disabled', false);
                }
            });
        }
    });

    $('body').on('change', 'input[name="flexible_date"]', function () {
        if (this.checked) {
            $('#dateTimeCard').addClass('d-none');
        } else {
            $('#dateTimeCard').removeClass('d-none');
        }
    });


    $(document).ready(function () {

        var $timeRange = $('#timeRange');

        if ($timeRange && $timeRange.length && jQuery().wRunner) {
            const minLimit = $timeRange.attr('data-minLimit');
            const maxLimit = $timeRange.attr('data-maxLimit');

            const minTimeEl = $timeRange.find('input[name="min_time"]');
            const maxTimeEl = $timeRange.find('input[name="max_time"]');

            const minValue = minTimeEl.val();
            const maxValue = maxTimeEl.val();

            var wtime = $timeRange.wRunner({
                type: 'range',
                limits: {
                    minLimit,
                    maxLimit,
                },
                rangeValue: {
                    minValue,
                    maxValue,
                },
                step: 1,
            });

            wtime.onValueUpdate(function (values) {
                minTimeEl.val(values.minValue);
                maxTimeEl.val(values.maxValue);
            });
        }
    });
})(jQuery);
