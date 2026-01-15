<x-panel title="Control Panel">
    @push('css')
        <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    @endpush
    <!-- Page Heading -->
    <div class="d-flex justify-content-between align-items-center mb-4 ">
        <h1 class="h3 text-gray-800">Edit post</h1>
        <a href="{{ route('admin.posts.index') }}" class="btn btn-primary">
            <i class="fas fa-long-arrow-alt-left"></i> All Posts
        </a>
    </div>
    <div class="card">
        <div class="card-body">
            <form action="{{ route('admin.posts.update', $post->id) }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="row">
                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-6 mb-3">
                                <x-input type="text" name="title" :oldValue="$post->title" label="Post title"
                                    placeholder="Enter post title" />
                            </div>
                            <div class="col-6 mb-3">
                                <x-input type="text" name="sub_title" :oldValue="$post->sub_title" label="Post sub title"
                                    placeholder="Enter post sub title" />
                            </div>
                        </div>

                        <div class="mb-3">
                            <x-forms.tinymce-editor name="content" :oldValue="$post->content" />
                        </div>

                        <div class="mb-3">
                            <label for="category" class="label-control">Category</label>
                            <select name="category_id" id="category"
                                class="form-control @error('category') is-invalid @enderror">
                                <option value="" disabled selected>Select categories</option>
                                @forelse ($categories as $category)
                                    <option value="{{ $category->id }}" @selected(old('category_id', $post->category_id) === $category->id)>
                                        {{ $category->name }}
                                    </option>
                                @empty
                                @endforelse
                            </select>
                            @error('category_id')
                                <div class="invalid-feedback">{{ $message }}</div>
                            @enderror
                        </div>
                        <div class="mb-3">
                            <label class="label-control">Tags</label>
                            <div>
                                @foreach ($tags as $tag)
                                    <div>
                                        <label>
                                            <input type="checkbox" name="tags[]" value="{{ $tag->id }}"
                                                @if (in_array($tag->id, old('tags', $post->tags->pluck('id')->toArray()))) checked @endif>
                                            {{ $tag->name }}
                                        </label>
                                    </div>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="mb-3">
                            <label class="d-block" for="image">
                                Post Image
                                @if ($post->image)
                                    <img id="preview" class="img-thumbnail" width="100%"
                                        src="{{ asset($post->image) }}"
                                        style="width: 100%; height: 300px; object-fit: cover;" alt="">
                                @else
                                    <img id="preview" class="img-thumbnail" width="100%"
                                        src="{{ asset('img/post-sample-image.png') }}"
                                        style="width: 100%; height: 300px; object-fit: cover;" alt="">
                                @endif
                            </label>
                            <div class="d-none">
                                <x-input type="file" name="image" />
                            </div>
                        </div>
                    </div>
                </div>

                <button class="btn btn-primary"><i class="fas fa-save"></i> Update</button>
            </form>
        </div>
    </div>
    @push('js')
        <x-head.tinymce-config />
        <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
    @endpush
</x-panel>
