@extends(getTemplate() .'.panel.layouts.panel_layout')

@push('styles_top')
    <link rel="stylesheet" href="/assets/default/vendors/daterangepicker/daterangepicker.min.css">
@endpush

@section('content')

    <section class="mt-25">
        <div class="d-flex align-items-start align-items-md-center justify-content-between flex-column flex-md-row">
            <h2 class="section-title">Add Students to {{ $webinar->title }} </h2>

        </div>

        @if(!empty($students))
            <div class="mt-30 panel-section-card py-20 px-25 mt-20 mx-10">
                <form method="POST" action="{{ route('add-students-to-course') }}">
                    @csrf
                    <div class="row mb-10">
                        <div class="col-6">
                            <button type="submit" class="btn btn-sm btn-primary py-10">Add Students</button>
                        </div>
                    </div>
                    <hr>
                    <div class="row">
                    <input style="display:none;" name="course_id" type="text" value="{{ $course_id }}">
                    <input style="display:none;" name="creator_id" type="text" value="{{ $organisation->id }}">
                    @foreach($students as $student)
                        <div class="col-3 my-10">
                            <input name="student_id[]" type="checkbox" value="{{ $student->id }}">
                            {{ $student->full_name }}
                        </div>
                    @endforeach
                    </div>
                </form>
            </div>
        @else
            @include(getTemplate() . '.includes.no-result',[
                'file_name' => 'studentt.png',
                'title' => trans('panel.students_no_result'),
                'hint' =>  nl2br(trans('panel.students_no_result_hint')),
                'btn' => ['url' => '/panel/manage/students/new','text' => trans('panel.add_an_student')]
            ])
        @endif

    </section>

    @include('web.default.panel.webinar.make_next_session_modal')
@endsection

@push('scripts_bottom')
    <script src="/assets/default/vendors/daterangepicker/daterangepicker.min.js"></script>

    <script>
        var undefinedActiveSessionLang = '{{ trans('webinars.undefined_active_session') }}';
        var saveSuccessLang = '{{ trans('webinars.success_store') }}';
    </script>

    <script src="/assets/default/js/panel/make_next_session.min.js"></script>
@endpush
