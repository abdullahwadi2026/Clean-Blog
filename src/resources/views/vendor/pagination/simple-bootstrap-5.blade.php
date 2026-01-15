@if ($paginator->hasPages())
    <div class="d-flex justify-content-end mb-4">


        @if (!$paginator->onFirstPage())
            <a class="page-link btn btn-primary text-uppercase" href="{{ $paginator->previousPageUrl() }}" rel="prev">
                {!! __('pagination.previous') !!}
            </a>
        @endif


        @if ($paginator->hasMorePages())
            <a class="page-link btn btn-primary text-uppercase" href="{{ $paginator->nextPageUrl() }}"
                rel="next">{!! __('pagination.next') !!}</a>
        @endif
    </div>
@endif
