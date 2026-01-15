<x-panel title="Settings">
    <h1 class="h3 mb-4 text-gray-800">{{ $user->name }}</h1>
    <div class="card">
        <div class="card-body">
            <form action="{{ route('admin.profile_update') }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="row">
                    <div class="col-9">
                        <div class="row">
                            <div class="col-6">
                                <div class="mb-3">
                                    <x-input type="email" name="email" :oldValue="$user->email ?? ''" label="Admin email"
                                        placeholder="Enter admin email" disabled />
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="mb-3">
                                    <x-input type="text" name="username" :oldValue="$user->username ?? ''" label="Admin username"
                                        placeholder="Enter admin username" disabled />
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <x-input type="text" name="name" :oldValue="$user->name ?? ''" label="Admin name"
                                placeholder="Enter admin name" />
                        </div>

                        <div class="mb-3">
                            <x-input type="text" name="phone" :oldValue="$user->phone" label="Admin phone"
                                placeholder="Enter admin phone" />
                        </div>
                        <div class="mb-3">
                            <x-input type="password" name="password" label="Admin password"
                                placeholder="Enter admin password" />
                        </div>
                        <div class="mb-3">
                            <x-input type="password" name="password_confirmation" label="Admin confirm password"
                                placeholder="Enter admin confirm password" />
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="mb-3">
                            <label class="d-block">
                                Avatar
                                <img id="preview" class="img-thumbnail" width="100%"
                                    src="{{ $user->avatar ? asset($user->avatar) : asset('control/img/undraw_profile.svg') }}"
                                    style="width: 100%; height: 400px; object-fit: cover; object-position: top;"
                                    alt="">
                            </label>
                            <div class="d-none">
                                <x-input type="file" name="avatar" id="avatar" />
                            </div>
                        </div>
                    </div>
                </div>

                <button class="btn btn-primary"><i class="fas fa-save"></i> Save</button>
            </form>
        </div>
    </div>
    @push('js')
        <script>
            $(document).ready(function() {

                $('#preview').on('click', function() {
                    $('#avatar').click();
                });

                $('#avatar').on('change', function() {
                    var file = this.files[0];
                    if (file) {
                        var reader = new FileReader();
                        reader.onload = function(e) {

                            $('#preview').attr('src', e.target.result);
                        };
                        reader.readAsDataURL(file);
                    }
                });
            });
        </script>
    @endpush
</x-panel>
