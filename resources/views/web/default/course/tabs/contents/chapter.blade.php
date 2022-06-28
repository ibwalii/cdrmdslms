<div class="row">
    <div class="col-12">
        <div class="accordion-content-wrapper" id="chaptersAccordion{{ $fileName }}" role="tablist" aria-multiselectable="true">
            @foreach($chapters as $chapter)
                <div class="accordion-row rounded-sm border mt-20 p-15">
                    <div class="d-flex align-items-center justify-content-between" role="tab" id="chapter_{{ $chapter->id }}">
                        <div class="js-chapter-collapse-toggle d-flex align-items-center" href="#collapseChapter{{ $chapter->id }}" aria-controls="collapseChapter{{ $chapter->id }}" data-parent="#chaptersAccordion{{ $fileName }}" role="button" data-toggle="collapse" aria-expanded="true">
                            <span class="chapter-icon mr-15">
                                <i data-feather="grid" class=""></i>
                            </span>

                            <span class="font-weight-bold text-secondary font-14">{{ $chapter->title }}</span>
                        </div>

                        <div class="d-flex align-items-center">
                            <span class="mr-15 font-14 text-gray">
                                {{ $chapter->getTopicsCount() }} {{ trans('public.parts') }}

                                @if($fileName != 'files')
                                    - {{ convertMinutesToHourAndMinute($chapter->getDuration()) }} {{ trans('public.hr') }}
                                @endif
                            </span>

                            <i class="collapse-chevron-icon" data-feather="chevron-down" height="20" href="#collapseChapter{{ !empty($chapter) ? $chapter->id :'record' }}" aria-controls="collapseChapter{{ !empty($chapter) ? $chapter->id :'record' }}" data-parent="#chaptersAccordion{{ $fileName }}" role="button" data-toggle="collapse" aria-expanded="true"></i>
                        </div>
                    </div>

                    <div id="collapseChapter{{ $chapter->id }}" aria-labelledby="chapter_{{ $chapter->id }}" class=" collapse" role="tabpanel">
                        <div class="panel-collapse">
                            @if(!empty($chapter->{$relationName}))
                                @include('web.default.course.tabs.contents.'.$fileName , [$fileVariable => $chapter->{$relationName}])
                            @endif

                            @if(!empty($chapter->quizzes) and count($chapter->quizzes))
                                @include('web.default.course.tabs.contents.quiz' , ['quizzes' => $chapter->quizzes, 'isChapterQuiz' => true])
                            @endif
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>
