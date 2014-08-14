// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require parsley
// require parsley_es
//= require_tree .
//= require bootstrap-sprockets
//= require turbolinks
$(function(){
  $('.btn-toggle').click(function() {
    $('#navbar').toggleClass('navbar-fixed-top')
    $('#navbar').toggleClass('navbar-static-top')

    if($('#navbar').hasClass('navbar-fixed-top')){
      $( 'body' ).css( "padding-top", "65px" );
    } else {
      $( 'body' ).css( "padding-top", "0px" );
    }

    $('#off-btn').toggleClass('active');
    $('#off-btn').toggleClass('btn-default');
    $('#off-btn').toggleClass('btn-primary');
    $('#on-btn').toggleClass('active');
    $('#on-btn').toggleClass('btn-default');
    $('#on-btn').toggleClass('btn-primary');
    
  })
});