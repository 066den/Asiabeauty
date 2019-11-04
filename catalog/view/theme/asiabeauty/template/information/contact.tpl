<?php echo $header; ?>
<div class="container">
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
  </ul>
  <div class="row"><?php echo $column_left; ?>
    <?php if ($column_left && $column_right) { ?>
    <?php $class = 'col-sm-6'; ?>
    <?php } elseif ($column_left || $column_right) { ?>
    <?php $class = 'col-sm-9'; ?>
    <?php } else { ?>
    <?php $class = 'col-sm-12'; ?>
    <?php } ?>
    <div id="content" class="<?php echo $class; ?> content">
      
      <h1>Контакты</h1>
      <?php echo $content_top; ?>
      <h3><?php echo $text_location; ?></h3>
      <div class="panel panel-default">
        <div class="panel-body">
          <div class="row">
            <?php if ($image) { ?>
            <div class="col-sm-3"><img src="<?php echo $image; ?>" alt="<?php echo $store; ?>" title="<?php echo $store; ?>" class="img-thumbnail" /></div>
            <?php } ?>
            <div class="col-sm-3"><strong>«Мамочки» Заволгой</strong><br />
              <address>
              <?php echo $address; ?>
              </address>
              
            </div>
            <div class="col-sm-3"><strong><?php echo $text_telephone; ?></strong><br>
              <a href="tel:+7<?php echo str_replace(array(' ','-','(',')'), '', strip_tags($telephone)) ?>"><?php echo $telephone; ?></a>
              <br />
              <?php if ($fax) { ?>
              <strong><?php echo $text_fax; ?></strong><br>
              <?php echo $fax; ?>
              <?php } ?>
            </div>
            <div class="col-sm-3">
              <?php if ($open) { ?>
              <strong><?php echo $text_open; ?></strong><br />
              <?php echo $open; ?><br />
              <br />
              <?php } ?>
              <?php if ($comment) { ?>
              <strong><?php echo $text_comment; ?></strong><br />
              <?php echo $comment; ?>
              <?php } ?>
            </div>
          </div>
          <div class="section">
            <script type="text/javascript" charset="utf-8" async src="https://api-maps.yandex.ru/services/constructor/1.0/js/?um=constructor%3A515790a4e431617d9e367a214df9383d904bec9c307cf59cf7a64758d08b328f&amp;width=100%25&amp;height=300&amp;lang=ru_RU&amp;scroll=true"></script>
          </div>
        </div>
      </div>
      <?php if ($locations) { ?>
      <h3><?php echo $text_store; ?></h3>
      <div class="panel-group" id="accordion">
        <?php foreach ($locations as $location) { ?>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title"><a href="#collapse-location<?php echo $location['location_id']; ?>" class="accordion-toggle" data-toggle="collapse" data-parent="#accordion"><?php echo $location['name']; ?> <i class="fa fa-caret-down"></i></a></h4>
          </div>
          <div class="panel-collapse collapse" id="collapse-location<?php echo $location['location_id']; ?>">
            <div class="panel-body">
              <div class="row">
                <?php if ($location['image']) { ?>
                <div class="col-sm-3"><img src="<?php echo $location['image']; ?>" alt="<?php echo $location['name']; ?>" title="<?php echo $location['name']; ?>" class="img-thumbnail" /></div>
                <?php } ?>
                <div class="col-sm-3"><strong><?php echo $location['name']; ?></strong><br />
                  <address>
                  <?php echo $location['address']; ?>
                  </address>
                  
                </div>
                <div class="col-sm-3"> <strong><?php echo $text_telephone; ?></strong><br>
                  <?php echo $location['telephone']; ?><br />
                  <br />
                  <?php if ($location['fax']) { ?>
                  <strong><?php echo $text_fax; ?></strong><br>
                  <?php echo $location['fax']; ?>
                  <?php } ?>
                </div>
                <div class="col-sm-3">
                  <?php if ($location['open']) { ?>
                  <strong><?php echo $text_open; ?></strong><br />
                  <?php echo $location['open']; ?><br />
                  <br />
                  <?php } ?>
                  <?php if ($location['comment']) { ?>
                  <strong><?php echo $text_comment; ?></strong><br />
                  <?php echo $location['comment']; ?>
                  <?php } ?>
                </div>
              </div>
            </div>
          </div>
        </div>
        <?php } ?>
      </div>
      <?php } ?>
      <div class="ajax-form-wrap">
        <form method="post" enctype="multipart/form-data" class="form-horizontal ajax-form">
          <!-- Hidden Required Fields -->
          <input type="hidden" name="project_name" value="Мамочки">
          <input type="hidden" name="admin_email" value="<?php echo $email; ?>">
          <input type="hidden" name="form_subject" value="Письмо со страницы контакты сайта Мамочки">
          <!-- END Hidden Required Fields -->
          <fieldset>
            <h3><?php echo $text_contact; ?></h3>
            <div class="form-group required row">
              <label class="col-sm-2 control-label" for="input-name"><?php echo $entry_name; ?></label>
              <div class="col-sm-10">
                <input type="text" name="имя" value="<?php echo $name; ?>" id="input-name" class="form-control" required="" />
                <?php if ($error_name) { ?>
                <div class="text-danger"><?php echo $error_name; ?></div>
                <?php } ?>
              </div>
            </div>
            <div class="form-group required row">
              <label class="col-sm-2 control-label" for="input-email"><?php echo $entry_email; ?></label>
              <div class="col-sm-10">
                <input type="text" name="email" value="<?php echo $email; ?>" id="input-email" class="form-control" required=""/>
                <?php if ($error_email) { ?>
                <div class="text-danger"><?php echo $error_email; ?></div>
                <?php } ?>
              </div>
            </div>
            <div class="form-group required row">
              <label class="col-sm-2 control-label" for="input-enquiry"><?php echo $entry_enquiry; ?></label>
              <div class="col-sm-10">
                <textarea name="Сообщение" rows="10" id="input-enquiry" class="form-control"><?php echo $enquiry; ?></textarea>
                <?php if ($error_enquiry) { ?>
                <div class="text-danger"><?php echo $error_enquiry; ?></div>
                <?php } ?>
              </div>
            </div>
            <?php echo $captcha; ?>
          </fieldset>
          <div class="buttons">
            <div class="pull-right">
              <input class="btn btn-default" type="submit" value="<?php echo $button_submit; ?>" />
            </div>
          </div>
        </form>
        <div class="success">Спасибо за заявку!</div>
      </div>
      
      <?php echo $content_bottom; ?></div>
    <?php echo $column_right; ?></div>
</div>
<?php echo $footer; ?>
