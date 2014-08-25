$( document ).ready(function(){

  if ($('.edit_user').length){
    $('.edit_user').parsley().subscribe('parsley:form:validated', function(formInstance) {
      $('#user_password_confirmation').val($('#user_password').val())
      showPassword();
    });
  }

  $('#edit-name').click(function() {
    $('input[name="user[name]"]').prop("disabled", false)
    $('input[name="user[name]"]').focus();
    $('input[name="user[name]"]').val($('input[name="user[name]"]').val())
    $('#edit-name').addClass("active")
    showPassword();
  });
  $('#edit-email').click(function() {
    $('input[name="user[email]"]').prop("disabled", false)
    $('input[name="user[email]"]').focus();
    $('input[name="user[email]"]').val($('input[name="user[email]"]').val())
    $('#edit-email').addClass("active")
    showPassword();
  });

  function showPassword(){
    $('#update_confirmation').slideDown()
  }


});
