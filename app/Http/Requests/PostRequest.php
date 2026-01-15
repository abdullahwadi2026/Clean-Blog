<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PostRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        if ($this->isMethod('post')) {
            return [
                'title' => 'required|unique:posts,title',
                'content' => 'required',
                'image' => 'required|image',
                'category_id' => 'required',
            ];
        } else {
            return [
                'title' => 'required|unique:posts,title,' . $this->post->id,
                'content' => 'required',
                'image' => 'nullable|image',
                'category_id' => 'required',
            ];
        }
    }
}
