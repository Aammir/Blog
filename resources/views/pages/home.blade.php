@extends('homelayout')
@section('page-title','Home')
@section('content')
<?php /* dd($nav['0']['title']);foreach($nav as $link){
     dd($link->slug);
};*/?>
<?php //  dd($request->q);?>
<div class="pageheader-content row">
    <div class="col-full">
        <div class="featured">
            <div class="featured__column featured__column--big">
                                <div class="entry" style="
				@if(!empty($home1->image)) background-image:url('images/{{ $home1->image }}')
				@else background-image:url('images/user-def.jpg')
				@endif
				;">

                    <div class="entry__content">
                        @foreach($home1->category as $category)
                        <span class="entry__category"><a href="{{url('/categories/'.strtolower($category->slug))}}">{{ucfirst($category->name)}}</a></span>
                        @endforeach
                        <h1><a href="{{url('/posts/'.$home1->slug)}}" title="">{{ucfirst($home1->title)}}</a></h1>

                        <div class="entry__info">
                            <a href="#Author-link" class="entry__profile-pic">
                                <img class="avatar" src="{{ url('/images/user-def.jpg') }}" alt="Author">
                            </a>

                            <ul class="entry__meta">
                                <li><a href="#Author-link">John Doe</a></li>
                                <li>{{$home1->created_at->format('j F, Y')}}</li>
                            </ul>
                        </div>
                    </div> <!-- end entry__content -->

                </div> <!-- end entry -->
            </div> <!-- end featured__big -->

            <div class="featured__column featured__column--small">

                <div class="entry" style="
				@if(!empty($home2->image)) background-image:url('images/{{ $home2->image }}')
				@else background-image:url('images/user-def.jpg')
				@endif
				;">

                    <div class="entry__content">
                        @foreach($home2->category as $category)
                        <span class="entry__category"><a href="{{url('/categories/'.strtolower($category->slug))}}">{{ucfirst($category->name)}}</a></span>
                        @endforeach

                        <h1><a href="{{url('/posts/'.$home2->slug)}}" title="">{{ucfirst($home2->title)}}</a></h1>

                        <div class="entry__info">
                            <a href="#Author" class="entry__profile-pic">
                                <img class="avatar" src="#Author-img" alt="#Author Name">
                            </a>

                            <ul class="entry__meta">
                                <li><a href="#Author">John Doe</a></li>
                                <li>{{$home2->created_at->format('j F, Y')}}</li>
                            </ul>
                        </div>
                    </div> <!-- end entry__content -->

                </div> <!-- end entry -->

                <div class="entry" style="
				@if(!empty($home3->image)) background-image:url('images/{{ $home3->image }}')
				@else background-image:url('images/user-def.jpg')
				@endif
				">

                    <div class="entry__content">
					@if(!empty($home3->category))
                        @foreach($home3->category as $category)
                        <span class="entry__category"><a href="{{url('/categories/'.strtolower($category->slug))}}">{{ucfirst($category->name)}}</a></span>
                        @endforeach
					@endif
                        <h1><a href="{{url('/posts/'.$home3->slug)}}" title="{{$home3->title}}">{{$home3->title}}</a></h1>

                        <div class="entry__info">
                            <a href="#Author {{url('/posts/'.$home3->slug)}}" class="entry__profile-pic">
                                <img class="avatar" src="#Author-img" alt="#Author Name{{$home3->title}}">
                            </a>

                            <ul class="entry__meta">
                                <li><a href="#author">John Doe</a></li>
                                <li>{{$home3->created_at->format('j F, Y')}}</li>
                            </ul>
                        </div>
                    </div> <!-- end entry__content -->

                </div> <!-- end entry -->

            </div> <!-- end featured__small -->
        </div> <!-- end featured -->

    </div> <!-- end col-full -->
</div> <!-- end pageheader-content row -->

</section> <!-- end s-pageheader -->

<!-- s-content
================================================== -->
<section class="s-content">

    <div class="row masonry-wrap">
        <div class="masonry">

            <div class="grid-sizer"></div>
            @foreach($posts as $post)
            <?php // dd($post->category) ?>
            <article class="masonry__brick entry format-standard" data-aos="fade-up">

                <div class="entry__thumb">
                    <a href="{{url('/posts/'.$post->slug)}}">
                        <img src="{{url('images/'.($post->image=='' || $post->image=='n/a'?'default.jpg':$post->image))}}" title="{{$post->title}}" alt="{{$post->title}}"/>
                    </a>
                </div>

                <div class="entry__text">
                    <div class="entry__header">

                        <div class="entry__date">
                            <a href="#">{{$post->created_at->format('j F, Y')}}</a>
                        </div>
                        <h1 class="entry__title">
                            <a href="{{url('/posts/'.$post->slug)}}">{{ucfirst($post->title)}}</a>
                        </h1>
                    </div>
                    <div class="entry__excerpt">
                        <p>
                            {!! substr($post->body,0,90).'....' !!}
                        </p>
                    </div>

                    @if($post->category->count() > 0)
                    <div class="entry__meta">
                        <span class="entry__meta-links">
                            @foreach ($post->category as $category)
                            <a href="{{url('/categories/'.strtolower($category->slug))}}">{{ucfirst($category->name)}}</a>
                            @endforeach
                        </span>
                    </div>
                    @endif
                </div>

            </article> <!-- end article -->
            @endforeach
        </div> <!-- end masonry -->
    </div> <!-- end masonry-wrap -->

    <div class="row">
        <div class="col-full">
            {!! $posts->links() !!}
        </div>
    </div>

</section> <!-- s-content -->
@endsection
