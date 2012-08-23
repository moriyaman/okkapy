$(document).ready(function(){
  $("#in_cart").click(function(e){
    e.preventDefault;
    $("#confirm_box").css({display:'block'});
    var cart_num = $('#cart_num').text();
    if(cart_num==""){
      $('#cart_num').text('1');
    }else{
      var next_num =parseInt(cart_num)+1;
      $('#cart_num').text(next_num);
    }
    var item_price_per = $('#item_price_per').val();
    var total_acount = parseInt(item_price_per)*parseInt($('#cart_num').text());
    $('#item_price').text(total_acount);
    $('#item_count').text($('#cart_num').text());
    var product1 = $('#item_name').text(); 
    $('.in_cart_product').append('<li><a href="">'+product1+'</a></li>');
  });
 
  $('#continue_shopping').click(function(){
    $('.confirm_box').css('display','none');
  });
 
});
