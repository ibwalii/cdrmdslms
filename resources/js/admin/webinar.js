(function ($) {
    "use strict";

    // form serialize to Object
    $.fn.serializeObject = function () {
        var o = {};
        var a = this.serializeArray();
        $.each(a, function () {
            if (o[this.name]) {
                if (!o[this.name].push) {
                    o[this.name] = [o[this.name]];
                }
                o[this.name].push(this.value || '');
            } else {
                o[this.name] = this.value || '';
            }
        });
        return o;
    };

    function randomString() {
        var text = "";
        var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";

        for (var i = 0; i < 5; i++)
            text += possible.charAt(Math.floor(Math.random() * possible.length));

        return text;
    }

    /**
     * close swl
     * */
    $('body').on('click', '.close-swl', function (e) {
        e.preventDefault();
        Swal.close();
    });


    $('#summernote').summernote({
        tabsize: 2,
        height: 400,
        placeholder: $('#summernote').attr('placeholder'),
        dialogsInBody: true,
        toolbar: [
            ['style', ['style']],
            ['font', ['bold', 'underline', 'clear']],
            ['fontname', ['fontname']],
            ['color', ['color']],
            ['para', ['paragraph']],
            ['table', ['table']],
            ['insert', ['link', 'picture', 'video']],
            ['view', ['fullscreen', 'codeview']],
        ],
    });


    $('body').on('click', '#saveAndPublish', function (e) {
        e.preventDefault();
        $('#forDraft').val('publish');
        $('#webinarForm').trigger('submit');
    });

    $('body').on('click', '#saveAsDraft', function (e) {
        e.preventDefault();
        $('#forDraft').val(1);
        $('#webinarForm').trigger('submit');
    });

    $('body').on('click', '#saveReject', function (e) {
        e.preventDefault();
        $('#forDraft').val('reject');
        $('#webinarForm').trigger('submit');
    });

    $('#partnerInstructorSwitch').on('change.bootstrapSwitch', function (e) {
        let isChecked = e.target.checked;

        if (isChecked) {
            $('#partnerInstructorInput').removeClass('d-none');
            resetSelect2();
        } else {
            $('#partnerInstructorInput').addClass('d-none');
        }
    });

    $('body').on('change', '#categories', function (e) {
        e.preventDefault();
        let category_id = this.value;
        $.get('/admin/filters/get-by-category-id/' + category_id, function (result) {

            if (result && typeof result.filters !== "undefined" && result.filters.length) {
                let html = '';
                Object.keys(result.filters).forEach(key => {
                    let filter = result.filters[key];
                    let options = [];

                    if (filter.options.length) {
                        options = filter.options;
                    }

                    html += '<div class="col-12 col-md-3">\n' +
                        '<div class="webinar-category-filters">\n' +
                        '<strong class="category-filter-title d-block">' + filter.title + '</strong>\n' +
                        '<div class="py-10"></div>\n' +
                        '\n';

                    if (options.length) {
                        Object.keys(options).forEach(index => {
                            let option = options[index];

                            html += '<div class="form-group mt-20 d-flex align-items-center justify-content-between">\n' +
                                '<label class="" for="filterOption' + option.id + '">' + option.title + '</label>\n' +
                                '<div class="custom-control custom-checkbox">\n' +
                                '<input type="checkbox" name="filters[]" value="' + option.id + '" class="custom-control-input" id="filterOption' + option.id + '">\n' +
                                '<label class="custom-control-label" for="filterOption' + option.id + '"></label>\n' +
                                '</div>\n' +
                                '</div>\n';
                        })
                    }

                    html += '</div></div>';
                });

                $('#categoriesFiltersContainer').removeClass('d-none');
                $('#categoriesFiltersCard').html(html);
            } else {
                $('#categoriesFiltersContainer').addClass('d-none');
                $('#categoriesFiltersCard').html('');
            }
        })
    });

    /*
    *
    * */
    function handleWebinarItemForm(form, $this) {
        let action = form.attr('action');

        $this.addClass('loadingbar gray').prop('disabled', true);
        form.find('input').removeClass('is-invalid');
        form.find('textarea').removeClass('is-invalid');

        var formData = new FormData();

        const s3Input = form.find('.js-s3-file-input');

        if (s3Input && s3Input.prop('files') && s3Input.prop('files')[0]) {
            formData.append('s3_file', s3Input.prop('files')[0]);
        }

        const items = form.find('input, textarea, select').serializeArray();

        $.each(items, function () {
            formData.append(this.name, this.value);
        });

        $.ajax({
            url: action,
            type: 'POST',
            data: formData,
            processData: false,
            contentType: false,
            cache: false,
            success: function (result) {
                if (result && result.code === 200) {
                    //window.location.reload();
                    Swal.fire({
                        icon: 'success',
                        html: '<h3 class="font-20 text-center text-dark-blue py-25">' + saveSuccessLang + '</h3>',
                        showConfirmButton: false,
                        width: '25rem',
                    });

                    setTimeout(() => {
                        window.location.reload();
                    }, 500)
                }
            },
            error: function (err) {
                $this.removeClass('loadingbar gray').prop('disabled', false);
                var errors = err.responseJSON;

                if (errors && errors.status === 'zoom_jwt_token_invalid') {
                    Swal.fire({
                        icon: 'error',
                        html: '<h3 class="font-20 text-center text-dark-blue py-25">' + zoomJwtTokenInvalid + '</h3>',
                        showConfirmButton: false,
                        width: '25rem',
                    });
                }


                if (errors && errors.errors) {
                    Object.keys(errors.errors).forEach((key) => {
                        const error = errors.errors[key];
                        let element = form.find('[name="' + key + '"]');

                        if (key === 'zoom-not-complete-alert') {
                            form.find('.js-zoom-not-complete-alert').removeClass('d-none');
                        } else if (key === 's3_file') {
                            element.addClass('is-invalid');
                            element.closest('.form-group').find('.invalid-feedback').text(error[0]);
                        } else {
                            element.addClass('is-invalid');
                            element.parent().find('.invalid-feedback').text(error[0]);
                        }
                    });
                }
            }
        });
    }

    /**
     * add ticket
     * */
    $('body').on('click', '#webinarAddTicket', function (e) {
        e.preventDefault();
        let add_ticket_modal = '<div id="addTicketModal">';
        add_ticket_modal += $('#webinarTicketModal').html();
        add_ticket_modal += '</div>';

        Swal.fire({
            html: add_ticket_modal,
            showCancelButton: false,
            showConfirmButton: false,
            customClass: {
                content: 'p-0 text-left',
            },
            width: '48rem',
        });

        resetDatePickers();
    });

    $('body').on('click', '#saveTicket', function (e) {
        e.preventDefault();
        const $this = $(this);
        let form = $('#addTicketModal form');
        handleWebinarItemForm(form, $this);
    });

    /**
     * add webinar sessions
     * */
    $('body').on('click', '#webinarAddChapter', function (e) {
        e.preventDefault();
        const nameId = randomString();

        const modal = $('#webinarChapterModal');
        modal.find('input').prop('disabled', false);

        let html = '<div id="addChapterModal">';
        html += modal.html();
        html += '</div>';
        html = html.replaceAll('record', nameId);


        Swal.fire({
            html: html,
            showCancelButton: false,
            showConfirmButton: false,
            customClass: {
                content: 'p-0 text-left',
            },
            width: '48rem',
        });

        resetDatePickers();
    });

    /**
     * add webinar sessions
     * */
    $('body').on('click', '#webinarAddSession', function (e) {
        e.preventDefault();
        const nameId = randomString();

        const modal = $('#webinarSessionModal');
        modal.find('input').prop('disabled', false);

        let add_session_modal = '<div id="addSessionModal">';
        add_session_modal += modal.html();
        add_session_modal += '</div>';
        add_session_modal = add_session_modal.replaceAll('record', nameId);


        Swal.fire({
            html: add_session_modal,
            showCancelButton: false,
            showConfirmButton: false,
            customClass: {
                content: 'p-0 text-left',
            },
            width: '48rem',
        });

        resetDatePickers();
    });

    $('body').on('change', '.js-api-input', function (e) {
        e.preventDefault();

        const sessionForm = $(this).closest('.session-form');
        const value = this.value;

        sessionForm.find('.js-zoom-not-complete-alert').addClass('d-none');
        sessionForm.find('.js-agora-chat-and-rec').addClass('d-none');

        if (value === 'big_blue_button') {
            sessionForm.find('.js-local-link').addClass('d-none');
            sessionForm.find('.js-api-secret').removeClass('d-none');
            sessionForm.find('.js-moderator-secret').removeClass('d-none');
        } else if (value === 'zoom') {
            sessionForm.find('.js-local-link').addClass('d-none');
            sessionForm.find('.js-api-secret').addClass('d-none');
            sessionForm.find('.js-moderator-secret').addClass('d-none');
        }else if (value === 'agora') {
            sessionForm.find('.js-agora-chat-and-rec').removeClass('d-none');
            sessionForm.find('.js-api-secret').addClass('d-none');
            sessionForm.find('.js-local-link').addClass('d-none');
            sessionForm.find('.js-moderator-secret').addClass('d-none');
        } else {
            sessionForm.find('.js-local-link').removeClass('d-none');
            sessionForm.find('.js-api-secret').removeClass('d-none');
            sessionForm.find('.js-moderator-secret').addClass('d-none');
        }
    })

    $('body').on('click', '#saveSession', function (e) {
        e.preventDefault();
        const $this = $(this);
        let form = $('#addSessionModal form');
        handleWebinarItemForm(form, $this);
    });

    /**
     * add webinar files
     * */
    $('body').on('click', '#webinarAddFile', function (e) {
        e.preventDefault();
        const nameId = randomString();

        let add_file_modal = '<div id="addFilesModal">';
        add_file_modal += $('#webinarFileModal').html();
        add_file_modal += '</div>';
        add_file_modal = add_file_modal.replaceAll('str_', '');
        add_file_modal = add_file_modal.replaceAll('record', nameId);

        Swal.fire({
            html: add_file_modal,
            showCancelButton: false,
            showConfirmButton: false,
            customClass: {
                content: 'p-0 text-left',
            },
            width: '48rem',
        });
    });

    $('body').on('click', '#addInteractiveFile', function (e) {
        e.preventDefault();
        const nameId = randomString();

        let html = '<div id="addInteractiveFileModal">';
        html += $('#interactiveFileModal').html();
        html += '</div>';
        html = html.replaceAll('str_', '');
        html = html.replaceAll('record', nameId);

        Swal.fire({
            html: html,
            showCancelButton: false,
            showConfirmButton: false,
            customClass: {
                content: 'p-0 text-left',
            },
            width: '48rem',
        });
    });

    $('body').on('click', '#saveFile', function (e) {
        e.preventDefault();
        const $this = $(this);
        let form = $('#addFilesModal form');
        handleWebinarItemForm(form, $this);
    });

    $('body').on('click', '#saveInteractiveFile', function (e) {
        e.preventDefault();
        const $this = $(this);
        let form = $('#addInteractiveFileModal form');
        handleWebinarItemForm(form, $this);
    });

    $('body').on('click', '#saveChapter', function (e) {
        e.preventDefault();
        const $this = $(this);
        let form = $this.closest('form');
        handleWebinarItemForm(form, $this);
    });

    /**
     * add webinar prerequisites
     * */
    $('body').on('click', '#webinarAddPrerequisites', function (e) {
        e.preventDefault();
        let add_prerequisites_modal = '<div id="addPrerequisitesModal">';
        add_prerequisites_modal += $('#webinarPrerequisitesModal').html();
        add_prerequisites_modal += '</div>';
        add_prerequisites_modal = add_prerequisites_modal.replaceAll('prerequisites-select', 'prerequisites-select2');
        add_prerequisites_modal = add_prerequisites_modal.replaceAll('str_', '');

        Swal.fire({
            html: add_prerequisites_modal,
            showCancelButton: false,
            showConfirmButton: false,
            customClass: {
                content: 'p-0 text-left',
            },
            width: '48rem',
            onOpen: () => {
                $('.prerequisites-select2').select2({
                    placeholder: $(this).data('placeholder'),
                    minimumInputLength: 3,
                    allowClear: true,
                    ajax: {
                        url: '/admin/webinars/search',
                        dataType: 'json',
                        type: "POST",
                        quietMillis: 50,
                        data: function (params) {
                            var queryParameters = {
                                term: params.term,
                                webinar_id: $(this).data('webinar-id')
                            }
                            return queryParameters;
                        },
                        processResults: function (data) {
                            return {
                                results: $.map(data, function (item) {
                                    return {
                                        text: item.title,
                                        id: item.id
                                    }
                                })
                            };
                        }
                    }
                });
            },
        });
    });

    $('body').on('click', '#savePrerequisites', function (e) {
        e.preventDefault();
        const $this = $(this);
        let form = $('#addPrerequisitesModal form');
        handleWebinarItemForm(form, $this);
    });

    /**
     * add webinar FAQ
     * */
    $('body').on('click', '#webinarAddFAQ', function (e) {
        e.preventDefault();
        let add_faq_modal = '<div id="addFAQsModal">';
        add_faq_modal += $('#webinarFaqModal').html();
        add_faq_modal += '</div>';

        Swal.fire({
            html: add_faq_modal,
            showCancelButton: false,
            showConfirmButton: false,
            customClass: {
                content: 'p-0 text-left',
            },
            width: '48rem',
        });
    });

    $('body').on('click', '#saveFAQ', function (e) {
        e.preventDefault();
        const $this = $(this);
        let form = $('#addFAQsModal form');
        handleWebinarItemForm(form, $this);
    });


    /**
     * add webinar Quiz
     * */
    $('body').on('click', '#webinarAddQuiz', function (e) {
        e.preventDefault();
        let add_quiz_modal = '<div id="addQuizModal">';
        add_quiz_modal += $('#quizzesModal').html();
        add_quiz_modal += '</div>';
        add_quiz_modal = add_quiz_modal.replaceAll('quiz-select2', 'quiz-select22');

        Swal.fire({
            html: add_quiz_modal,
            showCancelButton: false,
            showConfirmButton: false,
            customClass: {
                content: 'p-0 text-left',
            },
            width: '30rem',
            onOpen: () => {
                $(".quiz-select22").select2({
                    placeholder: $(this).data('placeholder'),
                    allowClear: true,
                    width: '100%',
                });
            }
        });
    });

    $('body').on('click', '#saveQuiz', function (e) {
        e.preventDefault();
        const $this = $(this);
        let form = $('#addQuizModal form');
        handleWebinarItemForm(form, $this);
    });

    /*
    * edit ticket
    * */

    function editTicket($this, locale = null) {
        const ticket_id = $this.attr('data-ticket-id');
        const webinar_id = $this.attr('data-webinar-id');

        const edit_data = {
            item_id: webinar_id,
            locale: locale,
        };

        $.post('/admin/tickets/' + ticket_id + '/edit', edit_data, function (result) {
            if (result && result.ticket) {
                const ticket = result.ticket;

                let edit_ticket_modal = '<div id="addTicketModal">';
                edit_ticket_modal += $('#webinarTicketModal').html();
                edit_ticket_modal += '</div>';
                edit_ticket_modal = edit_ticket_modal.replaceAll('/admin/tickets/store', '/admin/tickets/' + ticket_id + '/update');

                Swal.fire({
                    html: edit_ticket_modal,
                    showCancelButton: false,
                    showConfirmButton: false,
                    customClass: {
                        content: 'p-0 text-left',
                    },
                    width: '48rem',
                    onOpen: () => {
                        $('.date-range-picker').daterangepicker({
                            locale: {format: 'YYYY-MM-DD'},
                            drops: 'down',
                            opens: 'right',
                            startDate: moment(ticket.start_date * 1000).toDate(),
                            endDate: moment(ticket.end_date * 1000).toDate(),
                        });
                        delete ticket.start_date;
                        delete ticket.end_date;

                        Object.keys(ticket).forEach(key => {
                            $('#addTicketModal').find('[name="' + key + '"]').val(ticket[key]);
                        });

                        var localeSelect = $('#addTicketModal').find('select[name="locale"]');

                        if (localeSelect) {
                            localeSelect.addClass('js-edit-ticket-locale-ajax');
                            localeSelect.attr('data-ticket-id', ticket_id);
                            localeSelect.attr('data-webinar-id', webinar_id);
                        }
                    }
                });
            }
        });
    }

    $('body').on('click', '.edit-ticket', function (e) {
        e.preventDefault();
        const $this = $(this);

        loadingSwl();

        editTicket($this);
    });

    $('body').on('change', '.js-edit-ticket-locale-ajax', function (e) {
        e.preventDefault();
        const $this = $(this);

        const locale = $this.val();

        editTicket($this, locale);
    });

    /*
    * edit session
    * */

    function editChapter($this, locale = null) {
        const chapter_id = $this.attr('data-chapter-id');
        const webinar_id = $this.attr('data-webinar-id');

        const edit_data = {
            item_id: webinar_id,
            locale: locale,
        };

        $.post('/admin/chapters/' + chapter_id + '/edit', edit_data, function (result) {
            if (result && result.chapter) {
                const chapter = result.chapter;

                let html = '<div id="editChapterModal">';
                html += $('#webinarChapterModal').html();
                html += '</div>';

                html = html.replaceAll('/admin/chapters/store', '/admin/chapters/' + chapter_id + '/update');
                const nameId = randomString();
                html = html.replaceAll('record', nameId);

                Swal.fire({
                    html: html,
                    showCancelButton: false,
                    showConfirmButton: false,
                    customClass: {
                        content: 'p-0 text-left',
                    },
                    width: '48rem',
                    onOpen: () => {
                        var $modal = $('#editChapterModal');

                        Object.keys(chapter).forEach(key => {
                            if (key === 'status') {
                                const checked = (chapter.status === 'active');

                                $modal.find('[name="' + key + '"]').prop('checked', checked)
                            } else {
                                $modal.find('[name="' + key + '"]').val(chapter[key]);
                            }
                        });

                        var localeSelect = $modal.find('select[name="locale"]');

                        if (localeSelect) {
                            localeSelect.addClass('js-edit-chapter-locale-ajax');
                            localeSelect.attr('data-chapter-id', chapter_id);
                            localeSelect.attr('data-webinar-id', webinar_id);
                        }
                    }
                });
            }
        });
    }

    $('body').on('click', '.edit-chapter', function (e) {
        e.preventDefault();
        const $this = $(this);

        loadingSwl();

        editChapter($this);
    });

    $('body').on('change', '.js-edit-chapter-locale-ajax', function (e) {
        e.preventDefault();
        const $this = $(this);
        const locale = $this.val();

        editChapter($this, locale);
    });

    /*
    * edit session
    * */

    function editSession($this, locale = null) {
        const session_id = $this.attr('data-session-id');
        const webinar_id = $this.attr('data-webinar-id');

        const edit_data = {
            item_id: webinar_id,
            locale: locale
        };

        $.post('/admin/sessions/' + session_id + '/edit', edit_data, function (result) {
            if (result && result.session) {
                const session = result.session;

                let edit_session_modal = '<div id="addSessionModal">';
                edit_session_modal += $('#webinarSessionModal').html();
                edit_session_modal += '</div>';
                edit_session_modal = edit_session_modal.replaceAll('/admin/sessions/store', '/admin/sessions/' + session_id + '/update');
                const nameId = randomString();
                edit_session_modal = edit_session_modal.replaceAll('record', nameId);

                Swal.fire({
                    html: edit_session_modal,
                    showCancelButton: false,
                    showConfirmButton: false,
                    customClass: {
                        content: 'p-0 text-left',
                    },
                    width: '48rem',
                    onOpen: () => {
                        var $modal = $('#addSessionModal');

                        var datetimepicker = $('.datetimepicker');
                        datetimepicker.val(session.date);
                        datetimepicker.daterangepicker({
                            locale: {format: 'YYYY-MM-DD HH:mm'},
                            singleDatePicker: true,
                            timePicker: true,
                            timePicker24Hour: true,
                        });
                        delete session.date;

                        Object.keys(session).forEach(key => {
                            if (key === 'session_api') {
                                var apiInput = $modal.find('.js-api-input[value="' + session[key] + '"]');
                                apiInput.prop('checked', true);

                                $modal.find('.js-api-input').prop('disabled', true);

                                if (session[key] !== 'local') {
                                    $modal.find('.js-ajax-api_secret').prop('disabled', true);
                                    $modal.find('.js-ajax-date').prop('disabled', true);
                                    $modal.find('.js-ajax-duration').prop('disabled', true);
                                    $modal.find('.js-ajax-link').prop('disabled', true);
                                }

                                if (session[key] === 'big_blue_button') {
                                    $modal.find('.js-moderator-secret').removeClass('d-none');
                                    $modal.find('.js-ajax-moderator_secret').prop('disabled', true);
                                } else if (session[key] === 'zoom') {
                                    $modal.find('.js-local-link').addClass('d-none');
                                    $modal.find('.js-api-secret').addClass('d-none');
                                    $modal.find('.js-moderator-secret').addClass('d-none');
                                } else if (session[key] === 'agora') {
                                    $modal.find('.js-agora-chat-and-rec').removeClass('d-none');
                                    $modal.find('.js-api-secret').addClass('d-none');
                                    $modal.find('.js-local-link').addClass('d-none');
                                    $modal.find('.js-moderator-secret').addClass('d-none');
                                }

                            } else if (key === 'status') {
                                const checked = (session.status === 'active');

                                $modal.find('[name="' + key + '"]').prop('checked', checked)
                            } else if (key === 'agora_settings') {
                                const agora_settings = JSON.parse(session.agora_settings);

                                if (agora_settings && agora_settings['chat'] && (agora_settings['chat'] === true || agora_settings['chat'] === 'true')) {
                                    $modal.find('[name="agora_chat"]').prop('checked', true)
                                }

                                if (agora_settings && agora_settings['record'] && (agora_settings['record'] === true || agora_settings['record'] === 'true')) {
                                    $modal.find('[name="agora_record"]').prop('checked', true)
                                }
                            } else {
                                $modal.find('[name="' + key + '"]').val(session[key]);
                            }
                        });

                        var localeSelect = $modal.find('select[name="locale"]');

                        if (localeSelect) {
                            localeSelect.addClass('js-edit-session-locale-ajax');
                            localeSelect.attr('data-session-id', session_id);
                            localeSelect.attr('data-webinar-id', webinar_id);
                        }
                    }
                });
            }
        });
    }

    $('body').on('click', '.edit-session', function (e) {
        e.preventDefault();
        const $this = $(this);

        loadingSwl();

        editSession($this);
    });

    $('body').on('change', '.js-edit-session-locale-ajax', function (e) {
        e.preventDefault();
        const $this = $(this);
        const locale = $this.val();

        editSession($this, locale);
    });

    /*
    * edit files
    * */

    function editFile($this, locale = null) {
        const file_id = $this.attr('data-file-id');
        const webinar_id = $this.attr('data-webinar-id');


        const edit_data = {
            item_id: webinar_id,
            locale: locale
        };

        $.post('/admin/files/' + file_id + '/edit', edit_data, function (result) {
            if (result && result.file) {
                const file = result.file;

                if (file.storage === 'upload_archive') {
                    createEditInteractiveFileModal(file)
                } else {
                    createEditFileModal(file);
                }
            }
        });
    }

    function createEditFileModal(file) {
        let edit_file_modal = '<div id="addFilesModal">';
        edit_file_modal += $('#webinarFileModal').html();
        edit_file_modal += '</div>';
        edit_file_modal = edit_file_modal.replaceAll('/admin/files/store', '/admin/files/' + file.id + '/update');
        edit_file_modal = edit_file_modal.replaceAll('str_', '');
        const random = randomString();
        edit_file_modal = edit_file_modal.replaceAll('record', random);

        Swal.fire({
            html: edit_file_modal,
            showCancelButton: false,
            showConfirmButton: false,
            customClass: {
                content: 'p-0 text-left',
            },
            width: '48rem',
            onOpen: () => {
                var $modal = $('#addFilesModal');

                Object.keys(file).forEach(key => {
                    if (key === 'storage') {
                        var $form = $modal.find('form');

                        $modal.find('[name="' + key + '"]').val(file[key]);

                        handleShowFileInputsBySource($form, file.storage, file.file_type);
                    } else if (key === 'status') {
                        const checked = (file.status === 'active');

                        $modal.find('[name="' + key + '"]').prop('checked', checked);
                    } else if (key === 'downloadable') {
                        const checked = (file.downloadable === 1 || file.downloadable === "1");
                        $modal.find('input[name="' + key + '"]').prop('checked', checked);
                    } else {
                        $modal.find('[name="' + key + '"]').val(file[key]);
                    }
                });

                var localeSelect = $modal.find('select[name="locale"]');

                if (localeSelect) {
                    localeSelect.addClass('js-edit-file-locale-ajax');
                    localeSelect.attr('data-file-id', file.id);
                    localeSelect.attr('data-webinar-id', file.webinar_id);
                }
            }
        });
    }

    function createEditInteractiveFileModal(file) {
        let html = '<div id="addInteractiveFileModal">';
        html += $('#interactiveFileModal').html();
        html += '</div>';
        html = html.replaceAll('/admin/files/store', '/admin/files/' + file.id + '/update');
        html = html.replaceAll('str_', '');
        const random = randomString();
        html = html.replaceAll('record', random);

        Swal.fire({
            html: html,
            showCancelButton: false,
            showConfirmButton: false,
            customClass: {
                content: 'p-0 text-left',
            },
            width: '48rem',
            onOpen: () => {
                var $modal = $('#addInteractiveFileModal');

                if (file.interactive_type === 'custom') {
                    const $fileName = $modal.find('.js-interactive-file-name-input');
                    $fileName.removeClass('d-none');
                }

                Object.keys(file).forEach(key => {
                    if (key === 'status') {
                        const checked = (file.status === 'active');

                        $modal.find('[name="' + key + '"]').prop('checked', checked);
                    } else {
                        $modal.find('[name="' + key + '"]').val(file[key]);
                    }
                });

                var localeSelect = $modal.find('select[name="locale"]');

                if (localeSelect) {
                    localeSelect.addClass('js-edit-file-locale-ajax');
                    localeSelect.attr('data-file-id', file.id);
                    localeSelect.attr('data-webinar-id', file.webinar_id);
                }
            }
        });
    }

    function handleShowFileInputsBySource($form, source, fileType) {
        const $fileTypeVolumeInputs = $form.find('.js-file-type-volume');
        const $downloadableInput = $form.find('.js-downloadable-input');

        const $filePathInputGroup = $form.find('.js-file-path-input');
        const $s3FilePathInputGroup = $form.find('.js-s3-file-path-input');
        const $filePathButton = $form.find('.js-file-path-input button');
        const $filePathInput = $form.find('.js-file-path-input input');

        $filePathButton.addClass('admin-file-manager');
        $filePathInputGroup.removeClass('d-none');
        $s3FilePathInputGroup.addClass('d-none');

        let icon = 'upload';

        switch (source) {
            case 'youtube':
            case 'vimeo':
            case 'iframe':
                $fileTypeVolumeInputs.addClass('d-none');
                $downloadableInput.find('input').prop('checked', false);
                $downloadableInput.addClass('d-none');

                $filePathButton.removeClass('admin-file-manager');
                icon = 'link';

                break;

            case 'external_link':
            case 's3':
                $fileTypeVolumeInputs.removeClass('d-none');

                if (fileType && fileType === 'video') {
                    $downloadableInput.removeClass('d-none');
                } else {
                    $downloadableInput.find('input').prop('checked', false);
                    $downloadableInput.addClass('d-none');
                }

                if (source === 'external_link') {
                    $filePathButton.removeClass('admin-file-manager');
                    icon = 'external-link-alt';
                } else if (source === 's3') {
                    $filePathInputGroup.addClass('d-none');
                    $s3FilePathInputGroup.removeClass('d-none');

                }

                break;

            case 'google_drive':
                $fileTypeVolumeInputs.removeClass('d-none');
                $downloadableInput.find('input').prop('checked', false);
                $downloadableInput.addClass('d-none');

                $filePathButton.removeClass('admin-file-manager');
                icon = 'box';

                break;

            case 'upload':
                $fileTypeVolumeInputs.addClass('d-none');
                $downloadableInput.removeClass('d-none');
        }

        if (icon) {
            const iconCard = $filePathButton.find('i');
            iconCard.removeClass();

            iconCard.addClass('fa fa-' + icon);
        }

        if (filePathPlaceHolderBySource) {
            $filePathInput.attr('placeholder', filePathPlaceHolderBySource[source]);
        }

    }

    $('body').on('change', '.js-interactive-type', function () {
        const fileForm = $(this).closest('form');

        const $fileName = fileForm.find('.js-interactive-file-name-input');
        $fileName.addClass('d-none');

        if ($(this).val() === 'custom') {
            $fileName.removeClass('d-none');
        }

    });

    $('body').on('change', '.js-video-demo-source', function (e) {
        e.preventDefault();

        const value = $(this).val();

        const $filePathUploadButton = $('.js-video-demo-path-input .js-video-demo-path-upload');
        const $filePathLinkButton = $('.js-video-demo-path-input .js-video-demo-path-links');
        const $filePathInput = $('.js-video-demo-path-input input');

        $filePathUploadButton.addClass('d-none');
        $filePathLinkButton.addClass('d-none');

        if (value === 'upload') {
            $filePathUploadButton.removeClass('d-none');
        } else {
            $filePathLinkButton.removeClass('d-none');
        }

        if (videoDemoPathPlaceHolderBySource) {
            $filePathInput.attr('placeholder', videoDemoPathPlaceHolderBySource[value]);
        }
    });

    $('body').on('click', '.edit-file', function (e) {
        e.preventDefault();
        const $this = $(this);

        loadingSwl();

        editFile($this);
    });

    $('body').on('change', '.js-edit-file-locale-ajax', function (e) {
        e.preventDefault();
        const $this = $(this);
        const locale = $this.val();

        editFile($this, locale);
    });

    /*
    * edit prerequisites
    * */
    $('body').on('click', '.edit-prerequisite', function (e) {
        e.preventDefault();
        const $this = $(this);
        const prerequisite_id = $this.attr('data-prerequisite-id');
        const webinar_id = $this.attr('data-webinar-id');

        loadingSwl();

        const edit_data = {
            item_id: webinar_id
        };

        $.post('/admin/prerequisites/' + prerequisite_id + '/edit', edit_data, function (result) {
            if (result && result.prerequisite) {
                const prerequisite = result.prerequisite;

                let edit_prerequisite_modal = '<div id="addPrerequisitesModal">';
                edit_prerequisite_modal += $('#webinarPrerequisitesModal').html();
                edit_prerequisite_modal += '</div>';
                edit_prerequisite_modal = edit_prerequisite_modal.replaceAll('prerequisites-select', 'prerequisites-select2');
                edit_prerequisite_modal = edit_prerequisite_modal.replaceAll('/admin/prerequisites/store', '/admin/prerequisites/' + prerequisite_id + '/update');
                edit_prerequisite_modal = edit_prerequisite_modal.replaceAll('str_', '');

                Swal.fire({
                    html: edit_prerequisite_modal,
                    showCancelButton: false,
                    showConfirmButton: false,
                    customClass: {
                        content: 'p-0 text-left',
                    },
                    width: '48rem',
                    onOpen: () => {
                        $('.prerequisites-select2').append('<option selected="selected" value="' + prerequisite.webinar_id + '">' + prerequisite.webinar_title + '</option>');

                        if (prerequisite.required === 1) {
                            $('#addPrerequisitesModal').find('[name="required"]').prop('checked', true);
                        }

                        $('.prerequisites-select2').select2({
                            placeholder: $(this).data('placeholder'),
                            minimumInputLength: 3,
                            allowClear: true,
                            ajax: {
                                url: '/admin/webinars/search',
                                dataType: 'json',
                                type: "POST",
                                quietMillis: 50,
                                data: function (params) {
                                    var queryParameters = {
                                        term: params.term,
                                        webinar_id: $(this).data('webinar-id')
                                    }
                                    return queryParameters;
                                },
                                processResults: function (data) {
                                    return {
                                        results: $.map(data, function (item) {
                                            return {
                                                text: item.title,
                                                id: item.id
                                            }
                                        })
                                    };
                                }
                            }
                        });
                    }
                });
            }
        });
    });

    /*
   * edit FAQ
   * */
    function editFaq($this, locale = null) {
        const faq_id = $this.attr('data-faq-id');
        const webinar_id = $this.attr('data-webinar-id');

        const edit_data = {
            item_id: webinar_id,
            locale: locale
        };

        $.post('/admin/faqs/' + faq_id + '/edit', edit_data, function (result) {
            if (result && result.faq) {
                const faq = result.faq;

                let edit_faq_modal = '<div id="addFAQsModal">';
                edit_faq_modal += $('#webinarFaqModal').html();
                edit_faq_modal += '</div>';
                edit_faq_modal = edit_faq_modal.replaceAll('/admin/faqs/store', '/admin/faqs/' + faq_id + '/update');

                Swal.fire({
                    html: edit_faq_modal,
                    showCancelButton: false,
                    showConfirmButton: false,
                    customClass: {
                        content: 'p-0 text-left',
                    },
                    width: '48rem',
                    onOpen: () => {
                        var $modal = $('#addFAQsModal');

                        Object.keys(faq).forEach(key => {
                            $modal.find('[name="' + key + '"]').val(faq[key]);
                        });

                        var localeSelect = $modal.find('select[name="locale"]');

                        if (localeSelect) {
                            localeSelect.addClass('js-edit-faq-locale-ajax');
                            localeSelect.attr('data-faq-id', faq_id);
                            localeSelect.attr('data-webinar-id', webinar_id);
                        }
                    }
                });
            }
        });
    }

    $('body').on('click', '.edit-faq', function (e) {
        e.preventDefault();
        const $this = $(this);

        loadingSwl();

        editFaq($this);
    });

    $('body').on('change', '.js-edit-faq-locale-ajax', function (e) {
        e.preventDefault();
        const $this = $(this);
        const locale = $this.val();

        editFaq($this, locale);
    });

    $('body').on('click', '.js-get-faq-description', function (e) {
        e.preventDefault();
        const $this = $(this);
        const answer = $this.parent().find('input').val();

        var html = '<div class="my-2">' + answer + '</div>';

        Swal.fire({
            html: html,
            showCancelButton: false,
            showConfirmButton: false,
            customClass: {
                content: 'p-0 text-left',
            },
            width: '30rem',
        });
    });

    /*
   * edit FAQ
   * */
    $('body').on('click', '.edit-webinar-quiz', function (e) {
        e.preventDefault();
        const $this = $(this);
        const webinar_quiz_id = $this.attr('data-webinar-quiz-id');
        const webinar_id = $this.attr('data-webinar-id');

        loadingSwl();

        const edit_data = {
            item_id: webinar_id
        };

        $.post('/admin/webinar-quiz/' + webinar_quiz_id + '/edit', edit_data, function (result) {
            if (result && result.webinarQuiz) {
                const webinar_quiz = result.webinarQuiz;

                let edit_webinar_quiz_modal = '<div id="addQuizModal">';
                edit_webinar_quiz_modal += $('#quizzesModal').html();
                edit_webinar_quiz_modal += '</div>';
                edit_webinar_quiz_modal = edit_webinar_quiz_modal.replaceAll('/admin/webinar-quiz/store', '/admin/webinar-quiz/' + webinar_quiz_id + '/update');
                edit_webinar_quiz_modal = edit_webinar_quiz_modal.replaceAll('quiz-select2', 'quiz-select22');

                Swal.fire({
                    html: edit_webinar_quiz_modal,
                    showCancelButton: false,
                    showConfirmButton: false,
                    customClass: {
                        content: 'p-0 text-left',
                    },
                    width: '30rem',
                    onOpen: () => {

                        $('.quiz-select22').append('<option selected="selected" value="' + webinar_quiz.id + '">' + webinar_quiz.title + '</option>');
                        $(".quiz-select22").select2({
                            placeholder: $(this).data('placeholder'),
                            allowClear: true,
                            width: '100%',
                        });

                        $('#addQuizModal').find('[name="chapter_id"]').val(webinar_quiz.chapter_id);
                    }
                });
            }
        });
    });

    $('body').on('change', '.js-file-storage', function (e) {
        e.preventDefault();

        const value = this.value;
        const formGroup = $(this).closest('form');
        const fileType = formGroup.find('.js-ajax-file_type').val();

        handleShowFileInputsBySource(formGroup, value, fileType);
    });

    $('body').on('change', '.js-ajax-file_type', function (e) {
        e.preventDefault();

        const value = $(this).val();
        const formGroup = $(this).closest('form');
        const source = formGroup.find('.js-file-storage').val();

        handleShowFileInputsBySource(formGroup, source, value);
    });


    /**
     * add webinar textLessons
     * */
    $('body').on('click', '#webinarAddTestLesson', function (e) {
        e.preventDefault();
        const nameId = randomString();

        let addTextLesson = '<div id="addTestLessonModal">';
        addTextLesson += $('#webinarTestLessonModal').html();
        addTextLesson += '</div>';
        addTextLesson = addTextLesson.replaceAll('record', nameId);
        addTextLesson = addTextLesson.replaceAll('attachments-select2', 'attachments-select2-' + nameId);

        Swal.fire({
            html: addTextLesson,
            showCancelButton: false,
            showConfirmButton: false,
            customClass: {
                content: 'p-0 text-left',
            },
            width: '48rem',
            onOpen: () => {
                $('.attachments-select2-' + nameId).select2({
                    multiple: true,
                    width: '100%',
                });

                var $modal = $('#addTestLessonModal');
                var summernoteTarget = $modal.find('.js-content-summernote');
                if (summernoteTarget.length) {
                    summernoteTarget.summernote({
                        tabsize: 2,
                        height: 400,
                        callbacks: {
                            onChange: function (contents, $editable) {
                                $modal.find('.js-hidden-content-summernote').val(contents);
                            }
                        }
                    });
                }
            }
        });
    });

    $('body').on('click', '#saveTestLesson', function (e) {
        e.preventDefault();
        const $this = $(this);
        let form = $('#addTestLessonModal form');
        handleWebinarItemForm(form, $this);
    });

    /*
    * edit text lesson
    * */
    function editTextLesson($this, locale = null) {
        const id = $this.attr('data-text-id');
        const webinar_id = $this.attr('data-webinar-id');


        const edit_data = {
            item_id: webinar_id,
            locale: locale
        };

        $.post('/admin/test-lesson/' + id + '/edit', edit_data, function (result) {
            if (result && result.testLesson) {
                const testLesson = result.testLesson;
                const nameId = randomString();

                let addTextLesson = '<div id="addTestLessonModal">';
                addTextLesson += $('#webinarTestLessonModal').html();
                addTextLesson += '</div>';
                addTextLesson = addTextLesson.replaceAll('record', nameId);
                addTextLesson = addTextLesson.replaceAll('/admin/test-lesson/store', '/admin/test-lesson/' + id + '/update');
                addTextLesson = addTextLesson.replaceAll('str_', '');
                addTextLesson = addTextLesson.replaceAll('attachments-select2', 'attachments-select2-' + nameId);

                Swal.fire({
                    html: addTextLesson,
                    showCancelButton: false,
                    showConfirmButton: false,
                    customClass: {
                        content: 'p-0 text-left',
                    },
                    width: '48rem',
                    onOpen: () => {
                        var $modal = $('#addTestLessonModal');
                        let attachments = [];

                        Object.keys(testLesson).forEach(key => {
                            if (key === 'attachments') {
                                if (testLesson[key] && testLesson[key].length) {
                                    Object.keys(testLesson[key]).forEach(k => {
                                        var file = testLesson[key][k];

                                        if (file) {
                                            attachments.push(file.file_id);
                                        }
                                    });
                                }
                            } else if (key === 'status') {
                                const checked = (testLesson.status === 'active');

                                $modal.find('[name="' + key + '"]').prop('checked', checked)
                            } else {
                                $modal.find('[name="' + key + '"]').val(testLesson[key]);
                            }
                        });

                        $('.attachments-select2-' + nameId).select2({
                            multiple: true,
                            width: '100%',
                        });

                        $('.attachments-select2-' + nameId).val(attachments).change();

                        var summernoteTarget = $modal.find('.js-content-summernote');
                        if (summernoteTarget.length) {
                            summernoteTarget.val(testLesson['content']);

                            summernoteTarget.summernote({
                                tabsize: 2,
                                height: 400,
                                callbacks: {
                                    onChange: function (contents, $editable) {
                                        $modal.find('.js-hidden-content-summernote').val(contents);
                                    }
                                }
                            });
                        }

                        var localeSelect = $modal.find('select[name="locale"]');

                        if (localeSelect) {
                            localeSelect.addClass('js-edit-text-locale-ajax');
                            localeSelect.attr('data-text-id', id);
                            localeSelect.attr('data-webinar-id', webinar_id);
                        }
                    }
                });
            }
        });
    }

    $('body').on('click', '.edit-test-lesson', function (e) {
        e.preventDefault();
        const $this = $(this);

        loadingSwl();

        editTextLesson($this);
    });

    $('body').on('change', '.js-edit-text-locale-ajax', function (e) {
        e.preventDefault();
        const $this = $(this);
        const locale = $this.val();

        editTextLesson($this, locale);
    });

    /*
    * ./
    * */


    $('body').on('change', 'select[name="type"]', function () {
        const value = this.value;
        const webinarItem = ['capacity', 'start_date'];

        let show = true;

        if (value !== 'webinar') {
            show = false;
        }

        for (let item of webinarItem) {
            if (show) {
                $('.js-' + item).removeClass('d-none');
            } else {
                $('.js-' + item).addClass('d-none');
            }
        }
    });
})(jQuery);
