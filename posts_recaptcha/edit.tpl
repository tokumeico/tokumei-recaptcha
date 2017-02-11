% if(~ $#posts_users_only 0 || check_user $groups_allowed_posts) {
<noscript>
  <div>
    <form action="" method="POST" enctype="multipart/form-data">
      <div class="input-field">
        <textarea name="comment" id="comment" class="materialize-textarea validate" required="" length="%($charlimit%)" maxlength="%($charlimit%)"></textarea>
        <label for="comment">Message</label>
      </div>

      <div class="input-field">
        <input type="text" name="tags" id="tags">
        <label for="tags">Tags (comma separated)</label>
      </div>

      <div class="input-field file-field">
        <div class="btn pink">
          <i class="mdi mdi-attachment left"></i>
          <span>File</span>
          <input type="file" name="file">
        </div>
        <div class="file-path-wrapper">
          <input class="file-path validate" type="text" placeholder="<%(`{echo $filesizelimit | humanize}%)">
        </div>
      </div>

      <div class="input-field">
        <input type="password" name="password" id="password">
        <label for="password">Deletion password</label>
      </div>

      <br /><br />
      <div class="g-recaptcha" data-sitekey="%($recaptchasitekey%)"></div>
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

      <button type="submit" class="btn-large waves-effect waves-light pink">Post<i class="mdi mdi-send right"></i></button>
    </form>
  </div>
  <br />
</noscript>

<div id="modalpost" class="yesscript modal">
  <form action="" method="POST" enctype="multipart/form-data" onsubmit="$('#postprog').show()">
    <div class="modal-content">
      <div class="input-field">
        <textarea name="comment" id="comment" class="materialize-textarea validate" required="" length="%($charlimit%)" maxlength="%($charlimit%)"></textarea>
        <label for="comment">Message</label>
      </div>

      <div class="input-field">
        <input type="text" name="tags" id="tags" oninput="renderTags()">
        <label for="tags">Tags (comma separated)</label>
      </div>
      <div id="tag-preview"></div>

      <script type="text/javascript">
        function renderTags() {
          $('#tag-preview').empty();
          var tags=$('#tags').val().split(',');
          for(i = 0; i < tags.length; i++) {
            if (/\S/.test(tags[i])) {
              $('#tag-preview').append('<div class="chip pink lighten-4">' + tags[i] + '</div>');
            }
          }
        }

        function toggleAdvanced() {
          if(advanced.style.display == "initial") {
            advanced.style.display = "none";
            advancedArrow.className = "mdi mdi-chevron-down";
          } else {
            advanced.style.display = "initial";
            advancedArrow.className = "mdi mdi-chevron-up";
          }
        }
      </script>
      <br /><a onclick="toggleAdvanced()" class="waves-effect btn-flat" style="padding: 0 0.75rem">Advanced <i class="mdi mdi-chevron-down" id="advancedArrow"></i></a>
      <div id="advanced">
        <div class="input-field file-field">
          <div class="btn pink">
            <i class="mdi mdi-attachment left"></i>
            <span>File</span>
            <input type="file" name="file">
          </div>
          <div class="file-path-wrapper">
            <input class="file-path validate" type="text" placeholder="<%(`{echo $filesizelimit | humanize}%)">
          </div>
        </div>

        <div class="input-field">
          <input type="password" name="password" id="password">
          <label for="password">Deletion password</label>
        </div>
      </div>

      <br /><br />
      <div class="g-recaptcha" data-sitekey="%($recaptchasitekey%)"></div>

      <div id="postprog">
        <br />
        <div class="progress pink lighten-4">
          <div class="indeterminate pink"></div>
        </div>
      </div>
    </div>
    <div class="modal-footer">
      <button type="submit" class="modal-action waves-effect btn-flat">Post</button>
    </div>
  </form>
</div>

<div class="yesscript fixed-action-btn" style="bottom: 24px; right: 24px;">
  <a href="#modalpost" class="modal-trigger btn-floating btn-large pink tooltipped" data-position="left" data-delay="50" data-tooltip="Post something!">
    <i class="mdi mdi-pencil white-text"></i>
  </a>
</div>
% }
