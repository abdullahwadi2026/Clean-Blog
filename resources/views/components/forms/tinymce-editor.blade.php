@props(['name' => '', 'oldValue' => ''])
<label for="content" class="label-control">Post content</label>
<textarea id="myeditorinstance" class="@error('content') is-invalid @enderror" name="content" id="content"
    placeholder="Enter post content" rows="5">{{ old($name, $oldValue) }}</textarea>
@error('content')
    <div class="invalid-feedback">{{ $message }}</div>
@enderror
