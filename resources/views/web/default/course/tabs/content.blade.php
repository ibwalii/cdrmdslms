{{-- Sessions --}}

@if((!empty($sessionChapters) and count($sessionChapters)) or (!empty($sessionsWithoutChapter) and count($sessionsWithoutChapter)))
    <section class="mt-20">
        @if(!empty($sessionsWithoutChapter) and count($sessionsWithoutChapter))
            @include('web.default.course.tabs.contents.sessions' , ['sessions' => $sessionsWithoutChapter])
        @endif

        @if(!empty($sessionChapters) and count($sessionChapters))
            @include('web.default.course.tabs.contents.chapter' , [
                'chapters' => $sessionChapters,
                'fileName' => 'sessions',
                'fileVariable' => 'sessions',
                'relationName' => 'sessions',
            ])
        @endif
    </section>
@endif

{{-- Files --}}
@if((!empty($filesWithoutChapter) and count($filesWithoutChapter)) or (!empty($fileChapters) and count($fileChapters)))
    <section class="">

        @if(!empty($filesWithoutChapter) and count($filesWithoutChapter))
            @include('web.default.course.tabs.contents.files' , ['files' => $filesWithoutChapter])
        @endif

        @if(!empty($fileChapters) and count($fileChapters))
            @include('web.default.course.tabs.contents.chapter' , [
                'chapters' => $fileChapters,
                'fileName' => 'files',
                'fileVariable' => 'files',
                'relationName' => 'files',
            ])
        @endif
    </section>

    @include('web.default.course.tabs.play_modal.play_modal')

@endif

{{-- TextLessons --}}
@if((!empty($textLessonsWithoutChapter) and count($textLessonsWithoutChapter)) or (!empty($textLessonChapters) and count($textLessonChapters)))
    <section class="">
        @if(!empty($textLessonsWithoutChapter) and count($textLessonsWithoutChapter))
            @include('web.default.course.tabs.contents.text_lessons' , ['textLessons' => $textLessonsWithoutChapter])
        @endif

        @if(!empty($textLessonChapters) and count($textLessonChapters))
            @include('web.default.course.tabs.contents.chapter' , [
                'chapters' => $textLessonChapters,
                'fileName' => 'text_lessons',
                'fileVariable' => 'textLessons',
                'relationName' => 'textLessons',
            ])
        @endif
    </section>
@endif

{{-- Quizzes --}}
@if(!empty($quizzes) and $quizzes->count() > 0)
    <section class="">
        @include('web.default.course.tabs.contents.quiz' , ['quizzes' => $quizzes])
    </section>
@endif

{{-- Certificates --}}
@if(!empty($course->quizzes) and count($course->quizzes))
    <section class="">
        @include('web.default.course.tabs.contents.certificate' , ['quizzes' => $course->quizzes])
    </section>
@endif
