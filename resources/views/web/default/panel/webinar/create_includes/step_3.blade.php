@push('styles_top')
    <link rel="stylesheet" href="/assets/default/vendors/select2/select2.min.css">
    <link rel="stylesheet" href="/assets/default/vendors/daterangepicker/daterangepicker.min.css">
    <link rel="stylesheet" href="/assets/vendors/summernote/summernote-bs4.min.css">
    <link href="/assets/default/vendors/sortable/jquery-ui.min.css"/>
@endpush

@if($webinar->isWebinar())
    <section class="mt-50">
        <div class="">
            <h2 class="section-title after-line">{{ trans('public.sessions') }} ({{ trans('public.optional') }})</h2>
        </div>

        <button type="button" class="js-add-chapter btn btn-primary btn-sm mt-15" data-webinar-id="{{ $webinar->id }}" data-type="{{ \App\Models\WebinarChapter::$chapterSession }}">{{ trans('public.new_chapter') }}</button>

        @include('web.default.panel.webinar.create_includes.accordions.chapter',
                    [
                        'chapters' => $webinar->chapters ,
                        'type' => \App\Models\WebinarChapter::$chapterSession,
                        'relationMethod' => 'sessions',
                        'includeFileName' => 'session',
                        'tableName' => 'sessions',
                        'variableName' => 'session',
                        'emptyState' => [
                            'file_name' => 'meet.png',
                            'title' => trans('public.sessions_no_result'),
                            'hint' => trans('public.sessions_no_result_hint'),
                        ]
                    ]
                )
    </section>

    <div id="newSessionForm" class="d-none">
        @include('web.default.panel.webinar.create_includes.accordions.session',['webinar' => $webinar])
    </div>
@endif

<section class="mt-50">
    <div class="">
        <h2 class="section-title after-line">{{ trans('public.files') }} ({{ trans('public.optional') }})</h2>
    </div>
    <div class="mt-15">
        <p class="font-12 text-gray">- {{ trans('webinars.files_hint_1') }}</p>
        <p class="font-12 text-gray">- {{ trans('webinars.files_hint_2') }}</p>
    </div>
    <button type="button" class="js-add-chapter btn btn-primary btn-sm mt-15" data-webinar-id="{{ $webinar->id }}" data-type="{{ \App\Models\WebinarChapter::$chapterFile }}">{{ trans('public.new_chapter') }}</button>

    @include('web.default.panel.webinar.create_includes.accordions.chapter',
                [
                    'chapters' => $webinar->chapters ,
                    'type' => \App\Models\WebinarChapter::$chapterFile,
                    'relationMethod' => 'files',
                    'includeFileName' => 'file',
                    'tableName' => 'files',
                    'variableName' => 'file',
                    'emptyState' => [
                        'file_name' => 'files.png',
                        'title' => trans('public.files_no_result'),
                        'hint' => trans('public.files_no_result_hint'),
                    ]
                ]
            )
</section>

<div id="newFileForm" class="d-none">
    @include('web.default.panel.webinar.create_includes.accordions.file',['webinar' => $webinar])
</div>

<div id="newInteractiveFileForm" class="d-none">
    @include('web.default.panel.webinar.create_includes.accordions.new_interactive_file',['webinar' => $webinar])
</div>

@if($webinar->isTextCourse())
    <section class="mt-50">
        <div class="">
            <h2 class="section-title after-line">{{ trans('public.test_lesson') }} ({{ trans('public.optional') }})</h2>
        </div>

        <button type="button" class="js-add-chapter btn btn-primary btn-sm mt-15" data-webinar-id="{{ $webinar->id }}" data-type="{{ \App\Models\WebinarChapter::$chapterTextLesson }}">{{ trans('public.new_chapter') }}</button>

        @include('web.default.panel.webinar.create_includes.accordions.chapter',
                    [
                        'chapters' => $webinar->chapters ,
                        'type' => \App\Models\WebinarChapter::$chapterTextLesson,
                        'relationMethod' => 'textLessons',
                        'includeFileName' => 'text-lesson',
                        'tableName' => 'text_lessons',
                        'variableName' => 'textLesson',
                        'emptyState' => [
                            'file_name' => 'files.png',
                            'title' => trans('public.text_lesson_no_result'),
                            'hint' => trans('public.text_lesson_no_result_hint'),
                        ]
                    ]
                )
    </section>

    <div id="newTextLessonForm" class="d-none">
        @include('web.default.panel.webinar.create_includes.accordions.text-lesson',['webinar' => $webinar])
    </div>
@endif

@include('web.default.panel.webinar.create_includes.chapter_modal')

@push('scripts_bottom')
    <script src="/assets/default/vendors/select2/select2.min.js"></script>
    <script src="/assets/default/vendors/daterangepicker/daterangepicker.min.js"></script>
    <script src="/assets/vendors/summernote/summernote-bs4.min.js"></script>
    <script src="/assets/default/vendors/sortable/jquery-ui.min.js"></script>

    <script>
        var requestFailedLang = '{{ trans('public.request_failed') }}';
        var thisLiveHasEndedLang = '{{ trans('update.this_live_has_been_ended') }}';
    </script>
@endpush
