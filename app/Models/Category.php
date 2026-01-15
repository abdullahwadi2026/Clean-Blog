<?php

namespace App\Models;

use Illuminate\Support\Str;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = [
        "name",
        "slug",
    ];

    public function posts()
    {
        return $this->hasMany(Post::class);
    }

    protected static function booted(): void
    {
        static::creating(function (Category $category) {
            $category->slug = Str::slug($category->name);
        });
        static::updating(function (Category $category) {
            $category->slug = Str::slug($category->name);
        });
    }
}
