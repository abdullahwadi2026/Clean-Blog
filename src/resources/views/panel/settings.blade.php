<x-panel title="Settings">
    @push('css')
        <style>
            #delete-image {
                position: absolute;
                width: 20px;
                height: 20px;
                font-size: 16px;
                right: 10px;
                top: 10px;
                background-color: #f00;
                color: white;
                padding: 5px;
                border-radius: 50%;
                cursor: pointer;
                display: flex;
                justify-content: center;
                align-items: center;
            }
        </style>
    @endpush
    <h1 class="h3 mb-4 text-gray-800">Settings</h1>
    <div class="card">
        <div class="card-body">
            <form action="{{ route('admin.settings') }}" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="row">
                    <div class="col-9">
                        <div class="mb-3">
                            <x-input type="text" name="site_name" :oldValue="$new_settings['site_name'] ?? ''" label="Site name"
                                placeholder="Enter site name" />
                        </div>

                        <div class="row">
                            <div class="col-md-6 mb-3">
                                <x-input type="text" :oldValue="$new_settings['facebook'] ?? ''" name="facebook" label="Facebook"
                                    placeholder="Enter facebook URL" />
                            </div>
                            <div class="col-md-6 mb-3">
                                <x-input type="text" :oldValue="$new_settings['twitter'] ?? ''" name="twitter" label="Twitter"
                                    placeholder="Enter twitter URL" />
                            </div>
                            <div class="col-md-6 mb-3">
                                <x-input type="text" :oldValue="$new_settings['github'] ?? ''" name="github" label="Github"
                                    placeholder="Enter github URL" />
                            </div>
                            <div class="col-md-6 mb-3">
                                <x-input type="text" :oldValue="$new_settings['linkedin'] ?? ''" name="linkedin" label="Linkedin"
                                    placeholder="Enter linkedin URL" />
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="copyright">Copyright</label>
                            <textarea class="form-control" name="copyright" id="copyright" placeholder="Enter Copyright" rows="5">{{ $new_settings['copyright'] ?? '' }}</textarea>
                        </div>
                    </div>
                    <div class="col-3">
                        <div class="mb-3">
                            <label class="d-block">
                                Site logo
                                <img id="preview" class="img-thumbnail" width="100%"
                                    src="{{ $new_settings['site_logo'] ? asset($new_settings['site_logo']) : asset('img/site-sample-image.png') }}"
                                    style="width: 100%; height: 300px; object-fit: cover;" alt="">
                            </label>
                            <div class="d-none">
                                <x-input type="file" name="site_logo" />
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
                    $('#site_logo').click();
                });


                $('#site_logo').on('change', function() {
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
            let btn = document.querySelector('#delete-image');
            btn.onclick = function() {

            }
            document.q
        </script>
    @endpush
</x-panel>
