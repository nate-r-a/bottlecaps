$(function() {
  console.log("hello");
  $('select#bottlecap_brand').change(function(){
    // console.log("changed");
    var brand_value = $(this).val();
    // console.log(brand_value)
    $('input#bottlecap_brand').val(brand_value);
  })
})