$(document).ready(function(){
  $("#in_cart").click(function(e){
    e.preventDefault;
    $("#confirm_box").css({display:'block'});
    cart.openCart(); 
  });
 
});
