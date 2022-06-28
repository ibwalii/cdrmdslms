<div class="content-tab p-15 pb-50">
    @if(!empty($course->quizzes) and count($course->quizzes))
        @foreach($course->quizzes as $courseQuiz)
            @if($courseQuiz->certificate)
                <div class="certificate-item cursor-pointer p-10 border border-gray200 rounded-sm mb-15" data-result="{{ $courseQuiz->result ? $courseQuiz->result->id : '' }}">
                    <div class="d-flex align-items-center">
                        <span class="chapter-icon bg-gray300 mr-10">
                            <i data-feather="award" class="text-gray" width="16" height="16"></i>
                        </span>

                        <div class="flex-grow-1">
                            <span class="font-weight-500 font-14 text-dark-blue d-block">{{ $courseQuiz->title }}</span>

                            <div class="d-flex align-items-center">
                                <span class="font-12 text-gray">{{ $courseQuiz->pass_mark }}/{{ $courseQuiz->quizQuestions->sum('grade') }}</span>

                                @if(!empty($courseQuiz->result))
                                    <span class="font-12 text-gray">{{ dateTimeFormat($courseQuiz->result->created_at, 'j M Y H:i') }}</span>
                                @endif
                            </div>
                        </div>

                    </div>
                </div>
            @endif
        @endforeach
    @endif
</div>
