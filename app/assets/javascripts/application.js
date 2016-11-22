// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

$(function(){
  $('.flexslider').flexslider({});

  $("#intro_menu").hover(
    function () {
      $("#intro_sub").show();
    },
    function () {
      $("#intro_sub").hide();
    }
  );
  $("#intro_sub").hover(
    function () {
      $("#intro_menu").css("background", "black");
      $("#intro_menu").css("opacity", "0.7");
      $("#intro_menu").children("a").css("color", "white");
      $("#intro_sub").show();
    },
    function () {
      $("#intro_menu").css("background", "white");
      $("#intro_menu").css("opacity", "1");
      $("#intro_menu").children("a").css("color", "black");
      $("#intro_sub").hide();
    }
  );
  $("#product_menu").hover(
    function () {
      $("#product_sub").show();
    },
    function () {
      $("#product_sub").hide();
    }
  );
  $("#product_sub").hover(
    function () {
      $("#product_menu").css("background", "black");
      $("#product_menu").css("opacity", "0.7");
      $("#product_menu").children("a").css("color", "white");
      $("#product_sub").show();
    },
    function () {
      $("#product_menu").css("background", "white");
      $("#product_menu").css("opacity", "1");
      $("#product_menu").children("a").css("color", "black");
      $("#product_sub").hide();
    }
  );
  $('.quick_top').click(function () {
    $("html, body").animate({
        scrollTop: 0
    }, 300);
    return false;
  });
})
