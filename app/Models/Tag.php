<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;

class Tag extends Model
{
    protected $fillable = [
        "name",
        "slug",
    ];

    public function posts()
    {
        return $this->belongsToMany(Post::class);
    }

    protected static function booted(): void
    {
        static::creating(function (Tag $tag) {
            $tag->slug = Str::slug($tag->name);
        });
        static::updating(function (Tag $tag) {
            $tag->slug = Str::slug($tag->name);
        });
    }
}
