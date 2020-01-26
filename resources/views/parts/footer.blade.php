<!-- s-footer
     ================================================== -->
<footer class="s-footer">
    <div class="s-footer__main">
        <div class="row">

            <div class="col-two md-four mob-full s-footer__sitelinks">

                <h4>Quick Links</h4>

                <ul class="s-footer__linklist">
                    @foreach($nav as $link)
                    <li><a href="{{strtolower(url($link->slug))}}" title="{{ucfirst($link->title)}}">{{ucfirst($link->title)}}</a></li>
                    @endforeach
                </ul>

            </div> <!-- end s-footer__sitelinks -->

            <div class="col-two md-four mob-full s-footer__archives">

                <h4>Categories</h4>

                <ul class="s-footer__linklist">
                    @foreach($categories as $category)
                    <li><a href="{{strtolower(url('/categories/'.$category->slug))}}">{{ucfirst($category->name)}}</a></li>
                    @endforeach
                </ul>

            </div> <!-- end s-footer__archives -->

            <div class="col-two md-four mob-full s-footer__social">

                <h4>Social</h4>

                <ul class="s-footer__linklist">
                    @foreach($SocialMedia as $sm)
                    <li>
                        <a href="{{$sm->url}}" title="{{ucfirst($sm->name)}}">{{ucfirst($sm->name)}}</a>
                    </li>
                    @endforeach
                    <!--<li><a href="#0">LinkedIn</a></li>-->
                </ul>

            </div> <!-- end s-footer__social -->

            <div class="col-five md-full end s-footer__subscribe">

                <h4>Our Newsletter</h4>

                <p>{{ucfirst($siteInfo->newsletter)}}</p>

                <div class="subscribe-form">
                    <form id="subscribe" class="group" data-route="{{url('/newsletter')}}" method="post">
                        @csrf
                        <input type="text" value="" name="subscriber_email" class="email" id="email" placeholder="Email Address">

                        <input type="submit" id="submit" name="submit" value="Send">

                        <label for="subscriber_email" class="subscribe-message" id="subscribe-message"></label>

                    </form>
                </div>

            </div> <!-- end s-footer__subscribe -->

        </div>
    </div> <!-- end s-footer__main -->
    @if($siteInfo->show_footer_bottom == 1)
    <div class="s-footer__bottom">
        <div class="row">
            <div class="col-full">
                <div class="s-footer__copyright">
                    <span>{!! $siteInfo->copyright !!}</span> 
                    <span>{!! $siteInfo->site_info !!}</span>
                </div>

                <div class="go-top">
                    <a class="smoothscroll" title="Back to Top" href="#top"></a>
                </div>
            </div>
        </div>
    </div> <!-- end s-footer__bottom -->
    @endif
</footer> <!-- end s-footer -->


<!-- preloader
================================================== -->
<div id="preloader">
    <div id="loader">
        <div class="line-scale">
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </div>
</div>
<!-- Java Script
================================================== -->
<script src="{{url('/js/jquery-3.2.1.min.js')}}"></script>
<script src="{{url('/js/plugins.js')}}"></script>
<script src="{{url('/js/main.js')}}"></script>
<script src="{{url('/js/script.js')}}"></script>