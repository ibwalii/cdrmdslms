<div class="content-tab p-15 pb-50">
    @if(!empty($quizzes) and $quizzes->count())
        @foreach($quizzes as $quiz)
            @include('web.default.course.learningPage.components.quiz_tab.quiz',['item' => $quiz, 'type' => 'quiz','class' => 'px-10 border border-gray200 rounded-sm mb-15'])
        @endforeach
    @endif
</div>
