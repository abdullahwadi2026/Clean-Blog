<x-panel title="Control Panel">
    @push('css')
        <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    @endpush
    <!-- Page Heading -->
    <div class="d-flex justify-content-between align-items-center mb-4 ">
        <h1 class="h3 text-gray-800">Add new post</h1>
        <a href="{{ route('admin.posts.index') }}" class="btn btn-primary">
            <i class="fas fa-long-arrow-alt-left"></i> All Posts
        </a>
    </div>
    <div class="card">
        <div class="card-body">
            <form action="{{ route('admin.posts.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="row">
                    <div class="col-md-9">
                        <div class="row">
                            <div class="col-6 mb-3">
                                <x-input type="text" name="title" label="Post title"
                                    placeholder="Enter post title" />
                            </div>
                            <div class="col-6 mb-3">
                                <x-input type="text" name="sub_title" label="Post sub title"
                                    placeholder="Enter post sub title" />
                            </div>
                        </div>

                        <div class="mb-3">
                            <x-forms.tinymce-editor />
                        </div>

                        <div class="mb-3">
                            <label for="category" class="label-control">Category</label>
                            <select name="category_id" id="category"
                                class="form-control @error('category') is-invalid @enderror">
                                <option value="" disabled selected>Select categories</option>
                                @forelse ($categories as $category)
                                    <option value="{{ $category->id }}" @selected($category->id === old('category_id'))>
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
                                            <input type="checkbox" name="tags[]" value="{{ $tag->id }}">
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
                                <img id="preview" class="img-thumbnail" width="100%"
                                    src="{{ asset('img/post-sample-image.png') }}"
                                    style="width: 100%; height: 300px; object-fit: cover;" alt="">
                            </label>
                            <div class="d-none">
                                <x-input type="file" name="image" />
                            </div>
                        </div>
                    </div>
                </div>

                <button class="btn btn-primary"><i class="fas fa-save"></i> Save</button>
            </form>
        </div>
    </div>
    @push('js')
        <x-head.tinymce-config />
        <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>
        <script>
            $(document).ready(function() {
                $('#image').on("change", function() {
                    var file = this.files[0];
                    var reader = new FileReader();
                    reader.onload = function(e) {
                        $('#preview').attr('src', e.target.result);
                    };
                    reader.readAsDataURL(file);
                });
            });
        </script>
    @endpush
</x-panel>
