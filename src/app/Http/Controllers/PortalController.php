<?php

namespace App\Http\Controllers;

use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Contracts\View\View;
use App\Models\Contact;

class PortalController extends Controller
{

    function index(): View
    {
        $posts = Post::with('category', 'author')->latest()->simplePaginate(4);
        // create new post



        return view("blog.index", compact('posts'));
    }

    function about(): View
    {
        return view("blog.about");
    }

    function contact(): View
    {
        return view("blog.contact");
    }

    function contact_store(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required|email',
            'phone' => 'required',
            'message' => 'required',
        ]);

        Contact::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'message' => $request->message,
        ]);
        flash()->success("Message sent successfully");
        return redirect()->back();
    }

    function post(Post $post): View
    {
        return view("blog.post", compact('post'));
    }

    function category(Category $category)
    {
        $posts = $category->posts()->latest()->simplePaginate(4);
        return view('blog.category', compact('category', 'posts'));
    }

    function author(User $user)
    {
        $posts = $user->posts()->latest()->simplePaginate(4);
        return view('blog.author', compact('user', 'posts'));
    }
}
