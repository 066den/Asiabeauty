<?php echo $header; ?>
<link rel="stylesheet" type="text/css" href="view/stylesheet/css/colorpicker.css" />
<?php echo $column_left; ?>
<div id="content">
  <div class="page-header">
    <div class="container-fluid">
      <div class="pull-right">
        <button type="submit" form="form-labels" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-primary"><i class="fa fa-save"></i></button>
        <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-reply"></i></a></div>
      <h1><?php echo $heading_title; ?></h1>
      <ul class="breadcrumb">
        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
        <?php } ?>
      </ul>
    </div>
  </div>
  <div class="container-fluid">
    <?php if ($error_warning) { ?>
    <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
      <button type="button" class="close" data-dismiss="alert">&times;</button>
    </div>
    <?php } ?>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h3 class="panel-title"><i class="fa fa-pencil"></i><?php echo $text_edit; ?></h3>
           <h4 style="margin-top: -15px; text-align: right;"><a href="skype:serge_mikh?chat"><i class="fa fa-skype" aria-hidden="true"></i> For support Skype (serge_mikh)</a><br>
          or Mail: sergeomikh@gmail.com</h4> 
      </div>
    <div class="panel-body">   
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-html" class="form-horizontal"> 
    <div class="col-sm-12">  
      <div class="form-group">
        <label class="col-sm-2 control-label" for="input-labels-status"><?php echo $entry_labels_status; ?></label>
        <div class="col-sm-6">
          <select name="labels_status" id="input-labels-status" class="form-control">
            <?php if ($labels_status) { ?>
            <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
            <option value="0"><?php echo $text_disabled; ?></option>
            <?php } else { ?>
            <option value="1"><?php echo $text_enabled; ?></option>
            <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
            <?php } ?>
          </select>
        </div>
        </div>
      </div>      
      <div class="clearfix"></div>
      <hr>
      <div class="col-sm-12">      
          <h3><?php echo $text_new; ?></h3>
        <div class="col-sm-6">
        <div class="form-group">
              <label class="col-sm-6 control-label" for="input-new"><?php echo $entry_limit_new; ?></label>
              <div class="col-sm-6">
                <input type="text" name="labels_new" value="<?php echo $labels_new; ?>" placeholder="<?php echo $entry_limit_new; ?>" id="input-new" class="form-control" />
              </div>
        </div>
        </div>
        <div class="col-sm-6">
          <?php foreach ($languages as $language) { ?>
                <div class="form-group">                  
                    <label class="col-sm-6 control-label" for="input-labels-new-text-<?php echo $language['language_id']; ?>"><?php echo $language['name']; ?> <img style="border-right: 1px solid;padding-right: 5px;" src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" />  <?php echo $entry_new_text; ?></label>
                    <div class="col-sm-6">  
                      <input type="text" name="labels_new_text-<?php echo $language['language_id']; ?>" value="<?php echo $labels_new_text[$language['language_id']]; ?>" placeholder="<?php echo $labels_new_text[$language['language_id']]; ?>" id="input-labels-new-text-<?php echo $language['language_id']; ?>" class="form-control">
                    </div>
                </div>
          <?php } ?>
                <div class="form-group">
                    <label class="col-sm-6 control-label" for="input-labels-new-bg; ?>"><?php echo $entry_new_bg; ?></label>
                    <div class="col-sm-6 color_input">
                      <div>
                        <input type="text" value="<?php echo $labels_new_bg ?>" id="input-labels-new-bg" class="form-control" name="labels_new_bg" style="border-right: 20px solid <?php echo $labels_new_bg?>">
                      </div>
                    </div>
                </div> 
        </div>
      </div>      
      <div class="clearfix"></div>
      <hr>
      <div class="col-sm-12">
              <h3><?php echo $text_bestseller; ?></h3>
      <div class="col-sm-6">
        <div class="form-group">
              <label class="col-sm-6 control-label" for="input-bestseller"><?php echo $entry_limit_bestseller; ?></label>
              <div class="col-sm-6">
                <input type="text" name="labels_bestseller" value="<?php echo $labels_bestseller; ?>" placeholder="<?php echo $entry_limit_bestseller; ?>" id="input-bestseller" class="form-control" />
              </div>
        </div>
      </div>
      <div class="col-sm-6">
          <?php foreach ($languages as $language) { ?>
                <div class="form-group">                
                    <label class="col-sm-6 control-label" for="input-labels-bestseller-text-<?php echo $language['language_id']; ?>"><?php echo $language['name']; ?> <img style="border-right: 1px solid;padding-right: 5px;" src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $entry_bestseller_text; ?></label>
                    <div class="col-sm-6">  
                        <input type="text" name="labels_bestseller_text-<?php echo $language['language_id']; ?>" value="<?php echo $labels_bestseller_text[$language['language_id']]; ?>" placeholder="<?php echo $labels_bestseller_text[$language['language_id']]; ?>" id="input-labels-bestseller-text-<?php echo $language['language_id']; ?>" class="form-control">
                    </div>
                </div>
          <?php } ?>
                <div class="form-group">
                    <label class="col-sm-6 control-label" for="input-labels-bestseller-bg; ?>"><?php echo $entry_bestseller_bg; ?></label>
                    <div class="col-sm-6 color_input">
                      <div>
                        <input type="text" value="<?php echo $labels_bestseller_bg ?>" id="input-labels-bestseller-bg" class="form-control" name="labels_bestseller_bg" style="border-right: 20px solid <?php echo $labels_bestseller_bg?>">
                      </div>
                    </div>
                </div> 
        </div>
      </div>      
      <div class="clearfix"></div>
      <hr>
      <div class="col-sm-12">
        <h3><?php echo $text_last; ?></h3>
      <div class="col-sm-6">
      <div class="form-group">
            <label class="col-sm-6 control-label" for="input-labels-last-status"><?php echo $entry_last_status; ?></label>
            <div class="col-sm-6">
              <select name="labels_last_status" id="input-labels-last-status" class="form-control">
              <?php if ($labels_last_status) { ?>
              <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
              <option value="0"><?php echo $text_disabled; ?></option>
              <?php } else { ?>
              <option value="1"><?php echo $text_enabled; ?></option>
              <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
              <?php } ?>
              </select>
            </div>
      </div>
      </div>
      <div class="col-sm-6">
        <?php foreach ($languages as $language) { ?>
                <div class="form-group">
                    <label class="col-sm-6 control-label" for="input-labels-last-text-<?php echo $language['language_id']; ?>"><?php echo $language['name']; ?> <img style="border-right: 1px solid;padding-right: 5px;" src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $entry_last_text; ?></label>
                        <div class="col-sm-6">  
                        <input type="text" name="labels_last_text-<?php echo $language['language_id']; ?>" value="<?php echo $labels_last_text[$language['language_id']]; ?>" placeholder="<?php echo $labels_last_text[$language['language_id']]; ?>" id="input-labels-last-text-<?php echo $language['language_id']; ?>" class="form-control">
                    </div>
                </div>
        <?php } ?>
                <div class="form-group">
                    <label class="col-sm-6 control-label" for="input-labels-last-bg; ?>"><?php echo $entry_last_bg; ?></label>
                    <div class="col-sm-6 color_input">
                      <div>
                        <input type="text" value="<?php echo $labels_last_bg ?>" id="input-labels-last-bg" class="form-control" name="labels_last_bg" style="border-right: 20px solid <?php echo $labels_last_bg?>">
                      </div>
                    </div>
                </div> 
        </div>
      </div>      
      <div class="clearfix"></div>
      <hr>
      <div class="col-sm-12">
              <h3><?php echo $text_sold; ?></h3>
      <div class="col-sm-6">
      <div class="form-group">
            <label class="col-sm-6 control-label" for="input-sold-labels-status"><?php echo $entry_sold_status; ?></label>
            <div class="col-sm-6">
              <select name="labels_sold_status" id="input-labels-sold-status" class="form-control">
              <?php if ($labels_sold_status) { ?>
              <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
              <option value="0"><?php echo $text_disabled; ?></option>
              <?php } else { ?>
              <option value="1"><?php echo $text_enabled; ?></option>
              <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
              <?php } ?>
              </select>
              </div>
      </div>
      </div>
      <div class="col-sm-6">
          <?php foreach ($languages as $language) { ?>
                <div class="form-group">
                    <label class="col-sm-6 control-label" for="input-labels-sold-text-<?php echo $language['language_id']; ?>"><?php echo $language['name']; ?> <img style="border-right: 1px solid;padding-right: 5px;" src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $entry_sold_text; ?></label>
                    <div class="col-sm-6">  
                       <input type="text" name="labels_sold_text-<?php echo $language['language_id']; ?>" value="<?php echo $labels_sold_text[$language['language_id']]; ?>" placeholder="<?php echo $labels_sold_text[$language['language_id']]; ?>" id="input-labels-sold-text-<?php echo $language['language_id']; ?>" class="form-control">
                    </div>                
                </div>
          <?php } ?>
                <div class="form-group">
                    <label class="col-sm-6 control-label" for="input-labels-sold-bg; ?>"><?php echo $entry_sold_bg; ?></label>
                    <div class="col-sm-6 color_input">
                      <div>
                        <input type="text" value="<?php echo $labels_sold_bg ?>" id="input-labels-sold-bg" class="form-control" name="labels_sold_bg" style="border-right: 20px solid <?php echo $labels_sold_bg?>">
                      </div>
                    </div>
                </div> 
        </div>
      </div>      
      <div class="clearfix"></div>
      <hr>
      <div class="col-sm-12">
      <h3><?php echo $text_sale; ?></h3>
      <div class="col-sm-6">
      <div class="form-group">
            <label class="col-sm-6 control-label" for="input-sale-type"><?php echo $entry_sale_type; ?></label>
      <div class="col-sm-6">
        <select name="labels_sale_type" id="input-sale-type" class="form-control">
          <?php if ($labels_sale_type) { ?>
          <option value="1" selected="selected"><?php echo $text_percent; ?></option>
          <option value="0"><?php echo $text_text; ?></option>
          <?php } else { ?>
          <option value="1"><?php echo $text_percent; ?></option>
          <option value="0" selected="selected"><?php echo $text_text; ?></option>
          <?php } ?>
        </select>
      </div>
      </div>
      </div>
      <div class="col-sm-6">
        <?php foreach ($languages as $language) { ?>
                <div class="form-group">                  
                    <label class="col-sm-6 control-label" for="input-labels-sale-text-<?php echo $language['language_id']; ?>"><?php echo $language['name']; ?> <img style="border-right: 1px solid;padding-right: 5px;" src="language/<?php echo $language['code']; ?>/<?php echo $language['code']; ?>.png" title="<?php echo $language['name']; ?>" /> <?php echo $entry_sale_text; ?></label>
                    <div class="col-sm-6">  
                      <input type="text" name="labels_sale_text-<?php echo $language['language_id']; ?>" value="<?php echo $labels_sale_text[$language['language_id']]; ?>" placeholder="<?php echo $labels_sale_text[$language['language_id']]; ?>" id="input-labels-sale-text-<?php echo $language['language_id']; ?>" class="form-control">
                    </div>
                </div>
        <?php } ?>
                <div class="form-group">
                    <label class="col-sm-6 control-label" for="input-labels-sale-bg; ?>"><?php echo $entry_sale_bg; ?></label>
                    <div class="col-sm-6 color_input">
                      <div>
                        <input type="text" value="<?php echo $labels_sale_bg ?>" id="input-labels-sale-bg" class="form-control" name="labels_sale_bg" style="border-right: 20px solid <?php echo $labels_sale_bg?>">
                      </div>
                    </div>
                </div> 
        </div>
      </div> 
      </form>
      </div>
      </div>
    </div>
  </div>
  <script type="text/javascript" src="view/javascript/jquery/colorpicker.js"></script>
  <script type="text/javascript">

      $(document).ready(function() {

        $('.color_input input').ColorPicker({
          onChange: function (hsb, hex, rgb, el) {
            $(el).val("#" +hex);
            $(el).css("border-right", "20px solid #" + hex);
          },
          onShow: function (colpkr) {
            $(colpkr).show();
            return false;
          },
          onHide: function (colpkr) {
            $(colpkr).hide();
            return false;
          }
        });
      });
      </script>
<?php echo $footer; ?>