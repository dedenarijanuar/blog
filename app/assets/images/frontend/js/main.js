$(document).ready(function(){
  $('li.search').click(function(event){
    $(this).addClass('selected');
    $('.search-input').focus();
    event.stopPropagation();
  });

  $(document).click(function() {
    $("li.search").removeClass('selected');
    $('.search-input').val('');
  });
  
});
