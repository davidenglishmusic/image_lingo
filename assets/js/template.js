/* Image Lingo JS */
$(document).ready(function() {
  $('.exercise-item input').val("");
  $('.exercise-item input').keyup(function() {
    var guess = $(this).val();
    if (guess === $(this).data('keyboard-answer') || guess === $(this).data('answer')) {
      $(this).val($(this).data('answer'));
      $(this).prop('disabled', true);
      $(this).addClass('correct');
    }
  });
});
