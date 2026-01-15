<x-panel title="Control Panel">
    <!-- Page Heading -->
    <div class="d-flex justify-content-between align-items-center mb-4 ">
        <h1 class="h3 text-gray-800">Add new category</h1>
        <a href="{{ route('admin.categories.index') }}" class="btn btn-primary">
            <i class="fas fa-long-arrow-alt-left"></i> All Categories
        </a>
    </div>
    <div class="card">
        <div class="card-body">
            <form action="{{ route('admin.categories.store') }}" method="POST">
                @csrf
                <div class="mb-3">
                    <x-input type="text" name="name" label="Category name" placeholder="Enter category name" />
                </div>
                <button class="btn btn-primary"><i class="fas fa-save"></i> Save</button>
            </form>
        </div>
    </div>
</x-panel>
