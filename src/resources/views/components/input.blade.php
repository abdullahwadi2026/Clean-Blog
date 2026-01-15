@props(['type' => '', 'label' => '', 'name' => '', 'placeholder' => '', 'oldValue' => ''])

@if ($label)
    <label for="{{ $name }}" class="form-label">{{ $label }}</label>
@endif

<input type="{{ $type }}" class="form-control @error($name) is-invalid @enderror" id="{{ $name }}"
    name="{{ $name }}" placeholder="{{ $placeholder }}" value="{{ old($name, $oldValue) }}" {{ $attributes }}>
@error($name)
    <div class="invalid-feedback">{{ $message }}</div>
@enderror
