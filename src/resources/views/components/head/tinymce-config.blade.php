<script src="https://cdn.tiny.cloud/1/eqcpl0pa7r0l992tydva1pfkqqlj7exefkv00mxahdk3zgjb/tinymce/6/tinymce.min.js"
    referrerpolicy="origin" crossorigin="anonymous"></script>

<script>
    tinymce.init({
        selector: 'textarea#myeditorinstance',
        height: 400,
        menubar: true,
        plugins: [
            'advlist autolink lists link image charmap print preview anchor',
            'searchreplace visualblocks code fullscreen',
            'insertdatetime media table paste code help wordcount',
            'emoticons pagebreak save directionality',
            'importcss importword exportword exportpdf',
            'quickbars autosave'
        ],
        toolbar: 'undo redo | styleselect | bold italic underline strikethrough | ' +
            'alignleft aligncenter alignright alignjustify | ' +
            'bullist numlist outdent indent | link image media table | ' +
            'forecolor backcolor | charmap emoticons | code fullscreen preview | ' +
            'pagebreak save',
        toolbar_mode: 'wrap',
        autosave_interval: '30s',
        quickbars_selection_toolbar: 'bold italic | quicklink h2 h3 blockquote',
        branding: false,
        directionality: 'ltr',
        content_style: `
        @import url('https://fonts.googleapis.com/css2?family=Poppins&display=swap');
        body {
            font-family: 'Poppins', system-ui, sans-serif;
            font-size: 14px;
            line-height: 1.6;
        }`,
        skin: 'oxide',
        setup: function(editor) {
            editor.on('init', function() {
                // تعديل CSS داخل iframe toolbar أو floating panels
                const css = document.createElement('style');
                css.innerHTML = `
                .tox, .tox-toolbar, .tox-toolbar__primary, .tox-toolbar__overflow, .tox-menubar, .tox-menubar__item {
                    font-family: 'Poppins', system-ui, sans-serif !important;
                }
            `;
                document.head.appendChild(css);
            });
        }
    });
</script>
