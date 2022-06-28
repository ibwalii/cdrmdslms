<div class="row mt-10">
    <div class="col-12">
        <div class="accordion-content-wrapper mt-15" id="chapterAccordion{{ !empty($chapter) ? $chapter->id :'' }}" role="tablist" aria-multiselectable="true">
            @if(!empty($chapters) and count($chapters))
                <ul class="draggable-content-lists draggable-lists-chapter-{{ $type }}" data-drag-class="draggable-lists-chapter-{{ $type }}" data-order-table="webinar_chapters">
                    @foreach($chapters->where('type', $type) as $chapter)

                        <li data-id="{{ !empty($chapter) ? $chapter->id :'' }}" data-chapter-order="{{ $chapter->order }}" class="accordion-row bg-white rounded-sm panel-shadow mt-20 py-15 py-lg-30 px-10 px-lg-20">
                            <div class="d-flex align-items-center justify-content-between " role="tab" id="chapter_{{ !empty($chapter) ? $chapter->id :'record' }}">
                                <div class="d-flex align-items-center" href="#collapseChapter{{ !empty($chapter) ? $chapter->id :'record' }}" aria-controls="collapseChapter{{ !empty($chapter) ? $chapter->id :'record' }}" data-parent="#chapterAccordion" role="button" data-toggle="collapse" aria-expanded="true">
                                    <span class="chapter-icon mr-10">
                                        <i data-feather="grid" class=""></i>
                                    </span>
                                    <div class="">
                                        <span class="font-weight-bold text-dark-blue d-block">{{ !empty($chapter) ? $chapter->title : trans('public.add_new_chapter') }}</span>
                                        <span class="font-12 text-gray d-block">
                                            {{ !empty($chapter->$relationMethod) ? count($chapter->$relationMethod) : 0 }} {{ trans('public.topic') }}

                                            @if($chapter->type != \App\Models\WebinarChapter::$chapterFile)
                                                | {{ convertMinutesToHourAndMinute($chapter->getDuration()) }} {{ trans('public.hr') }}
                                            @endif
                                        </span>
                                    </div>
                                </div>

                                <div class="d-flex align-items-center">

                                    @if($chapter->status != \App\Models\WebinarChapter::$chapterActive)
                                        <span class="disabled-content-badge mr-10">{{ trans('public.disabled') }}</span>
                                    @endif

                                    @if($chapter->type == \App\Models\WebinarChapter::$chapterFile and getFeaturesSettings('new_interactive_file'))

                                   <button type="button" class="add-course-content-btn mr-10" data-webinar-id="{{ $webinar->id }}" data-type="new_interactive_file" data-chapter="{{ !empty($chapter) ? $chapter->id :'' }}" data-toggle="tooltip" data-placement="top" data-html="true" title="{{ trans('update.new_interactive_file') }}">
                                        <i data-feather="cast" class=""></i>
                                    </button>

                                    @endif

                                    <button type="button" class="add-course-content-btn mr-10" data-webinar-id="{{ $webinar->id }}" data-type="{{ $type }}" data-chapter="{{ !empty($chapter) ? $chapter->id :'' }}" data-toggle="tooltip" data-placement="top" data-html="true" title="{{ trans('public.add_'.$type) }}">
                                        <i data-feather="plus" class=""></i>
                                    </button>

                                    <button type="button" class="js-add-chapter btn-transparent text-gray" data-webinar-id="{{ $webinar->id }}" data-type="{{ $type }}" data-chapter="{{ $chapter->id }}" data-locale="{{ mb_strtoupper($chapter->locale) }}">
                                        <i data-feather="edit-3" class="mr-10 cursor-pointer" height="20"></i>
                                    </button>

                                    <a href="/panel/chapters/{{ $chapter->id }}/delete" class="delete-action btn btn-sm btn-transparent text-gray">
                                        <i data-feather="trash-2" class="mr-10 cursor-pointer" height="20"></i>
                                    </a>

                                    <i data-feather="move" class="move-icon mr-10 cursor-pointer text-gray" height="20"></i>

                                    <i class="collapse-chevron-icon feather-chevron-up text-gray" data-feather="chevron-down" height="20" href="#collapseChapter{{ !empty($chapter) ? $chapter->id :'record' }}" aria-controls="collapseChapter{{ !empty($chapter) ? $chapter->id :'record' }}" data-parent="#chapterAccordion" role="button" data-toggle="collapse" aria-expanded="true"></i>
                                </div>
                            </div>

                            <div id="collapseChapter{{ !empty($chapter) ? $chapter->id :'record' }}" aria-labelledby="chapter_{{ !empty($chapter) ? $chapter->id :'record' }}" class=" collapse show" role="tabpanel">
                                <div class="panel-collapse text-gray">

                                    <div class="accordion-content-wrapper mt-15" id="chapterContentAccordion{{ !empty($chapter) ? $chapter->id :'' }}" role="tablist" aria-multiselectable="true">
                                        @if(!empty($chapter->$relationMethod) and count($chapter->$relationMethod))
                                            <ul class="draggable-content-lists draggable-lists-{{ $type }}-chapter-{{ $chapter->id }}" data-drag-class="draggable-lists-{{ $type }}-chapter-{{ $chapter->id }}" data-order-table="{{ $tableName }}">
                                                @foreach($chapter->$relationMethod as $row)
                                                    @include('web.default.panel.webinar.create_includes.accordions.'.$includeFileName ,[$variableName => $row , 'chapter' => $chapter])
                                                @endforeach
                                            </ul>
                                        @else
                                            @include(getTemplate() . '.includes.no-result',[
                                                'file_name' => $emptyState['file_name'],
                                                'title' => $emptyState['title'],
                                                'hint' => $emptyState['hint'],
                                            ])
                                        @endif
                                    </div>

                                </div>
                            </div>
                        </li>
                    @endforeach
                </ul>
            @else
                @include(getTemplate() . '.includes.no-result',[
                    'file_name' => $emptyState['file_name'],
                    'title' => $emptyState['title'],
                    'hint' => $emptyState['hint'],
                ])
            @endif
        </div>

    </div>
</div>
