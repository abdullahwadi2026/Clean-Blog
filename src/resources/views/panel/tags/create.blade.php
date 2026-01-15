<x-panel title="Control Panel">
    <!-- Page Heading -->
    <div class="d-flex justify-content-between align-items-center mb-4 ">
        <h1 class="h3 text-gray-800">Add new tag</h1>
        <a href="{{ route('admin.tags.index') }}" class="btn btn-primary">
            <i class="fas fa-long-arrow-alt-left"></i> All Tags
        </a>
    </div>
    <div class="card">
        <div class="card-body">
            <form action="{{ route('admin.tags.store') }}" method="POST">
                @csrf
                <div class="mb-3">
                    <x-input type="text" name="name" label="Tag name" placeholder="Enter tag name" />
                </div>
                <button class="btn btn-primary"><i class="fas fa-save"></i> Save</button>
            </form>
        </div>
    </div>
</x-panel>
