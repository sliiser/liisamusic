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
//= require twitter/bootstrap
//= require turbolinks
//= require wysiwyg
//= require editable/bootstrap-editable
//= require editable/rails
//= require masonry/jquery.masonry
//= require masonry/jquery.imagesloaded.min


$(function(){
  $('.editable').editable();
  var $container = $('.masonry-container');
  $container.imagesLoaded( function () {
    $container.masonry({
      //columnWidth: '.item',
      itemSelector: '.item'
    });
  });
})
$(document).on("page:load", function(){
  $('.editable').editable();
  var $container = $('.masonry-container');
  $container.imagesLoaded( function () {
    $container.masonry({
      columnWidth: '.item',
      itemSelector: '.item'
    });
  });
})
$.fn.editableform.buttons =
  '<button type="submit" class="btn btn-primary btn-sm editable-submit">'+
    '<i class="fa fa-fw fa-check"></i>'+
  '</button>'+
  '<button type="button" class="btn btn-default btn-sm editable-cancel">'+
    '<i class="fa fa-fw fa-times"></i>'+
  '</button>';