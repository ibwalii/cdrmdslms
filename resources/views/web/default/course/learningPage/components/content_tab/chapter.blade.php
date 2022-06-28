@if(!empty($chapters) and count($chapters))
    <div class="accordion-content-wrapper mt-15" id="chapterAccordion_{{ $type }}" role="tablist" aria-multiselectable="true">
        @foreach($chapters as $chapter)
            <div class="accordion-row bg-white rounded-sm border border-gray200 mb-2">
                <div class="d-flex align-items-center justify-content-between p-10" role="tab" id="chapter_{{ $chapter->id  }}">
                    <div class="d-flex align-items-center" href="#collapseChapter{{ $chapter->id  }}" aria-controls="collapseChapter{{ $chapter->id  }}" data-parent="#chapterAccordion_{{ $type }}" role="button" data-toggle="collapse" aria-expanded="true">
                        <span class="chapter-icon mr-10">
                            <i data-feather="grid" class="" width="20" height="20"></i>
                        </span>

                        <div class="">
                            <span class="font-weight-bold font-14 text-dark-blue d-block">{{ $chapter->title }}</span>

                            <span class="font-12 text-gray d-block">
                                @php
                                    $topicCount = 0;

                                    if (!empty($chapter->$relationMethod)) {
                                        $topicCount = count($chapter->$relationMethod);
                                    }

                                    if (!empty($chapter->quizzes)) {
                                        $topicCount += count($chapter->quizzes);
                                    }
                                @endphp

                                {{ $topicCount }} {{ trans('public.topic') }}
                            </span>
                        </div>
                    </div>

                    <div class="d-flex align-items-center">
                        <i class="collapse-chevron-icon feather-chevron-down text-gray" data-feather="chevron-down" height="20" href="#collapseChapter{{ $chapter->id  }}" aria-controls="collapseChapter{{ $chapter->id  }}" data-parent="#chapterAccordion_{{ $type }}" role="button" data-toggle="collapse" aria-expanded="true"></i>
                    </div>
                </div>

                <div id="collapseChapter{{ $chapter->id  }}" aria-labelledby="chapter_{{ $chapter->id  }}" class="collapse" role="tabpanel">
                    <div class="panel-collapse text-gray">

                        @if(!empty($chapter->$relationMethod) and count($chapter->$relationMethod))
                            @foreach($chapter->$relationMethod as $session)
                                @include('web.default.course.learningPage.components.content_tab.content',['item' => $session, 'type' => $type])
                            @endforeach
                        @endif

                        @if(!empty($chapter->quizzes) and count($chapter->quizzes))
                            @foreach($chapter->quizzes as $quiz)
                                    @include('web.default.course.learningPage.components.quiz_tab.quiz',['item' => $quiz, 'type' => 'quiz'])
                            @endforeach
                        @endif
                    </div>
                </div>
            </div>
        @endforeach
    </div>
@endif
