<div class="content-tab p-15 pb-50">

    @if(!empty($course->sessions) and count($course->sessions))

        @if(!empty($sessionsWithoutChapter) and count($sessionsWithoutChapter))
            @foreach($sessionsWithoutChapter as $session)
                @include('web.default.course.learningPage.components.content_tab.content',['item' => $session, 'type' => \App\Models\WebinarChapter::$chapterSession])
            @endforeach
        @endif

        @if(!empty($sessionChapters) and count($sessionChapters))
            @include('web.default.course.learningPage.components.content_tab.chapter',[
                'chapters' => $sessionChapters,
                'type' => \App\Models\WebinarChapter::$chapterSession,
                'relationMethod' => 'sessions',
            ])
        @endif
    @endif

    {{-- Files --}}
    @if(!empty($course->files) and count($course->files))
        @if(!empty($filesWithoutChapter) and count($filesWithoutChapter))
            @foreach($filesWithoutChapter as $file)
                @include('web.default.course.learningPage.components.content_tab.content',['item' => $file, 'type' => \App\Models\WebinarChapter::$chapterFile])
            @endforeach
        @endif

        @if(!empty($fileChapters) and count($fileChapters))
            @include('web.default.course.learningPage.components.content_tab.chapter',[
                'chapters' => $fileChapters,
                'type' => \App\Models\WebinarChapter::$chapterFile,
                'relationMethod' => 'files',
            ])
        @endif
    @endif

    {{-- TextLessons --}}
    @if(!empty($course->textLessons) and count($course->textLessons))
        @if(!empty($textLessonsWithoutChapter) and count($textLessonsWithoutChapter))
            @foreach($textLessonsWithoutChapter as $textLesson)
                @include('web.default.course.learningPage.components.content_tab.content',['item' => $textLesson, 'type' => \App\Models\WebinarChapter::$chapterTextLesson])
            @endforeach
        @endif

        @if(!empty($textLessonChapters) and count($textLessonChapters))
            @include('web.default.course.learningPage.components.content_tab.chapter',[
                'chapters' => $textLessonChapters,
                'type' => \App\Models\WebinarChapter::$chapterTextLesson,
                'relationMethod' => 'textLessons',
            ])
        @endif
    @endif
</div>
