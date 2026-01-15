<x-panel title="Contacts Messages">
    <h1 class="h3 mb-4 text-gray-800">Contacts Messages</h1>
    <div class="card">
        <div class="card-body">
            <h2>Message From: {{ $message->name }}</h2>
            <p>Message: {{ $message->message }}</p>
            <p>Phone: {{ $message->phone }}</p>
            <p>Email: {{ $message->email }}</p>
            <hr />
            <h3>Reply To: </h3>
            <form action="{{ route('admin.contacts_replay', $message->id) }}" method="POST">
                @csrf
                <div class="mb-3">
                    <label for="reply">Reply</label>
                    <textarea class="form-control" name="reply" id="reply" rows="5"></textarea>
                    <button class="btn btn-primary mt-3 px-3"><i class="fas fa-paper-plane"></i> Reply</button>
                </div>
            </form>
        </div>
    </div>
</x-panel>
