<div id="reply-form">
  <form action="" method="POST">
    <div class="input-field">
      <textarea name="comment" id="comment%($postnum%)" class="materialize-textarea validate" required="" length="%($charlimit%)" maxlength="%($charlimit%)"></textarea>
      <label for="comment%($postnum%)">Message</label>
    </div>

    <input type="hidden" name="parent" value="%($postnum%)">

    <div class="g-recaptcha" data-sitekey="%($recaptchasitekey%)"></div>
    <noscript>
      <div>
        <div style="width: 302px; height: 422px; position: relative;">
          <div style="width: 302px; height: 422px; position: absolute;">
            <iframe src="https://www.google.com/recaptcha/api/fallback?k=%($recaptchasitekey%)"
                    frameborder="0" scrolling="no"
                    style="width: 302px; height:422px; border-style: none;">
            </iframe>
          </div>
        </div>
        <div style="width: 300px; height: 60px; border-style: none;
                       bottom: 12px; left: 25px; margin: 0px; padding: 0px; right: 25px;
                       background: #f9f9f9; border: 1px solid #c1c1c1; border-radius: 3px;">
          <textarea id="g-recaptcha-response" name="g-recaptcha-response"
                       class="g-recaptcha-response"
                       style="width: 250px; height: 40px; border: 1px solid #c1c1c1;
                              margin: 10px 25px; padding: 0px; resize: none;" >
          </textarea>
        </div>
      </div>
    </noscript>
    <br />

    <button type="submit" class="btn-large waves-effect waves-light pink">Reply<i class="mdi mdi-send right"></i></button>
  </form>
</div>
<div id="reply-form-disabled">No replies yet!</div>
