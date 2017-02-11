<script>
  var recaptchaOnload = function() {
    grecaptcha.render($('.g-recaptcha')[0], {'sitekey' : '%($recaptchasitekey%)'});
  };
</script>
<script src="https://www.google.com/recaptcha/api.js?onload=recaptchaOnload&render=explicit" async defer></script>
