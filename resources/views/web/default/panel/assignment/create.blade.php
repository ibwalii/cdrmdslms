@extends(getTemplate() .'.panel.layouts.panel_layout')

@push('styles_top')
    <link rel="stylesheet" href="/assets/default/vendors/select2/select2.min.css">
@endpush

@section('content')
    
    <form enctype="multipart/form-data" method="post" id="userSettingForm" class="mt-30" action="{{ (!empty($new_user)) ? '/panel/manage/'. $user_type .'/bulk_upload' : '/panel/setting' }}">
        {{ csrf_field() }}

        @if(!empty($organization_id))
            <input type="hidden" name="organization_id" value="{{ $organization_id }}">
            <input type="hidden" id="userId" name="user_id" value="{{ $user->id }}">
        @endif

        <div class="form-group mt-15 col-4">
            <label class="input-label">{{ trans('public.bulk_upload') }}</label>
            <div class="input-group">
                <div class="input-group-prepend">
                    <button type="button" class="input-group-text panel-file-manager" data-input="bulk_upload" data-preview="holder">
                        <i data-feather="arrow-up" width="18" height="18" class="text-white"></i>
                    </button>
                </div>
                <input type="file" name="bulk_upload" id="bulk_upload" class="form-control @error('bulk_upload')  is-invalid @enderror" placeholder=""/>
                @error('bulk_upload')
                <div class="invalid-feedback">
                    {{ $message }}
                </div>
                @enderror
            </div>
        </div>
        <div class="mt-6 col-4">
            <a href="{{ ('/../../../assets/students_sample_template.csv/') }}">Click to download sample file</a>
        </div>
        
    </form>

    <div class="create-webinar-footer d-flex align-items-center justify-content-between mt-20 pt-15 border-top">
        <button type="button" id="saveData" class="btn btn-sm btn-primary ml-15">Upload File</button>
    </div>
@endsection

@push('scripts_bottom')
    <script src="/assets/vendors/cropit/jquery.cropit.js"></script>
    <script src="/assets/default/js/parts/img_cropit.min.js"></script>
    <script src="/assets/default/vendors/select2/select2.min.js"></script>

    <script src="/assets/default/js/panel/user_setting.min.js"></script>
@endpush
