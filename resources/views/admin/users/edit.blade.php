@extends('admin.layouts.app')

@push('libraries_top')

@endpush

@section('content')
    <section class="section">
        <div class="section-header">
            <h1>{{ trans('/admin/main.edit') }} {{ trans('admin/main.user') }}</h1>
            <div class="section-header-breadcrumb">
                <div class="breadcrumb-item active"><a href="/admin/">{{ trans('admin/main.dashboard') }}</a>
                </div>
                <div class="breadcrumb-item active"><a href="/admin/users">{{ trans('admin/main.users') }}</a>
                </div>
                <div class="breadcrumb-item">{{ trans('/admin/main.edit') }}</div>
            </div>
        </div>

        @if(!empty(session()->has('msg')))
            <div class="alert alert-success my-25">
                {{ session()->get('msg') }}
            </div>
        @endif


        <div class="section-body">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">

                            <ul class="nav nav-pills" id="myTab3" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link @if(empty($becomeInstructor)) active @endif" id="general-tab" data-toggle="tab" href="#general" role="tab" aria-controls="general" aria-selected="true">{{ trans('admin/main.main_general') }}</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="images-tab" data-toggle="tab" href="#images" role="tab" aria-controls="images" aria-selected="true">{{ trans('auth.images') }}</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" id="occupations-tab" data-toggle="tab" href="#occupations" role="tab" aria-controls="occupations" aria-selected="true">{{ trans('site.occupations') }}</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" id="badges-tab" data-toggle="tab" href="#badges" role="tab" aria-controls="badges" aria-selected="true">{{ trans('admin/main.badges') }}</a>
                                </li>

                                @if(!empty($becomeInstructor))
                                    <li class="nav-item">
                                        <a class="nav-link @if(!empty($becomeInstructor)) active @endif" id="become_instructor-tab" data-toggle="tab" href="#become_instructor" role="tab" aria-controls="become_instructor" aria-selected="true">{{ trans('admin/main.become_instructor_info') }}</a>
                                    </li>
                                @endif
                            </ul>

                            <div class="tab-content" id="myTabContent2">

                                @include('admin.users.editTabs.general')

                                @include('admin.users.editTabs.images')

                                @include('admin.users.editTabs.financial')

                                @include('admin.users.editTabs.occupations')

                                @include('admin.users.editTabs.badges')

                                @if(!empty($user) and ($user->isOrganization() or $user->isTeacher()))
                                    @can('admin_update_user_registration_package')
                                        @include('admin.users.editTabs.registration_package')
                                    @endcan
                                @endif

                                @if(!empty($user) and ($user->isOrganization() or $user->isTeacher()))
                                    @can('admin_update_user_meeting_settings')
                                        @include('admin.users.editTabs.meeting_settings')
                                    @endcan
                                @endif

                                @if(!empty($becomeInstructor))
                                    @include('admin.users.editTabs.become_instructor')
                                @endif

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection

@push('scripts_bottom')
    <script src="/assets/default/js/admin/user_edit.min.js"></script>
@endpush
