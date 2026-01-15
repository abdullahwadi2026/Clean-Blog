<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\PostController;
use App\Http\Controllers\Admin\TagController;
use App\Http\Controllers\Admin\AdminController;
use App\Http\Controllers\Admin\CategoryController;

Route::prefix("admin-panel")->middleware('auth')->name('admin.')->group(function () {
    Route::get("/", [AdminController::class, 'index'])->name('index');
    Route::get("/settings", [AdminController::class, 'settings'])->name('settings');
    Route::put("/settings", [AdminController::class, 'save']);
    Route::get("/profile", [AdminController::class, 'profile'])->name('profile');
    Route::put("/profile", [AdminController::class, 'profile_update'])->name('profile_update');
    Route::get("/contacts-messages", [AdminController::class, 'contacts'])->name('contacts');
    Route::get("/contacts-messages/{id}", [AdminController::class, 'contacts_show'])->name('contacts_show');
    Route::delete("/contacts-messages/{id}", [AdminController::class, 'contacts_destroy'])->name('contacts_destroy');
    Route::post("/contacts-messages/{id}", [AdminController::class, 'contacts_replay'])->name('contacts_replay');
    // Categories CRUD Resource
    Route::resource('categories', CategoryController::class);
    Route::resource('tags', TagController::class);
    Route::resource('posts', PostController::class);
});
