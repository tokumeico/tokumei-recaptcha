<script>
  var loadReplies = function(postn) {
    Materialize.showStaggeredList('#staggered' + postn);
    grecaptcha.render($('#staggered' + postn + ' .g-recaptcha')[0], {'sitekey' : '%($recaptchasitekey%)'});
  }
</script>
