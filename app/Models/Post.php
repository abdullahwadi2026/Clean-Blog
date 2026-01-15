<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    protected $fillable = [
        "author_id",
        "category_id",
        "title",
        "sub_title",
        "content",
        "image",
        "slug",
    ];
    public function author()
    {
        return $this->belongsTo(User::class, 'author_id')->withDefault();
    }
    public function category()
    {
        return $this->belongsTo(Category::class)->withDefault([
            'name' => 'Uncategorized'
        ]);
    }
    public function tags()
    {
        return $this->belongsToMany(Tag::class);
    }
    protected static function booted(): void
    {
        static::creating(function (Post $post) {
            $post->slug = Str::slug($post->title);
        });
        static::updating(function (Post $post) {
            $post->slug = Str::slug($post->title);
        });
    }
}
