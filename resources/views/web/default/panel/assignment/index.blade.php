@extends(getTemplate() .'.panel.layouts.panel_layout')

@push('styles_top')
    <link rel="stylesheet" href="/assets/default/vendors/daterangepicker/daterangepicker.min.css">
@endpush

@section('content')
    <section>
        <h2 class="section-title">{{ trans('panel.my_activity') }}</h2>

        <div class="activities-container mt-25 p-20 p-lg-35">
            <div class="row">
                <div class="col-6 col-md-3 mt-30 mt-md-0 d-flex align-items-center justify-content-center">
                    <div class="d-flex flex-column align-items-center text-center">
                        <img src="/assets/default/img/activity/webinars.svg" width="64" height="64" alt="">
                        <strong class="font-30 text-dark-blue font-weight-bold mt-5">{{ !empty($assignments) ? count($assignments) : 0}}</strong>
                        <span class="font-16 text-gray font-weight-500">Assignments</span>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="mt-25">
        <div class="d-flex align-items-start align-items-md-center justify-content-between flex-column flex-md-row">
            <h2 class="section-title">Assignments</h2>
        </div>

        @if(!empty($assignments) and !$assignments->isEmpty())
            @foreach($assignments as $assignment)
                <div class="row mt-30">
                    <div class="col-12">
                        <div class="webinar-card webinar-list d-flex">
                        
                            <div class="webinar-card-body w-100 d-flex flex-column">
                                <div class="d-flex align-items-center justify-content-between">
                                    <h3 class="font-16 text-dark-blue font-weight-bold">{{ $assignment->title }}</h3>
                                </div>
                                <div class="d-flex align-items-center justify-content-between flex-wrap mt-auto">
                                    <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                        <span class="stat-title">Assignment No:</span>
                                        <span class="stat-value">{{ $assignment->id }}</span>
                                    </div>
                                    <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                        <span class="stat-title"> Date of Submission:</span>
                                        <span class="stat-value">{{ date('M d, Y', strtotime($assignment->submission_date))  }} </span>
                                    </div>
                                    <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                        <span class="stat-title">No of Submission:</span>
                                        <span class="stat-value">{{ 0 }} </span>
                                    </div>
                                    <div class="d-flex align-items-start flex-column mt-20 mr-15">
                                        <span class="stat-title">Instructor:</span>
                                        <span class="stat-value">{{ \App\User::where(['id' => $assignment->teacher_id])->pluck('full_name')->first() ?? 'Admin' }}</span>
                                    </div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach

            <div class="my-30">
                {{ $assignments->appends(request()->input())->links('vendor.pagination.panel') }}
            </div>

        @else
            @include(getTemplate() . '.includes.no-result',[
                'file_name' => 'webinar.png',
                'title' => trans('panel.you_not_have_any_webinar'),
                'hint' =>  trans('panel.no_result_hint') ,
                //'btn' => ['url' => '/panel/webinars/new','text' => trans('panel.create_a_webinar') ]
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
