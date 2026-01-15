<?php

namespace App\Http\Controllers\Auth;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{
    function login()
    {
        return view('panel.auth.login');
    }
    function store(Request $request)
    {
        $request->validate([
            'user' => 'required',
            'password' => 'required'
        ]);
        $user = User::where("email", $request->user)->orWhere("username", $request->user)->orWhere("phone", $request->user)->first();
        if (!$user) {
            return back()->withErrors([
                'user' => 'The provided user does not match our records.'
            ])->onlyInput('user');
        } else {
            if (Hash::check($request->password, $user->password)) {
                Auth::login($user, $request->remember);
                return redirect()->intended(route('admin.index'));
            } else {
                return back()->withErrors([
                    'password' => 'The provided password does not match our records.'
                ])->onlyInput('user');
            }
        }
    }

    function logout(Request $request)
    {
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/login');
    }
}
