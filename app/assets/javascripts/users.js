$( document ).ready(function(){

  if ($('.edit_user').length){
    $('.edit_user').parsley().subscribe('parsley:form:validated', function(formInstance) {
      showPassword();
    });
  }

  $('#edit-name').click(function() {
    $('input[name="user[name]"]').prop("disabled", !$('input[name="user[name]"]').prop("disabled"))
    $('input[name="user[name]"]').focus();
    $('#edit-name').toggleClass("active")
    showPassword();
  });
  $('#edit-email').click(function() {
    $('input[name="user[email]"]').prop("disabled", !$('input[name="user[email]"]').prop("disabled"))
    $('input[name="user[name]"]').focus();
    $('#edit-email').toggleClass("active")
    showPassword();
  });

  function showPassword(){
    $('#update_confirmation').slideDown()
  }
  
  $('#user_password').blur(function(){
    $('#user_password_confirmation').val($('#user_password').val())
  })



});
