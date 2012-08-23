$(function(){
  $('li.dropdown > a').click(function(){
    $(this).next('ul').toggle();
  });
});
