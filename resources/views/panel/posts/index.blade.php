    @push('css')
        <link href="{{ asset('control/vendor/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet">
    @endpush



    <x-panel title="Control Panel">
        <!-- Page Heading -->
        <div class="d-flex justify-content-between align-items-center mb-4 ">
            <h1 class="h3 text-gray-800">All posts</h1>
            <a href="{{ route('admin.posts.create') }}" class="btn btn-primary">
                <i class="fas fa-plus"></i> Add new
            </a>
        </div>
        <div class="card">
            <div class="card-body">
                <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Image</th>
                                <th>Title</th>
                                <th>Sub Title</th>
                                <th>Author</th>
                                <th>Category</th>
                                <th>Created At</th>
                                <th>Updated At</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>Image</th>
                                <th>Title</th>
                                <th>Sub Title</th>
                                <th>Author</th>
                                <th>Category</th>
                                <th>Created At</th>
                                <th>Updated At</th>
                                <th>Actions</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            @forelse ($posts as $post)
                                <tr>
                                    <td>{{ $post->id }}</td>
                                    <td><img width="80" src="{{ asset($post->image) }}" alt=""></td>
                                    <td>{{ $post->title }}</td>
                                    <td>{{ $post->sub_title }}</td>
                                    <td>{{ $post->author->name }}</td>
                                    <td>{{ $post->category->name }}</td>
                                    <td>{{ $post->created_at->diffForHumans() }}</td>
                                    <td>{{ $post->updated_at->diffForHumans() }}</td>
                                    <td>
                                        <div class="d-flex align-items-center gap-2">
                                            <a href="{{ route('admin.posts.edit', $post->id) }}"
                                                class="btn btn-sm btn-primary d-flex align-items-center mr-2">
                                                <i class="fas fa-edit mr-1"></i> Edit
                                            </a>

                                            <form action="{{ route('admin.posts.destroy', $post->id) }}"
                                                method="POST">
                                                @csrf
                                                @method('DELETE')
                                                <button type="submit" onclick="return confirm('Are you sure?')"
                                                    class="btn btn-sm btn-danger btn-delete">
                                                    <i class="fas fa-trash-alt mr-1"></i> Delete
                                                </button>

                                            </form>
                                        </div>
                                    </td>
                                @empty
                                    <td colspan="9">No posts</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </x-panel>



    @push('js')
        <script src="{{ asset('control/vendor/datatables/jquery.dataTables.min.js') }}"></script>
        <script src="{{ asset('control/vendor/datatables/dataTables.bootstrap4.min.js') }}"></script>
        <script src="{{ asset('control/js/demo/datatables-demo.js') }}"></script>
    @endpush
