// 상수
const HERO_CONTENT_COUNT = 5;

// DOM ELEMENT 캐싱

var navigation = document.getElementsByClassName("navigation")[0];

var sub_navigation_block   = navigation.getElementsByClassName("sub-navigation-block");
var main_navigation_link   = navigation.getElementsByClassName("main-navigation-link");
var main_navigation_stroke = navigation.getElementsByClassName("main-link-stroke");
var sub_navigation_link    = navigation.getElementsByClassName("sub-navigation-link");
var sub_navigation_stroke  = navigation.getElementsByClassName("sub-link-stroke");

var page_navigation = document.getElementsByClassName("page-navigation")[0];

var page_navigation_block  = page_navigation.getElementsByClassName("page-block");
var page_navigation_label  = page_navigation.getElementsByClassName("page-label");
var page_navigation_stroke = page_navigation.getElementsByClassName("page-stroke");

var details  = document.getElementsByClassName("details")[0];
var showcase = document.getElementsByClassName("showcase")[0];

var details_hero_content  = details.getElementsByClassName("hero-content");
var showcase_hero_content = showcase.getElementsByClassName("hero-content");

var detail_screen         = document.getElementById("screen");
var detail_button         = document.getElementById("button");
var detail_button_span    = detail_button.children[0];
var detail_button_arrow   = detail_button.children[1];

var detail_clip    = document.getElementsByClassName("clip"); 
var detail_heading = document.getElementsByClassName("heading");
var detail_colored = document.getElementsByClassName("colored");

// 네비게이션 마우스 오버 애니메이션

var main_nav_hover_opacity_tween = 
    TweenMax
      .fromTo(sub_navigation_block, 0.15, 
              {autoAlpha: 0},
              {autoAlpha: 1})
      .pause();

var main_nav_hover_slidedown_tween = 
    TweenMax
      .fromTo(sub_navigation_block, 0.15, 
              {y: -20},
              {y: 0})
      .pause();

var main_nav_tween_play = function() {
  
    main_nav_hover_opacity_tween.play();
    main_nav_hover_slidedown_tween.play();
  
}
var main_nav_tween_reverse = function() {
  
    main_nav_hover_opacity_tween.reverse();
    main_nav_hover_slidedown_tween.reverse();
  
}

navigation.onmouseover = main_nav_tween_play;
navigation.onmouseout  = main_nav_tween_reverse;


// 네비게이션 링크 마우스 오버 에니메이션

var main_link_tween_assignment = function(idx) {
  
  var main_link_hover_opacity_tween = 
      TweenLite
        .fromTo(main_navigation_link[idx], 0.05,
                {opacity: 0.5},
                {opacity: 1})
        .pause();
  
  var main_link_underline_tween =
      TweenLite
        .fromTo(main_navigation_stroke[idx], 0.15,
                {scale: 0},
                {scale: 1})
        .pause();
  
  var main_link_tween_play = function() {
    
    main_link_hover_opacity_tween.play();
    main_link_underline_tween.play();
    
  }
  
  var main_link_tween_reverse = function() {
    
      main_link_hover_opacity_tween.reverse();
      main_link_underline_tween.reverse();
    
  }
  
  main_navigation_link[idx].onmouseover = main_link_tween_play;
  main_navigation_link[idx].onmouseout  = main_link_tween_reverse;
  
}

for (let idx = 0; idx < main_navigation_link.length; idx++)
  main_link_tween_assignment(idx);

// 서브 네비게이션 링크 마우스 오버 에니메이션

var sub_link_tween_assignment = function(idx) {
  
  var sub_link_hover_stroke_tween = 
      TweenLite
        .fromTo(sub_navigation_stroke[idx], 0.3, 
                {autoAlpha: 0.0, scaleY: 0},
                {autoAlpha: 0.7, scaleY: 1, ease: Expo.easeOut})
        .pause();
  
  var sub_link_tween_play = function() {
    
    sub_link_hover_stroke_tween.play();
    
  }
  
  var sub_link_tween_reverse = function() {

    sub_link_hover_stroke_tween.reverse();
    
  }
  
  sub_navigation_link[idx].onmouseover = sub_link_tween_play;
  sub_navigation_link[idx].onmouseout  = sub_link_tween_reverse;
  
}

for (let idx = 0; idx < sub_navigation_link.length; idx++)
  sub_link_tween_assignment(idx);

// page-navigation hover 애니메이션

var page_nav_scale_tween = 
    TweenMax
      .fromTo(page_navigation, 0.05,
              {height: "25px",  scaleX: 0.3, transformOrigin: "100% 0%"},
              {height: "100px", scaleX: 1})
      .pause();

var page_label_slide_tween = 
    TweenMax
      .fromTo(page_navigation_label, 0.25,
              {autoAlpha: 0.0, x: 30},
              {autoAlpha: 1.0, x: 0, ease: Bounce.easeOut})
      .pause();

var page_nav_tween_play = function() {
  
  page_nav_scale_tween.play();
  page_label_slide_tween.play();
  
}

var page_nav_tween_reverse = function() {
  
  page_nav_scale_tween.reverse();
  page_label_slide_tween.progress(0.3).reverse();
  
}

page_navigation.onmouseenter = page_nav_tween_play;
page_navigation.onmouseleave = page_nav_tween_reverse;

var page_block_tween_assignment = function(idx) {
  
  var page_block_tween =
      TweenMax
        .fromTo(page_navigation_block[idx], 0.10,
                {height: "20%"},
                {height: "25%"})
        .pause();
  
  var page_label_tween =
      TweenMax
        .fromTo(page_navigation_label[idx], 0.10,
                {fontSize: "10px", lineHeight: "20px"},
                {fontSize: "18px", lineHeight: "25px"})
        .pause();
  
  var page_block_tween_play = function() {
    
    page_block_tween.play();
    page_label_tween.play();
    
  }
  
  var page_block_tween_reverse = function() {

    page_block_tween.reverse();
    page_label_tween.reverse();
    
  }
  
  page_navigation_block[idx].onmouseover = page_block_tween_play;
  page_navigation_block[idx].onmouseout  = page_block_tween_reverse;
  
}

for (let idx = 0; idx < page_navigation_block.length; idx++)
  page_block_tween_assignment(idx);

// details 자세히 보기 버튼 hover animation

var details_width_tween =
    TweenMax
      .fromTo(detail_screen, 0.25, 
              {x: 0},
              {x: 85, ease: Expo.easeOut})
      .pause();

var detail_button_width_tween =
    TweenMax
      .fromTo(detail_button, 0.25,
              {paddingLeft: "10px",  x: 0},
              {paddingLeft: "95px", x: 85, ease: Expo.easeOut})
      .pause();

var detail_button_span_x_tween = 
    TweenMax
      .fromTo(detail_button_span, 0.20,
              {x: -190},
              {x: -85})
      .pause();

var detail_button_tween_play = function() {

  details_width_tween.play();
  detail_button_width_tween.play();
  detail_button_span_x_tween.play();

}

var detail_button_tween_reverse = function() {

  details_width_tween.reverse();
  detail_button_width_tween.reverse();
  detail_button_span_x_tween.reverse();

}

detail_button.onmouseenter = detail_button_tween_play;
detail_button.onmouseleave = detail_button_tween_reverse;

// hero-content slide animation

var current_page_idx      = 0;
var hero_content_color    = ['#594643', '#212027', '#f22f08', '#8d2f23', '#561e18'];
var is_animation_finished = true;

var hero_content_on_start    = function(here, next) {

  is_animation_finished = false;

  page_navigation_block[here].classList.toggle('active');
  page_navigation_block[next].classList.toggle('active')

  TweenMax.set(detail_button, {
    color:       hero_content_color[next],
    borderColor: hero_content_color[next]});

  TweenMax.set(detail_button_arrow, {
    borderLeftColor: hero_content_color[next]});

  TweenMax.set(detail_colored[3], {
    color: hero_content_color[next]});

  detail_colored[3].innerText = next + 1;
  
  heading_slidein_tween(next);
  heading_slideout_tween(here);
  
}
var hero_content_on_complete = function(next) {

  current_page_idx = next;
  is_animation_finished = true;

}

var hero_content_fadein_tween  = function(el) {
  
  return TweenLite.to(el, 0.45, {autoAlpha: 1});
  
}
var hero_content_fadeout_tween = function(el) {
  
  return TweenLite.to(el, 0.45, {autoAlpha: 0});
  
}

var hero_content_slideup_tween   = function(el) {
  
  return TweenLite.to(el, 0.45, {yPercent: "-=40", ease: Expo.easeOut, paused: true});
  
}
var hero_content_slidedown_tween = function(el) {
  
  return TweenLite.to(el, 0.45, {yPercent: "+=40", ease: Expo.easeOut, paused: true});
  
}

var heading_slidein_tween  = function(next) {
  
  TweenMax.to(detail_heading[next], 0.25, 
              {autoAlpha: 1, xPercent: 15});
  
}
var heading_slideout_tween = function(here) {
  
  TweenMax.to(detail_heading[here], 0.25, 
              {autoAlpha: 0, xPercent: 0, delay: 0.2, ease: Power2.easeOut});
  
}

var clip_slidein_tween = function() {
  
}
var clip_slideout_tween = function() {
  
}

var detect_wheel_direction = function(e) {
  
    var delta = null,
        direction = false;
  
    if ( !e ) { // if the event is not provided, we get it from the window object
        e = window.event;
    }
  
    if ( e.wheelDelta ) { // will work in most cases
        delta = e.wheelDelta / 60;
    } else if ( e.detail ) { // fallback for Firefox
        delta = -e.detail / 2;
    }
  
    if ( delta !== null ) {
        direction = delta > 0 ? 'up' : 'down';
    }

    return direction;
  
}
var detect_clicked_nav_idx = function(e) {
  
  var clicked_nav = e.target;

  for (var i = 0; i < HERO_CONTENT_COUNT; i++) {
    
    if (clicked_nav == page_navigation_block[i])
      return i;
    
  }
  
}

var scroll_event_handler  = function(e) {
  
  if (is_animation_finished == false) return false;
  
  var direction = detect_wheel_direction(e);
  
  if (direction ==  'up') {
    
    if (current_page_idx - 1 >= 0) {
      
      // 스크롤 업
      hero_content_slidedown_tween(
        
        [details_hero_content[current_page_idx], details_hero_content[current_page_idx - 1]]
        
      ).eventCallback("onStart",    hero_content_on_start,    [current_page_idx, current_page_idx - 1])
       .eventCallback("onComplete", hero_content_on_complete, [current_page_idx - 1])
       .play();
      
      hero_content_fadein_tween(
        
        [details_hero_content[current_page_idx - 1], showcase_hero_content[current_page_idx - 1]]
        
      );
      
      hero_content_fadeout_tween(
        
        [details_hero_content[current_page_idx], showcase_hero_content[current_page_idx]]
        
      );
      
    }
    
  } 
  else if (direction == 'down') {
    
    if (current_page_idx + 1 < HERO_CONTENT_COUNT) {
      
      // 스크롤 다운 
      hero_content_slideup_tween(
        
        [details_hero_content[current_page_idx], details_hero_content[current_page_idx + 1]]
        
      ).eventCallback("onStart",    hero_content_on_start,    [current_page_idx, current_page_idx + 1])
       .eventCallback("onComplete", hero_content_on_complete, [current_page_idx + 1])
       .play();
      
      hero_content_fadeout_tween(
        
        [details_hero_content[current_page_idx], showcase_hero_content[current_page_idx]]
        
      );
      
      hero_content_fadein_tween(
        
        [details_hero_content[current_page_idx + 1], showcase_hero_content[current_page_idx + 1]]
        
      );
      
    }
    
  }
  
}
var page_navigation_click_event_handler = function(e) {
  
  if (is_animation_finished == false) return false;

  var current_idx = current_page_idx;
  var clicked_idx = detect_clicked_nav_idx(e);
  
  if (current_idx == clicked_idx) return false;
  
  // direction UP or direction DOWN
  if (current_idx > clicked_idx) {
    
    // direction UP: 현재 페이지만 페이드 아웃, 들어올 content는 슬라이드 다운
    for (var i = current_idx, y = 0; i >= clicked_idx; i--, y++) {
      
      if (i == clicked_idx) {
        
        hero_content_slidedown_tween(

          details_hero_content[clicked_idx]

        ).eventCallback("onStart",    hero_content_on_start,    [current_idx, clicked_idx])
         .eventCallback("onComplete", hero_content_on_complete, [clicked_idx])
         .delay(y/10)
         .play();
        
        hero_content_fadein_tween(details_hero_content[clicked_idx]).delay(y/10);
        
      }
      else {
        
        TweenMax
          .fromTo(details_hero_content[i], 0.25, 
                  {autoAlpha: 1}, 
                  {autoAlpha: 0, yPercent: 40, delay: y/10, ease: Power1.easeInOut, immediateRender: false});
        
      }
      
    }

    hero_content_fadein_tween(showcase_hero_content[clicked_idx]);
    hero_content_fadeout_tween(showcase_hero_content[current_idx]);
    
  } 
  else if (current_idx < clicked_idx) {
    
    // direction DOWN: 현재 페이지만 페이드 아웃, 들어올 content는 슬라이드 업
    for (var i = current_idx, y = 0; i <= clicked_idx; i++, y++) {
      
      if (i == clicked_idx) {
        
        hero_content_slideup_tween(

          details_hero_content[clicked_idx]

        ).eventCallback("onStart",    hero_content_on_start,    [current_idx, clicked_idx])
         .eventCallback("onComplete", hero_content_on_complete, [clicked_idx])
         .delay(y/10)
         .play();
        
        hero_content_fadein_tween(details_hero_content[clicked_idx]).delay(y/10);
        
      }
      else {
        
        TweenMax
          .fromTo(details_hero_content[i], 0.25, 
                  {autoAlpha: 1}, 
                  {autoAlpha: 0, yPercent: -40, delay: y/10, ease: Power1.easeInOut, immediateRender: false});
        
      }
      
    }
      
      hero_content_fadeout_tween(showcase_hero_content[current_idx]);
      hero_content_fadein_tween(showcase_hero_content[clicked_idx]);
    
  }
  
}


window.onmousewheel     = scroll_event_handler;
page_navigation.onclick = page_navigation_click_event_handler;




var hero_content_pos_init = function() {
  
  TweenMax.set(details_hero_content,    {yPercent: 40});
  TweenMax.set(details_hero_content[0], {yPercent: 0});
  TweenMax.set(detail_heading[0], {xPercent: 15, autoAlpha: 1});
  
}();