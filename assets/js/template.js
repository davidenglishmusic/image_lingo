/* Image Lingo JS */
$(document).ready(function() {
  $('.exercise-item input').val("");
  $('.exercise-item input').keyup(function() {
    if ($(this).val() === $(this).data('answer')) {
      $(this).prop('disabled', true);
      $(this).addClass('correct');
    }
  });
});
