/*---------------------------------------------------------------*/
/*--------- DREAMSHOP : REQUIRED CUSTOM JQUERY SCRIPTS ----------*/
/*---------------------------------------------------------------*/

// SITE MENU + MOBILE  MENU SCRIPT
//---------------------------------------------------------------
(function( $ ) {
	$.fn.dreamshopMobMenu = function( options ) { 
		var defaults = {
			'activewidth': 1024,
			'submenuToggle' : true,
			'tbtnClass' : false
		};
		//call in the default otions
		var options = $.extend(defaults, options);
		var obj     = $(this);
		var mobactive = true;
		
		return this.each(function() {
			if($(window).width() <= options.activewidth) {
				cmsMobRes();
			}else{
				cmsDeskRes();
			}
			
			$(window).resize(function() {
				if($(window).width() <= options.activewidth) {
					if(mobactive){
						cmsMobRes();
					}
				}else{
					cmsDeskRes();
				}
			});
			function cmsMobRes() {
				mobactive = false;
				jQuery('#main-nav').superfish('destroy');
				if(options.submenuToggle){
					obj.addClass('mobile-menu-active submenu-toggle').hide();
				}else{
					obj.addClass('mobile-menu-active').hide();
				}
				obj.parent().css('position','relative');
				if(obj.prev('.mobmenu-toggle').length === 0) {
					obj.before('<div class="fa fa-bars mobmenu-toggle" id="mobmenu-toggle"></div>');
				}
				obj.parent().find('.mobmenu-toggle').removeClass('active');
				
				// if toggle sub menu items options is enabled
				if(options.submenuToggle)
				{
					jQuery('#main-nav').find('li.menu-item-has-children').prepend('<i class="fa fa-angle-down child-arrow"></i>');
					
					jQuery('.main-navigation .mobile-menu-active').on('click','i.fa',function() {
						if(!jQuery(this).hasClass('active')){
							jQuery(this).removeClass('fa-angle-down');
							jQuery(this).addClass('active fa-angle-up');
							jQuery(this).parent('li').find('> ul').stop(true,true).slideDown(200);
						}
						else{
							jQuery(this).removeClass('active fa-angle-up');
							jQuery(this).addClass('fa-angle-down');
							jQuery(this).parent('li').find('> ul').stop(true,true).slideUp(200);
						}
					});
				}
			}
			function cmsDeskRes() {
				mobactive = true;
				jQuery('#main-nav').superfish('init');
				obj.removeClass('mobile-menu-active').show();
				
				if(options.submenuToggle){
					jQuery('#main-nav').find('li.menu-item-has-children i.fa').remove();
				}
				if(obj.prev('.mobmenu-toggle').length) {
					obj.prev('.mobmenu-toggle').remove();
				}
			}
			obj.parent().on('click','.mobmenu-toggle',function() {
				if(!$(this).hasClass('active')){
					if(options.tbtnClass){
						$(this).removeClass('fa-bars');
						$(this).addClass('active fa-times');
					}else{
						$(this).addClass('active');
					}
					$(this).next('ul').stop(true,true).fadeIn(300);
				}
				else{
					if(options.tbtnClass){
						$(this).addClass('fa-bars');
						$(this).removeClass('active fa-times');
					}else{
						$(this).removeClass('active');
					}
					$(this).next('ul').stop(true,true).fadeOut(300);
				}
			});
		});
	};
})( jQuery );
	
// FLEX SLIDER SCRIPT
//---------------------------------------------------------------
jQuery(window).load(function(){
	jQuery(".flexslider").addClass('deloader');
});

// SCROLL TO TOP
//---------------------------------------------------------------
(function() {
	"use strict";
	var docElem = document.documentElement,
	didScroll = false,
	changeHeaderOn = 550;
	document.querySelector( '#back-to-top' );
	
	function init() {
		window.addEventListener( 'scroll', function() {
			if( !didScroll ) {
				didScroll = true;
				setTimeout( scrollPage, 50 );
			}
		}, false );
	}
})();

jQuery(window).scroll(function(event){
	var scroll = jQuery(window).scrollTop();
	if (scroll >= 50) {
		jQuery("#back-to-top").addClass("show");
	} else {
		jQuery("#back-to-top").removeClass("show");
	}
});

jQuery('a[href="#top"]').on('click',function(){
	jQuery('html, body').animate({scrollTop: 0}, 1350, "easeInOutQuint");
	return false;
});


// OWL-CAROUSEL SCRIPT
//---------------------------------------------------------------
var owl = jQuery('.related-product');
owl.owlCarousel({
    loop:true,
	autoplay:true,
	lazyLoad:true,
	autoplayTimeout:8000, //Set AutoPlay to 3 seconds
    margin:15,
	nav:false,
	pagination:false,
	dots: false,
	navText: [
      "<i class='fa fa-chevron-left'></i>",
      "<i class='fa fa-chevron-right'></i>"
    ],
    responsive:{
        0:{
            items:1
        },
        500:{
            items:2
        },
        1000:{
            items:4
        }
    }
})

jQuery('.related-product .owl-item').on('mouseenter',function(e){
	jQuery(this).closest('.owl-carousel').trigger('stop.owl.autoplay');
})

jQuery('.related-product .owl-item').on('mouseleave',function(e){
	jQuery(this).closest('.owl-carousel').trigger('play.owl.autoplay');
})

// ADD TO WISHLIST POPUP
//---------------------------------------------------------------
jQuery(".add_to_wishlist").click(function(){
	setTimeout(function(){
        jQuery("#yith-wcwl-popup-message").addClass("intro");
   }, 500);
});

jQuery(".yith-wcwl-popup-close").click(function(){
    jQuery("#yith-wcwl-popup-message").removeClass("intro");
});

// HOMEPAGE TWO COLORS TITLE
//---------------------------------------------------------------
jQuery(document).ready(function()
{
	if(jQuery('.pro-title').length > 0)
	{
		jQuery('.pro-title').each(function() 
		{
		   var html = jQuery(this).html();
		   var word = html.substr(0, html.indexOf(" "));
		   var rest = html.substr(html.indexOf(" "));
		   jQuery(this).html(rest).prepend(jQuery("<span/>").html(word).addClass("theme-color"));
		});
	}
});

// FUNCTION FOR PRODUCT QUANTITY PLUS AND MINUS
//---------------------------------------------------------------
jQuery(document).ready(function($){
	$('.woocommerce .quantity input.plus').live('click', function() {
		jQuery("[name='update_cart']").removeAttr("disabled");
		$input = $(this).prev('input.qty');
		var val = parseInt($input.val());
		var step = $input.attr('step');
		step = 'undefined' !== typeof(step) ? parseInt(step) : 1;
		$input.val( val + step ).change();
		/*
		setTimeout(function(){
			if($("[name='update_cart']").length > 0){$("[name='update_cart']").trigger("click");}
		},200);
		*/
	});
	$('.woocommerce .quantity input.minus').live('click', function() {
		jQuery("[name='update_cart']").removeAttr("disabled");
		$input = $(this).next('input.qty');
		var val = parseInt($input.val());
		var step = $input.attr('step');
		step = 'undefined' !== typeof(step) ? parseInt(step) : 1;
		if (val > 0) {
			$input.val( val - step ).change();
		} 
		/*
		setTimeout(function(){
			if($("[name='update_cart']").length > 0){$("[name='update_cart']").trigger("click");}
		},200);
		*/
	});
});

// SLICK SLIDER FOR PRODUCT SINGLE PAGE
//---------------------------------------------------------------
jQuery(document).ready(function()
{
	if(jQuery('.wpis-slider-for').length > 0)
	{
		jQuery('.wpis-slider-for').slick({
			fade: true,
			autoplay : true,
			arrows: true,
			slidesToShow: 1,
			infinite:false,
			slidesToScroll: 1,
			asNavFor: '.wpis-slider-nav'
		});
		
		jQuery('.wpis-slider-nav').slick({
			dots: false,
			arrows: false,
			centerMode: false,
			focusOnSelect: true,
			infinite:false,
			slidesToShow: 5,
			slidesToScroll: 1,
			asNavFor: '.wpis-slider-for'
		});
		
		jQuery('.wpis-slider-for .slick-slide').zoom();
		jQuery('.wpis-slider-for .slick-track').addClass('woocommerce-product-gallery__image single-product-main-image');
		jQuery('.wpis-slider-nav .slick-track').addClass('flex-control-nav');
		jQuery('.wpis-slider-nav .slick-track li img').removeAttr('srcset');
	
		jQuery('.variations select').change(function(){
			jQuery('.wpis-slider-nav').slick('slickGoTo', 0,true);
			jQuery('.wpis-slider-for').slick('slickGoTo', 0,true);
			window.setTimeout( function() {
				jQuery('.wpis-slider-for .slick-track .slick-current').zoom();		
			}, 20 );
		});
	}
});
