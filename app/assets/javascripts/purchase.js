$(function(){
  $('#select_product_count').change(function(){
      var product_count = $('#select_product_count').find('option:selected').val()
      $('#product_count').val(product_count);
      var per_price = $('#per_price').val();
      var now_price = per_price * product_count;
      $('#product_price').text('');
      $('#product_price').text(now_price+"円");
      $('#price').val(now_price);
      $('#count').val(product_count);
       
  });
});
