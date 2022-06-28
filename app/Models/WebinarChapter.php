<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Astrotomic\Translatable\Contracts\Translatable as TranslatableContract;
use Astrotomic\Translatable\Translatable;

class WebinarChapter extends Model implements TranslatableContract
{
    use Translatable;

    protected $table = 'webinar_chapters';
    public $timestamps = false;
    protected $dateFormat = 'U';
    protected $guarded = ['id'];

    static $chapterFile = 'file';
    static $chapterSession = 'session';
    static $chapterTextLesson = 'text_lesson';

    static $chapterActive = 'active';
    static $chapterInactive = 'inactive';

    static $chapterTypes = ['file', 'session', 'text_lesson'];

    static $chapterStatus = ['active', 'inactive'];

    public $translatedAttributes = ['title'];

    public function getTitleAttribute()
    {
        return getTranslateAttributeValue($this, 'title');
    }


    public function sessions()
    {
        return $this->hasMany('App\Models\Session', 'chapter_id', 'id');
    }

    public function files()
    {
        return $this->hasMany('App\Models\File', 'chapter_id', 'id');
    }

    public function textLessons()
    {
        return $this->hasMany('App\Models\TextLesson', 'chapter_id', 'id');
    }

    public function quizzes()
    {
        return $this->hasMany('App\Models\Quiz', 'chapter_id', 'id');
    }

    public function webinar()
    {
        return $this->hasOne('App\Models\Webinar', 'webinar_id', 'id');
    }

    public function getDuration()
    {
        $type = $this->type;
        $time = 0;

        switch ($type) {
            case self::$chapterFile:
                $time = 0;
                break;
            case self::$chapterSession:
                $time = $this->sessions->sum('duration');
                break;
            case self::$chapterTextLesson:
                $time = $this->textLessons->sum('study_time');
                break;
        }

        return $time;
    }


    public function getTopicsCount()
    {
        $type = $this->type;
        $count = 0;

        switch ($type) {
            case self::$chapterFile:
                $count = $this->files->count();
                break;
            case self::$chapterSession:
                $count = $this->sessions->count();
                break;
            case self::$chapterTextLesson:
                $count = $this->textLessons->count();
                break;
        }

        return $count;
    }
}
