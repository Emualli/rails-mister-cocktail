$(document).ready(function() {
  $('#add-dose').on('click', function(){
    $('#ingredients_form').toggle();
    $(this).attr('class') === 'fa fa-plus' ? $(this).removeClass('fa-plus').addClass('fa-minus') : $(this).removeClass('fa-minus').addClass('fa-plus');
  })
})
