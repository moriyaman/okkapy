$(document).ready(function(){
  $("#in_cart").click(function(e){
    var item_id = $('#item_id').val();
    $.ajax({
      type: 'POST',
      url: '/purchase/save_product/'+item_id,
      success: function(data) { 
      }
    });
  });
 
  $('#continue_shopping').click(function(){
    $('.confirm_box').css('display','none');
  });
 
});
