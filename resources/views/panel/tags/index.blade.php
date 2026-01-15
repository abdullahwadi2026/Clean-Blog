    @push('css')
        <link href="{{ asset('control/vendor/datatables/dataTables.bootstrap4.min.css') }}" rel="stylesheet">
    @endpush



    <x-panel title="Control Panel">
        <!-- Page Heading -->
        <div class="d-flex justify-content-between align-items-center mb-4 ">
            <h1 class="h3 text-gray-800">All tags</h1>
            <a href="{{ route('admin.tags.create') }}" class="btn btn-primary">
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
                                <th>Name</th>
                                <th>Posts count</th>
                                <th>Created At</th>
                                <th>Updated At</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <th>ID</th>
                                <th>Name</th>
                                <th>Posts count</th>
                                <th>Created At</th>
                                <th>Updated At</th>
                                <th>Actions</th>
                            </tr>
                        </tfoot>
                        <tbody>
                            @forelse ($tags as $tag)
                                <tr>
                                    <td>{{ $tag->id }}</td>
                                    <td>{{ $tag->name }}</td>
                                    <td>{{ $tag->posts->count() }}</td>
                                    <td>{{ $tag->created_at->diffForHumans() }}</td>
                                    <td>{{ $tag->updated_at->diffForHumans() }}</td>
                                    <td>
                                        <div class="d-flex align-items-center gap-2">
                                            <a href="{{ route('admin.tags.edit', $tag->id) }}"
                                                class="btn btn-sm btn-primary d-flex align-items-center mr-2">
                                                <i class="fas fa-edit mr-1"></i> Edit
                                            </a>

                                            <form action="{{ route('admin.tags.destroy', $tag->id) }}" method="POST">
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
                                    <td colspan="6">No tags</td>
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
