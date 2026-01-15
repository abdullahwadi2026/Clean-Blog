<?php

use App\Http\Controllers\PortalController;
use Illuminate\Support\Facades\Route;

Route::controller(PortalController::class)->group(function () {
    Route::get('/', 'index')->name('index');
    Route::get('/about', 'about')->name('about');
    Route::get('/contact', 'contact')->name('contact');
    Route::post('/contact', 'contact_store');
    Route::get('/post/{post:slug}', 'post')->name('post');
    Route::get('/category/{category:slug}', 'category')->name('category');
    Route::get('/author/{user:username}', 'author')->name('author');
});
