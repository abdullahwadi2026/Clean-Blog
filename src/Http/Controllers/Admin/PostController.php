<?php

namespace App\Http\Controllers\Admin;

use App\Models\Tag;
use App\Models\Post;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Requests\PostRequest;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $posts = Post::with('author', 'category', 'tags')->latest()->paginate(10);
        return view("panel.posts.index", compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = Category::all();
        $tags = Tag::all();
        return view("panel.posts.create", compact('categories', 'tags'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(PostRequest $request)
    {
        $path = $request->file('image')->store('uploads', 'custom');
        $post = Post::create([
            'title' => $request->title,
            'sub_title' => $request->sub_title,
            'content' => $request->content,
            'image' => $path,
            'category_id' => $request->category_id,
            'author_id' => 1,
        ]);
        $post->tags()->attach($request->tags);
        flash()->success("Post created successfully");
        return redirect()->route('admin.posts.index');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Post $post)
    {
        $categories = Category::all();
        $tags = Tag::all();
        return view("panel.posts.edit", compact('post', 'categories', 'tags'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(PostRequest $request, Post $post)
    {
        if ($request->hasFile('image')) {
            File::delete($post->image);

            $path = $request->file('image')->store('uploads', 'custom');

            $post->image = $path;
        }


        $post->update([
            'title' => $request->title,
            'sub_title' => $request->sub_title,
            'content' => $request->content,
            'category_id' => $request->category_id,
            'author_id' => 1,
        ]);

        $post->tags()->sync($request->tags);

        flash()->success("Post updated successfully");
        return redirect()->route("admin.posts.index");
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Post $post)
    {
        File::delete($post->image);
        $post->delete();
        flash()->success("Post deleted successfully");
        return redirect()->route('admin.posts.index');
    }
}
