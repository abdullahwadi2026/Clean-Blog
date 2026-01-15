<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use App\Models\Contact;
use App\Models\Setting;
use Illuminate\View\View;
use App\Mail\ContactReply;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Mail;

class AdminController extends Controller
{
    function index(): View
    {
        return view("panel.index");
    }

    function settings()
    {
        $settings = Setting::select('key', 'value')->get()->toArray();
        $new_settings = [];
        foreach ($settings as $setting) {
            $new_settings[$setting['key']] = $setting['value'];
        }
        $defaults = [
            'site_name' => '',
            'facebook' => '',
            'twitter' => '',
            'github' => '',
            'linkedin' => '',
            'copyright' => '',
            'site_logo' => ''
        ];
        $new_settings = array_merge($defaults, $new_settings);
        return view('panel.settings', compact('new_settings'));
    }
    function save(Request $request)
    {
        $data = $request->except('_token', '_method', 'site_logo');
        if ($request->hasFile('site_logo')) {
            $data['site_logo'] = $request->file('site_logo')->store('uploads', 'custom');
        }
        foreach ($data as $key => $value) {
            Setting::updateOrCreate(
                ['key' => $key],
                ['value' => $value]
            );
        }
        flash()->success("Settings saved successfully");
        return redirect()->back();
    }

    function contacts()
    {
        $messages = Contact::whereNull('reded_at')->latest()->get();
        return view('panel.messages.contacts', compact('messages'));
    }

    function contacts_show($id)
    {
        $message = Contact::findOrFail($id);
        $message->update([
            'reded_at' => now(),
        ]);
        return view('panel.messages.message', compact('message'));
    }

    function contacts_destroy($id)
    {
        // $message = Contact::findOrFail($id);
        // Contact::delete($message);
    }
    function contacts_replay(Request $request, $id)
    {
        $message = Contact::findOrFail($id);
        Mail::to($message->email)->send(new ContactReply($message->name, $request->reply));
        flash()->success("Reply message send successfully");
        return redirect()->back();
    }

    function profile()
    {
        $user = Auth::user();
        return view('panel.profile', compact('user'));
    }
    function profile_update(Request $request)
    {
        $request->validate([
            'name' => 'required',
            'phone' => 'required',
            'password' => 'nullable|min:8|confirmed',
            'avatar' => 'nullable|image|mimes:png,jpg,svg,jpeg',
        ]);

        $user = Auth::user();

        $data = $request->only(['name', 'phone']);

        if ($request->password) {
            $data['password'] = $request->password;
        }

        if ($request->hasFile('avatar')) {
            $data['avatar'] = $request->file('avatar')->store('uploads', 'public');
        }

        $user->update($data);

        return redirect()->back()->with('success', 'Profile updated successfully!');
    }
}
