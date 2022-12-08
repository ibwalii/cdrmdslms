@extends(getTemplate() .'.panel.layouts.panel_layout')

@push('styles_top')
    <link rel="stylesheet" href="/assets/default/vendors/select2/select2.min.css">
@endpush

@section('content')
    <div class="bg-white py-10">
        @if(count($courses) > 0)
            <div class="col-12 col-md-6 col-lg-6">
                <h2 class="mt-20 ml-15">Add Assignment</h2>
                <form enctype="multipart/form-data" method="post" class="mt-30" action="/panel/assignment/store">
                    {{ csrf_field() }}
            
                    @if(!empty($organization_id))
                        <input type="hidden" name="organization_id" value="{{ $organization_id }}">
                        <input type="hidden" id="userId" name="user_id" value="{{ $user->id }}">
                    @endif
                    
                    <div class="form-group mt-15 col-6">
                        <label class="input-label">Title</label>
                        <input required type="text" name="title" class="form-control">
                        @error('title')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    
                    <div class="form-group mt-15 col-6">
                        <label class="input-label">Course Name</label>
                        <select required name="course_id" id="" class="form-control @error('level')  is-invalid @enderror">
                            <option></option>
                            @foreach($courses as $course)
                                <option value="{{ $course->id }}">{{ $course->slug }}</option>
                            @endforeach
                        </select>
                        @error('course_id')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
            
                    <div class="form-group mt-15 col-6">
                        <label class="input-label">Upload Question</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <button type="button" class="input-group-text panel-file-manager" data-input="upload_question" data-preview="holder">
                                    <i data-feather="arrow-up" width="18" height="18" class="text-white"></i>
                                </button>
                            </div>
                            <input required type="file" name="question_path" id="upload_question" class="form-control @error('upload_question')  is-invalid @enderror" placeholder=""/>
                            
                            @error('question_path')
                            <div class="invalid-feedback">
                                {{ $message }}
                            </div>
                            @enderror
                        </div>
                    </div>
                    
                    <div class="form-group mt-15 col-6">
                        <label class="input-label">Submission Date</label>
                        <input required type="date" name="submission_date" class="form-control">
                        @error('submission_date')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>
                    
                    <div class="create-webinar-footer d-flex align-items-center justify-content-between mt-20 pt-15 border-top">
                        <input value="Create Assignment" type="submit" class="btn btn-sm btn-primary ml-20">
                    </div>
                </form>
            </div>
        @else
            <h2 class="mt-20 ml-15">No Course Assigned to you yet!</h2>
        @endif
    </div>
@endsection

@push('scripts_bottom')
    <script src="/assets/vendors/cropit/jquery.cropit.js"></script>
    <script src="/assets/default/js/parts/img_cropit.min.js"></script>
    <script src="/assets/default/vendors/select2/select2.min.js"></script>

    <script src="/assets/default/js/panel/user_setting.min.js"></script>
@endpush
