//= require jquery
//= require jquery_ujs
//= require jquery-ui
// require turbolinks
//= require jquery-ui/autocomplete
//= require words
//= require ckeditor/init
//= require jquery.onScreenKeyboard
//= require materialize-sprockets
//= require_tree .

$(document).ready(function() {
  $('select').material_select();

  $('.materialboxed').materialbox();

  $('#list-remember-word').click(function(){
  });

  $('.osk-trigger').onScreenKeyboard({
    'draggable': true,
    'rewireReturn': 'search',
    'rewireTab': true
  });
});
