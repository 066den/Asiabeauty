<?php echo $header; ?>
<!-- --------------------------------------------------------------------- INCLUDE ------------------------------------------------------------------------------------ -->

<link href="view/javascript/dka/dka.css" rel="stylesheet">
<script src="view/javascript/dka/dka.js"></script>

<script type="text/javascript" src="view/javascript/summernote/summernote.js"></script>
<link href="view/javascript/summernote/summernote.css" rel="stylesheet" />
<script type="text/javascript" src="view/javascript/summernote/opencart.js"></script>
<!-- ------------------------------------------------------------------* INCLUDE END *--------------------------------------------------------------------------------- -->

<!-- ----------------------------------------------------------------------- CSS -------------------------------------------------------------------------------------- -->

<style type="text/css">

.dka-width-auto { width: auto !important; }
.dka-text-c-blue { color: #63B8F7; }
.dka-text-c-red { color: crimson; }
.dka-text-c-gold { color: #c49f47; }
.dka-text-c-green { color: forestgreen; }
.dka-hr{ border: 2px solid #bbb; }
.dka-error-c{ color: crimson; }

.border-red { border: 2px solid red; }

.margin-left { margin-left: 4px; }

.dka-shadow-top{ border: 1px solid #dddddd; box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23); }
.dka-general-container { margin: 0 10px; padding: 4px 10px; min-height: 200px; background-color: #FFFFFF }
.dka-module-name{ color: #fff; font-size: 3em; font-weight: bold; font-family: Helvetica; text-shadow: 0 1px 0 #ccc, 0 2px 0 #c9c9c9, 0 3px 0 #bbb, 0 4px 0 #b9b9b9, 0 5px 0 #aaa, 0 6px 1px rgba(0,0,0,.1), 0 0 5px rgba(0,0,0,.1), 0 1px 3px rgba(0,0,0,.3), 0 3px 5px rgba(0,0,0,.2), 0 5px 10px rgba(0,0,0,.25), 0 10px 10px rgba(0,0,0,.2), 0 20px 20px rgba(0,0,0,.15); }

.dka-button-stretch { width: 100%; }
/* OVERLOAD STYLE BOOTSTRAP */
.ui.segment { position: relative; background: #fff; box-shadow: 0 1px 2px 0 rgba(34,36,38,.15); margin: 1rem 0; padding: 1em; border-radius: .28571429rem; border: 1px solid rgba(34,36,38,.15); }
.ui.button { cursor: pointer; display: inline-block; min-height: 1em; outline: 0; border: none; vertical-align: baseline; background: #e0e1e2; color: rgba(0,0,0,.6); font-family: Lato,'Helvetica Neue',Arial,Helvetica,sans-serif; margin: 0 .25em 0 0; padding: .78571429em 1.5em; text-transform: none; text-shadow: none; font-weight: 700; line-height: 1em; font-style: normal; text-align: center; text-decoration: none; border-radius: .28571429rem; box-shadow: 0 0 0 1px transparent inset,0 0 0 0 rgba(34,36,38,.15) inset; -webkit-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none; -webkit-transition: opacity .1s ease,background-color .1s ease,color .1s ease,box-shadow .1s ease,background .1s ease; transition: opacity .1s ease,background-color .1s ease,color .1s ease,box-shadow .1s ease,background .1s ease; will-change: ''; -webkit-tap-highlight-color: transparent; }
.ui.primary.button { background-color: #2185d0; color: #fff; text-shadow: none; background-image: none; box-shadow: 0 0 0 0 rgba(34,36,38,.15) inset; }
.ui.teal.button { background-color: #009c95; color: #fff; text-shadow: none; box-shadow: 0 0 0 0 rgba(34,36,38,.15) inset; }
.ui.header:first-child { margin-top: -.14285em; }
.ui.horizontal.divider { display: table; white-space: nowrap; height: auto; margin: ''; overflow: hidden; line-height: 1; text-align: center; }
.ui.header { border: none; margin: calc(2rem - .14285em) 0 1rem; padding: 0; font-family: Lato,'Helvetica Neue',Arial,Helvetica,sans-serif; font-weight: 700; line-height: 1.2857em; text-transform: none; color: rgba(0,0,0,.87); }
.ui.divider { margin: 1rem 0; line-height: 1; height: 0; font-weight: 700; text-transform: uppercase; letter-spacing: .05em; color: rgba(0,0,0,.85); -webkit-user-select: none; -moz-user-select: none; -ms-user-select: none; user-select: none; -webkit-tap-highlight-color: transparent; font-size: 1rem; }
.ui.horizontal.divider:before { background-position: right 1em top 50%; }
.ui.horizontal.divider:after, .ui.horizontal.divider:before { content: ''; display: table-cell; position: relative; top: 50%; width: 50%; background-repeat: no-repeat; }

.dka-pointer { cursor: pointer; }

/* FIX TOP PROGRESS/INFO */
#top-progress-info { display: none; text-align: center; width: 300px; height: auto; margin: 0 auto; box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23); padding: 10px; }
.dka-pie-content { display: none; }
.dka-pie-content.pie-show { display: block; }
#circle_progress .prog-circle { max-width: 160px; left: 40px; margin: 0; }

/* FOOTER */
#dka-footer { margin-top: 10px; }
.dka-footer-border .mask { overflow:hidden; height:20px; }
.dka-footer-border .mask:after { content:''; display:block; margin: 20px auto 0; width:100%; height:25px; border-radius:125px / 12px; box-shadow:0 0 8px black; }
.dka-footer-social { padding-right: 2.2em; }
/*.dka-footer-social i { font-size: 32px;} */

/* INFO CIRCLE */
.or-spacer { width: 100%; position:relative; z-index: 1; }
.or-spacer .mask { overflow:hidden; height:20px; }
.or-spacer .mask:after { content:''; display:block; margin:-25px auto 0; width:100%; height:25px; border-radius:125px / 12px; box-shadow:0 0 8px black; }
.or-spacer span { size:50px; width:60px; height:60px; position:absolute; bottom:-50%; margin-bottom:-50px/2; left:50%; margin-left:-50px/2; border-radius:100%; box-shadow:0 2px 4px #999; background:white; }
.or-spacer span .i-or-spacer { offset:4px; position:absolute; top:4px; bottom:4px; left:4px; right:4px; border-radius:100%; border:1px dashed #aaa; text-align:center; line-height:48px; font-style:normal; color:#999; }
.or-spacer span .i-or-spacer i{ line-height:48px !important; }

/* SETTINGS DROP DOWN */
.dka-dropdown { width: auto; min-width: 300px; height:auto; padding: 10px; background:#fefefe; position:absolute; display:none; top:54px; right: 1.5%; border: 1px solid #bbb; box-shadow: rgba(0,0,0,0.3) 0px 5px 5px; z-index: 100; }
.wrapper i:hover{ cursor:pointer; color: forestgreen; opacity:0.5; }
.wrapper i{ transition:all 0.8s, color 0.3s 0.3s; margin-right: 0.3em; }

/* ALERT */
.dka-alert { display: none; box-shadow: inset 0px 0px 10px -2px rgba(0,0,0,.75); height: auto; }
.dka-alert table {  margin-bottom: 0; }
.dka-alert-td { width: 80px; }
.dka-alert table td { border-top: 0px !important; }
.alert-icon { width: 40px; padding: 0 10px; }
.alert-icon:hover{ cursor:pointer; color: darkgrey; opacity:0.5; }
.alert-icon i:hover{ cursor:pointer; color: black; opacity:0.5; }
.alert-icon,.alert-icon i{ transition:all 0.8s, color 0.3s 0.3s; }
.dka-alert p,.dka-alert h3 { width: 100%; }
.dka-alert .close { float: right; font-size: 1.5em; position: relative; top: -0.9em; }
.dka-alert .close:hover { color: darken(#53ca74, 40%); }
.dka-alert.success { background: #53ca74; color: #fff; padding: 0.5em 0; }
.dka-alert.info { background: #63B8F7; color: #fff; padding: 0.5em 0; }
.dka-alert.warning { background: #FF3333; color: #fff; padding: 0.5em 0; }
.dka-alert-debug{ display: none; }

/* TABS */
.nav-tabs li.active a{ color: #1c5; border-color: #fff; }
.nav-tabs li.active a:hover, .nav-tabs li.active a:focus{ color: #1ca; border-color: #fff; }
.nav-tabs { box-shadow: 0 -10px 8px -12px rgba(0, 0, 0, 0.55) inset; }
.nav-tabs li.active{ box-shadow: 0 -8px 6px 0 rgba(0, 0, 0, 0.25); }
.nav-tabs .dka-nav-tab-hide { display: none; }
/* TABS BUTTON UL */
#dka-button-panel { float: right; font-size: 1em; position: relative; right: 0.86em; }
#dka-button-panel a,#dka-button-panel i { margin-left: 10px; color: #666666; }
#dka-button-panel a:hover,#dka-button-panel i:hover{ cursor:pointer; color: forestgreen; opacity:0.5; }
/* TABLE CLASS VIEW */
.dka_table td { border-top: none !important; }
.dka_table thead td { font-weight: normal !important; }
.dka_table  thead td span[data-toggle="tooltip"]::after, label.control-label span::after { content: '';}
/* TEMPLATES */
.label_type_export_filter_select:hover { cursor:pointer; color: forestgreen; opacity:0.5; }
.dka_modal .modal-content { padding: 10px; box-shadow: none; border-radius: 0; }
.dka_modal .modal-dialog { box-shadow: 0 1px 70px rgba(0, 0, 0, 0.5); }
.modal-close { color: #bbb; cursor: pointer; font-size: 30px; font-weight: 300; text-align: right; margin-top: -10px; }

#modal_template .well { min-height: 200px; }
#modal_template .table td {border-bottom: 1px solid #ddd; border-top: 0px; }
#modal_template .well input { margin-left: 0px; }
#modal_template .well label { padding-left: 0px; }
#modal_template .well input[type="radio"] { display: none; }
#modal_template .well input[type="radio"]~ i { color: #bbbbbb; transition: all 0.4s; }
#modal_template .well input[type="radio"]:checked ~ i { color: #2C3B3C; text-shadow: 0 1px 0 #ccc, 0 2px 0 #c9c9c9, 0 3px 0 #bbb, 0 4px 0 #b9b9b9, 0 5px 0 #aaa, 0 6px 1px rgba(0, 0, 0, 0.1), 0 0 5px rgba(0, 0, 0, 0.1), 0 1px 3px rgba(0, 0, 0, 0.3), 0 3px 5px rgba(0, 0, 0, 0.2), 0 5px 10px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.2), 0 20px 20px rgba(0, 0, 0, 0.15); }
.td-width-fixed { max-width: 10px; }
#modal_template_table h4 { margin-bottom: 1.5px; }
/* FILTER */
.dka-filter { display: none; height: auto; }
.dka-filter .jumbotron { padding-top: 20px; padding-bottom: 20px; box-shadow: inset 0px 0px 10px -2px rgba(0,0,0,.75); background-color: #F9F9F9; }
.dka-filter .jumbotron i, .dka-filter .jumbotron span { font-size: 1.4em; }
.dka-filter .jumbotron i, .dka-filter .jumbotron span { font-size: 1.4em; }
.dka-filter .jumbotron input[type="radio"] { opacity:0.0; }
.dka-filter .jumbotron input[type="radio"]~ i { transition: all 0.4s;}
.dka-filter .jumbotron input[type="radio"]:checked ~ i { color: #2C3B3C; text-shadow: 0 1px 0 #ccc, 0 2px 0 #c9c9c9, 0 3px 0 #bbb, 0 4px 0 #b9b9b9, 0 5px 0 #aaa, 0 6px 1px rgba(0, 0, 0, 0.1), 0 0 5px rgba(0, 0, 0, 0.1), 0 1px 3px rgba(0, 0, 0, 0.3), 0 3px 5px rgba(0, 0, 0, 0.2), 0 5px 10px rgba(0, 0, 0, 0.25), 0 10px 10px rgba(0, 0, 0, 0.2), 0 20px 20px rgba(0, 0, 0, 0.15); }
.dka-filter-input-hide { display: none; }
.dka-filter .slider-selection { background-image: none; box-shadow: none; }
.dka-filter .slider.slider-horizontal { width: 100%; margin-top: 20px; }
.dka-filter .slider.slider-horizontal .slider-track { height: 20px; box-shadow: 0 1px 4px rgba(0, 0, 0, 0.6) inset; }
.dka-filter .slider.slider-horizontal .slider-tick, .slider.slider-horizontal .slider-handle { margin-top: 0; }
.dka-filter .slider-handle.round { border-radius: 20%; }
/* EXPORT BTN */
.dka-btn-group { width: 65%; }
.dka-btn-group-gen { width: 80%; }
.dka-btn-width-full { width: 100%; }
.dka-btn-group-split { width: 20%; }
.dka-btn-group .dropdown-menu { width: 100%; }
/* EXPORT QUEUE */
#export_queue { margin-top: 20px; display: none; }
#export_queue button { margin-left: 4px; }
.dka-btn-group li { cursor: pointer; }

/* IMPORT */
#import_header .import-header-t { font-size: 1.5em; font-weight: 500; font-family: 'Open Sans', sans-serif; }
/* PROGRESS BAR IMPORT */
#progress-upload-files .progress { height: 34px; margin-bottom: 0px; }
#progress-upload-files span.fa-stack { color: #337ab7; }
#progress-upload-files span.fa-stack:hover { cursor: pointer; color: #286090; }
.dka-fa-stack-size { font-size: 2em; }
.dka-fa-stack-size:hover { cursor: pointer; color: #286090; }
.dka-fa-stack-nosize:hover { cursor: pointer; color: #286090; }
#progress-upload-files .dka-fa-stack-size { left: 10px; }

.dka-label-files { padding: 0.6em 1.4em; font-size: 0.9em; }
.dka-analize-files { padding: 0.2em 1em; font-size: 1.4em; }
.dka-name-files { font-weight: 600; font-size: 1.4em; margin-bottom: 0px; }
#table_files_upload { display: none; }
#btn_import { display: none; }

/* TEMPLATES */
#tab_templates { min-height: 200px; }
.DragField { font-weight: 800; }
.td-arrow-witdth-fix{ max-width: 15px; min-width: 15px; }
.td-arrow-witdth-fix20{ max-width: 20px; min-width: 20px; }
.field-new { font-weight: 800; }
#template_field_list { display: none; }
.form-group + .form-group { border-top: none !important; }

/* MAIN */
.dka-tab-default-panel .label { margin-left: 4px !important; padding: 6px; }

</style>

<!-- --------------------------------------------------------------------* CSS END *----------------------------------------------------------------------------------- -->

<?php echo $column_left; ?>

<!-- ----------------------------------------------------------------------- HTML ------------------------------------------------------------------------------------- -->

<div id="content">
  <div class="page-header">
  	<div class="container-fluid">
		  <ul class="breadcrumb">
  			<?php foreach ($breadcrumbs as $breadcrumb) { ?>
  			<li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
  			<?php } ?>
		  </ul>
    </div>
	</div>
  <!-- PROGRESS TOP -->
  <div id="top-progress-info" class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
      <div class="row"><div class="col-sm-12 dka-pie-content"><div id="circle_progress"></div></div></div>
    </div>
  </div>
  <div class="modal fade dka_modal" id="modal_template" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-md">
  		<div class="modal-content">
        <div class="row">
          <div class="col-sm-12">
            <h3 class="col-sm-12"><?php echo $text_template_select_default; ?></h3>
          </div>
        </div>
        <br />
        <div class="row">
          <div class="col-sm-12">
            <div class="well well-sm" style="height: 150px; overflow: auto;">
              <form id="form_template_save"></form>
              <table class="table table-condensed" id="modal_template_table">
              </table>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-4">
            <button type="button" class="btn btn-primary dka-button-stretch" onclick="dkaTemplateEdit();"><?php echo $text_select; ?></button>
          </div>
          <div class="col-sm-4 col-sm-offset-4">
            <button type="button" class="btn btn-default dka-button-stretch" data-dismiss="modal" aria-label="Close"><?php echo $text_close; ?></button>
          </div>
        </div>
			</div>
		</div>
  </div>
  <div class="modal fade dka_modal" id="modal_default" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg"><div class="modal-content"></div></div>
  </div>
  <div class="modal fade dka_modal" id="modal_error" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-md">
  		<div class="modal-content">
        <div class="row"><div class="col-sm-12"><h3 class="ui horizontal divider header"></h3></div></div>
        <br />
        <div class="row"><div class="col-sm-12"><p class="ui segment"></p></div></div>
			</div>
		</div>
  </div>
  <div class="modal fade dka_modal_fade" id="modal_fade" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-md"><div class="modal-content"></div></div>
  </div>
  <div class="modal fade dka_modal" id="test_modal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="row">
          <div class="col-sm-9"><h2 id="test_ModalHeader" class="text-left"><?php echo $text_test_modal_h; ?></h2></div>
          <div class="col-sm-3">
            <button type="button" class="ui button primary pull-right" onclick="stopCloseTest()"><i class="fa fa-close"></i> <?php echo $text_test_modal_stop_close; ?></button>
          </div>
        </div>
        <hr />
        <div class="row">
          <div class="col-sm-12">
            <table class="table table-bordered">
              <thead><tr>
                <th><?php echo $text_test_modal_th_1; ?></th>
                <th><?php echo $text_test_modal_th_2; ?></th>
                <th><?php echo $text_test_modal_th_3; ?></th>
                <th><?php echo $text_test_modal_th_4; ?></th>
                <th><?php echo $text_test_modal_th_5; ?></th>
              </tr></thead>
              <tbody class="text-center"><tr>
                <th id="test_MethodTest" class="text-center"></th>
                <td id="test_CurrentCount"></td>
                <td id="test_LastSuccess"></td>
                <td id="test_LastError"></td>
                <td><button type="button" class="ui button primary" onclick="stopTest();"><i class="fa fa-close"></i> <?php echo $text_test_modal_stop; ?></button></td>
              </tr></tbody>
            </table>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-12">
            <h3 id="test_resultExport" class="text-center"></h3>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="modal fade dka_modal" id="modal_support" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
    	<div class="modal-content">
        <div class="row">
          <div class="col-sm-9"><h2 id="support_modal_h" class="text-left"></h2></div>
          <div class="col-sm-3 text-right">
            <button id="button_send" data-toggle="tooltip" title="<?php echo $text_support_modal_send; ?>" class="btn btn-primary" onclick="supportSend()"><i class="fa fa-envelope"></i></button>
            <button data-toggle="tooltip" title="<?php echo $text_support_modal_close; ?>" class="btn btn-default" data-dismiss="modal"><i class="fa fa-close"></i></button>
          </div>
        </div>
        <hr />
        <form class="form-horizontal" id="form_support">
          <div class="form-group required ui segment">
            <label class="col-sm-2 control-label" for="input_answer"><?php echo $text_support_modal_answer; ?></label>
            <div class="col-sm-10">
              <input type="text" name="answer" value="<?php echo $support_answer; ?>" placeholder="<?php echo $text_support_modal_answer; ?>" id="input_answer" class="form-control" />
            </div>
          </div>
          <div class="form-group required ui segment">
            <label class="col-sm-2 control-label" for="input_answer"><?php echo $text_support_modal_copy; ?></label>
            <div class="col-sm-10">
              <input type="text" name="answer_copy" value="" placeholder="<?php echo $text_support_modal_copy; ?>" id="input_answer_copy" class="form-control" />
            </div>
          </div>
          <div class="form-group required ui segment">
            <label class="col-sm-2 control-label" for="input_subject"><?php echo $text_support_modal_subject; ?></label>
            <div class="col-sm-10">
              <input type="text" name="subject" value="" placeholder="<?php echo $text_support_modal_subject; ?>" id="input_subject" class="form-control" />
            </div>
          </div>
          <div class="form-group required ui segment">
            <label class="col-sm-2 control-label" for="input_message"><?php echo $text_support_modal_message; ?></label>
            <div class="col-sm-10">
              <textarea name="message" placeholder="<?php echo $text_support_modal_message; ?>" id="input_message" class="form-control summernote"></textarea>
            </div>
          </div>
        </form>
    	</div>
  	</div>
  </div>
  <div class="container-fluid dka-general-container dka-shadow-top">
    <div class="row">
      <div class="col-sm-6"><h2 class="dka-module-name pull-left"><?php echo $heading_title; ?></h2><output for="range"></output></div>
      <div class="col-sm-6">
        <div class="row">
          <div class="col-xs-12 col-sm-12 col-md-12">
            <!-- SLIDE SETTINGS ..............................................................--->
            <div class="wrapper pull-right">
              <i class="fa fa-bars fa-3x btn-right" data-toggle="tooltip" title="<?php echo $entry_slide_settings_info ?>"></i>
              <form id="dka_slide_settings"></form>
              <div class="dka-dropdown">
                <div class="row">
                  <label class="col-xs-5 col-sm-2 col-md-2" for="input-export-limit"><i class="fa fa-list fa-3x" data-toggle="tooltip" title="<?php echo $entry_export_label_info ?>"></i></label>
                  <div class="col-xs-7 col-sm-10 col-md-10">
                    <?php if ($dka_export_limit) { ?>
                    <input type="text" name="dka_export_limit" value="<?php echo $dka_export_limit; ?>" id="input-export-limit" class="form-control" form="dka_slide_settings" />
                    <?php } else { ?>
                    <input type="text" name="dka_export_limit" value="500" id="input-export-limit" class="form-control" form="dka_slide_settings" />
                    <?php } ?>
                  </div>
                </div>
                <div class="row">
                  <label class="col-xs-5 col-sm-2 col-md-2" for="input-export-seo-status"><i class="fa fa-magic fa-3x" data-toggle="tooltip" title="<?php echo $entry_export_seo_info ?>"></i></label>
                  <div class="col-xs-7 col-sm-10 col-md-10">
                    <select name="dka_export_seo_status" id="input-export-seo-status" class="form-control" form="dka_slide_settings">
                    <?php if ($dka_export_seo_status) { ?>
                    <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                    <option value="0"><?php echo $text_disabled; ?></option>
                    <?php } else { ?>
                    <option value="1"><?php echo $text_enabled; ?></option>
                    <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                    <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="row">
                  <label class="col-xs-5 col-sm-2 col-md-2" for="dka_export_import_language"><i class="fa fa-language fa-3x" data-toggle="tooltip" title="<?php echo $entry_export_lang_info ?>"></i></label>
                  <div class="col-xs-7 col-sm-10 col-md-10">
                    <select name="dka_export_import_language" id="dka_export_import_language" class="form-control" form="dka_slide_settings">
                    <?php foreach ($languages as $language) { ?>
                    <?php if ($language['language_id'] == $dka_export_import_language || (strlen(trim($dka_export_import_language)) < 1 && $language['code'] == 'ru')) { ?>
                    <option value="<?php echo $language['language_id']; ?>" selected="selected"><?php echo $language['name']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $language['language_id']; ?>"><?php echo $language['name']; ?></option>
                    <?php } ?>
                    <?php } ?>
                    </select>
                  </div>
                </div>
                <div class="row">
                  <div class="col-xs-12 col-sm-12 col-md-12">
                    <input type="button" value="<?php echo $text_save; ?>" class="btn btn-info form-control" id="btn-slide-edit-settings" onclick="dkaSettingsSlideEdit();" />
                  </div>
                </div>
              </div>
            </div>
            <!-- SLIDE SETTINGS ------------------------------------------------------------------->
          </div>
        </div>
      </div>
    </div>
    <div class="or-spacer">
      <div class="mask"></div>
        <span><i class="i-or-spacer" id="dka-circle-info"><i class="fa fa-check-square" title="<?php echo $dkaModuleDateRelease; ?>" data-toggle="tooltip"> <?php echo $dkaModuleMajorVersion . "." . $dkaModuleMinorVersion . "." . $dkaModuleBuildVersion; ?></i></i></span>
    </div>
    <!-- DKA ALERT ..............................................................--->
    <div class="row">
      <div class="col-sm-12">
        <aside class="alert dka-alert success">
          <table class="table">
            <tr><td class="dka-alert-td">
              <div class="alert-icon" data-toggle="tooltip" title="<?php echo $entry_text_error; ?>"><i class="fa fa-thumbs-o-up fa-4x pull-left"></i></div>
            </td><td>
              <div id="alert-content"></div>
            </td><td>
              <i class="fa fa-times close"></i>
            </td></tr>
            <tr class="dka-alert-debug"><td colspan="3">
              <p></p>
            </td></tr>
            <tr><td colspan="3">
              <button id="btn_sent_support" data-toggle="tooltip" title="<?php echo $tooltip_alert_mail_send; ?>" class="btn btn-warning" onclick="modalSupport('w')"><i class="fa fa-envelope"></i> <?php echo $text_alert_mail_send; ?></button>
            </td></tr>
          </table>
        </aside>
      </div>
    </div>
    <!-- DKA ALERT ------------------------------------------------------------------->
    <div class="row">
      <div class="col-sm-12">
        <div>
          <!-- Nav tabs -->
          <ul class="nav nav-tabs" role="tablist">
            <li role="presentation"><a href="#tab_default" onclick="dkaMainLoadData()" aria-controls="export" role="tab" data-toggle="tab" class="text-center"><i class="fa fa-home fa-4x"></i><br /> <?php echo $text_default; ?></a></li>
            <li role="presentation"><a href="#export" aria-controls="export" role="tab" data-toggle="tab" class="text-center"><i class="fa fa-arrow-circle-down fa-4x"></i><br /> <?php echo $text_export; ?></a></li>
            <li role="presentation"><a href="#import" aria-controls="import" role="tab" data-toggle="tab" class="text-center"><i class="fa fa fa-arrow-circle-o-up fa-4x"></i><br /> <?php echo $text_import; ?></a></li>
            <li role="presentation"><a href="#tab_templates" onclick="templateMain()" aria-controls="tab_templates" role="tab" data-toggle="tab" class="text-center"><i class="fa fa fa-sliders fa-4x"></i><br /> <?php echo $text_templates; ?></a></li>
            <?php if($dka_export_log_status){ ?>
            <li role="presentation"><a href="#tab_log" onclick="getLogText()" aria-controls="tab_log" role="tab" data-toggle="tab" class="text-center"><i class="fa fa-pencil-square-o fa-4x"></i><br /> <?php echo $text_log; ?></a></li>
            <?php } ?>
            <li role="presentation"><a href="#tab_result" aria-controls="tab_result" role="tab" data-toggle="tab" class="text-center dka-nav-tab-hide"></a></li>
            <li role="presentation"><a href="#tab_demo" aria-controls="tab_demo" role="tab" data-toggle="tab" class="text-center dka-nav-tab-hide"></a></li>
            <div id="dka-button-panel">
              <a href="#tab_settings" aria-controls="tab_settings" role="tab" data-toggle="tab"><i class="fa fa-cog fa-3x" data-toggle="tooltip" title="<?php echo $entry_settings_info; ?>"></i></a>
            </div>
          </ul>
          <!-- TAB PANELS -->
          <div class="tab-content">
            <!-- EXPORT -->
            <div role="tabpanel" class="tab-pane fade" id="export">
              <!-- EXPORT SELECT -->
              <div class="row">
                <div class="col-sm-12">
                  <div class="form-group">
                    <table class="table dka_table">
                      <tr><td class="text-center">
                        <label id="label_type_export" data-toggle="tooltip" title="<?php echo $entry_label_export_type ?>"><i class="fa fa-list-ol fa-3x pull-right"></i></label>
                      </td><td>
                        <select name="type_export" id="type_export" class="form-control" onchange="filterDKA();">
                    			<?php for($i = 0; $i < count($type_exports); $i++){ ?>
                    			<option value="<?php echo $type_exports[$i]['type']; ?>"><?php echo $type_exports[$i]['name']; ?></option>
                    			<?php } ?>
                    		</select>
                      </td><td class="text-center">
                        <label for="type_export_format" id="label_type_export_format" data-toggle="tooltip" title="<?php echo $entry_label_export_format ?>"><i class="fa fa-file-text fa-3x pull-right"></i></label>
                      </td><td colspan="2">
                        <select name="type_export_format" id="type_export_format" class="form-control">
                    			<?php for($i = 0; $i < count($format_exports); $i++){ ?>
                          <?php $format_select = ''; count($format_exports) == 2 ? $format_select = 'selected' : null ; ?>
                    			<option value="<?php echo $format_exports[$i]['type']; ?>" <?php echo $format_select; ?> ><?php echo $format_exports[$i]['name']; ?></option>
                    			<?php } ?>
                    		</select>
                      </td></tr>
                      <tr><td class="text-center">
                        <label for="type_export_filter" id="label_type_export_filter" data-toggle="tooltip" title="<?php echo $entry_label_export_filter ?>"><i class="fa fa-filter fa-3x pull-right"></i></label>
                      </td><td>
                        <select name="type_export_filter" id="type_export_filter" class="form-control" onchange="filterDKA();" disabled>
                    			<?php for($i = 0; $i < count($filter_exports); $i++){ ?>
                    			<option value="<?php echo $filter_exports[$i]['type']; ?>"><?php echo $filter_exports[$i]['name']; ?></option>
                    			<?php } ?>
                    		</select>
                      </td><td class="text-center">
                        <label for="dka_export_import_template" id="label_type_export_filter" data-toggle="tooltip" title="<?php echo $entry_label_export_template ?>"><i class="fa fa-sliders fa-3x pull-right"></i></label>
                      </td><td>
                        <select name="dka_export_import_template" id="dka_export_import_template" class="form-control dka_export_import_template" disabled>
                        </select>
                      </td><td class="text-center dka-td-template-border">
                        <label class="pull-right label_type_export_filter_select" data-toggle="tooltip" title="<?php echo $entry_label_export_template_select ?>" onclick="templateSelect();"><i class="fa fa-list fa-3x pull-right"></i></label>
                      </td></tr>
										</table>
                  </div>
                </div>
							</div>
              <!-- FILTER SLIDE -->
              <div class="row dka-filter">
                <div class="col-sm-12">
                  <div class="jumbotron">
                    <div class="row">
                      <div class="col-sm-12">
                        <table class="table table-bordered">
                          <tr>
                            <td class="text-center">
                              <div class="radio"><label>
                                <input type="radio" name="filter_radio_p" value="filter_category" /><i class="fa fa-bars"></i> <i><?php echo $text_filter_category_p; ?></i>
                              </label></div>
                            </td>
                            <td class="text-center">
                              <div class="radio"><label>
                                <input type="radio" name="filter_radio_p" value="filter_price" /><i class="fa fa-rub"></i> <i><?php echo $text_filter_price_p; ?></i>
                              </label></div>
                            </td>
                            <td class="text-center">
                              <div class="radio"><label>
                                <input type="radio" name="filter_radio_p" value="filter_status" /><i class="fa fa-check-square"></i> <i><?php echo $text_filter_status_p; ?></i>
                              </label></div>
                            </td>
                            <td class="text-center">
                              <div class="radio"><label>
                                <input type="radio" name="filter_radio_p" value="filter_count" /><i class="fa fa-building-o"></i> <i><?php echo $text_filter_count_p; ?></i>
                              </label></div>
                            </td>
                            <td class="text-center">
                              <div class="radio"><label>
                                <input type="radio" name="filter_radio_p" value="filter_seo" /><i class="fa fa-magic"></i> <i><?php echo $text_filter_seo_p; ?></i></label>
                              </div>
                            </td>
                          </tr>
                        </table>
                      </div>
                    </div>
                    <div class="row dka-filter-input-hide dka-filter-category-p">
                      <div class="col-sm-12">
                        <select name="type_export_filter_category_p" id="type_export_filter_category_p" class="form-control"></select>
                      </div>
                    </div>
                    <div class="row dka-filter-input-hide dka-filter-price-p">
                      <div class="col-sm-12">
                        <input type="text"  id="type_export_filter_price_p" name="type_export_filter_price_p" class="form-control" data-slider-step="5"/>
                      </div>
                    </div>
                    <div class="row dka-filter-input-hide dka-filter-status-p">
                      <div class="col-sm-12">
                        <select name="type_export_filter_status_p" id="type_export_filter_status_p" class="form-control">
                          <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                          <option value="0"><?php echo $text_disabled; ?></option>
                        </select>
                      </div>
                    </div>
                    <div class="row dka-filter-input-hide dka-filter-count-p">
                      <div class="col-sm-12">
                        <input type="text"  id="type_export_filter_count_p" name="type_export_filter_count_p" class="form-control" data-slider-step="5"/>
                      </div>
                    </div>
                    <div class="row dka-filter-input-hide dka-filter-seo-p">
                      <div class="col-sm-12">
                        <select name="type_export_filter_seo_p" id="type_export_filter_seo_p" class="form-control">
                          <option value="1" selected="selected"><?php echo $text_filter_seo_on_p; ?></option>
                          <option value="0"><?php echo $text_filter_seo_off_p; ?></option>
                        </select>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- EXPORT BTN -->
              <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4 text-center">
                  <div class="btn-group dka-btn-group">
                    <button type="button" class="btn btn-primary dka-btn-group-gen" onclick="dkaExportAddQueueValidate();"><i class="fa fa-history"></i> <?php echo $text_at_queue; ?>...</button>
                    <button type="button" class="btn btn-info dropdown-toggle dka-btn-group-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <span class="caret"></span>
                      <span class="sr-only"></span>
                    </button>
                    <ul class="dropdown-menu">
                      <li class="text-center"><a onclick="dkaExport();"><i class="fa fa-arrow-circle-down fa-2x"> <?php echo $text_export; ?></i></a></li>
                    </ul>
                  </div>
                </div>
                <div class="col-sm-4"></div>
              </div>
              <div class="row">
                <div class="col-sm-12">
                  <table class="table table-bordered table-hover" id="export_queue">
                    <thead>
                      <tr>
                        <th>№</th>
                        <th><i class="fa fa-list-ol"></i> <?php echo $text_queue_type_export_t; ?></th>
                        <th><i class="fa fa-file-text"></i> <?php echo $text_queue_format_export_t; ?></th>
                        <th><i class="fa fa-filter"></i> <?php echo $text_queue_filter_t; ?></th>
                        <th><?php echo $text_queue_filter_name_t; ?></th>
                        <th><i class="fa fa-tasks"></i> <?php echo $text_queue_count_t; ?></th>
                        <th class="text-right"><?php echo $text_queue_action_t; ?></th>
                      </tr>
                    </thead>
                    <tbody id="export_queue_body">
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <!-- IMPORT -->
            <div role="tabpanel" class="tab-pane fade" id="import">
              <div id="import_header"></div>
              <hr />
              <!-- IMPORT SELECT -->
              <div class="row">
                <div class="col-sm-12">
                  <div class="form-group">
                    <table class="table dka_table">
                      <tbody>
                        <tr id="progress-upload-files" class="ui segment">
                          <td class="text-center col-sm-1">
                            <span class="fileinput-button label-upload-files fa-stack fa-lg dka-fa-stack-size" data-toggle="tooltip" title="<?php echo $entry_label_upload_files; ?>">
                              <i class="fa fa-square-o fa-stack-2x"></i>
                              <i class="fa fa-upload fa-stack-1x"></i>
                              <input id="fileupload" type="file" name="files[]" multiple>
                            </span>
                          </td>
                          <td colspan="4">
                            <div id="progress" class="progress"><div class="progress-bar progress-bar-success" style="width: 0%;"></div></div>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                    <div class="ui segment" id="table_files_upload">
                      <table class="table table-bordered table-hover">
                        <thead>
                          <tr>
                            <td>№</td>
                            <td><?php echo $text_import_upload_th_1; ?></td>
                              <td><?php echo $text_import_upload_th_2; ?></td>
                              <td><?php echo $text_import_upload_th_3; ?></td>
                              <td class="text-right"><?php echo $text_import_upload_th_4; ?></td>
                            </tr>
                          </thead>
                          <tbody id="files_upload"></tbody>
                          <tfoot>
                            <tr>
                              <td colspan="4"></td>
                              <td class="text-right">
                                <span class="fa-stack fa-lg dka-fa-stack-nosize dka-text-c-gold" data-toggle="tooltip" title="<?php echo $entry_label_clear_files; ?>" onclick="filesUploadDelete(0,true)">
                                  <i class="fa fa-square-o fa-stack-2x"></i>
                                  <i class="fa fa-trash fa-stack-1x"></i>
                                </span>
                              </td>
                            </tr>
                          </tfoot>
                        </table>
                      </div>
                      <div class="row">
                        <div class="col-sm-4"></div>
                        <div class="col-sm-4 text-center">
                          <button type="button" class="ui button primary dka-btn-group-gen" id="btn_import" onclick="dkaImportStartMain();"><i class="fa fa-history"></i> <?php echo $text_import; ?></button>
                        </div>
                        <div class="col-sm-4"></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div role="tabpanel" class="tab-pane fade" id="tab_default">
                <div class="row">
                  <div class="col-sm-7 col-md-6">
                    <div class="ui label blue pull-left dka-pointer" onclick="dkaMainLoadData()"><?php echo $text_home_update; ?><div class="detail" id="main_reload"></div></div>
                  </div>
                  <div class="col-sm-5 col-md-6 col-xs-12 dka-tab-default-panel">
                    <div class="ui label red pull-right dka-pointer" title="<?php echo $text_home_clear_folder; ?>" data-toggle="tooltip" id="btnClear" onclick="clearDirectories()"><i class="fa fa-trash"></i></div>
                    <div class="ui label pull-right">Uploads<div class="detail" id="main_uploads_files"></div></div>
                    <div class="ui label pull-right">Downloads<div class="detail" id="main_downloads_files"></div></div>
                    <div class="ui label yellow pull-right"><?php echo $text_home_templates; ?><div class="detail" id="main_templates_count"></div></div>
                  </div>
                </div>
                <div class="row ui segment">
                  <div class="col-sm-6">
                    <h4><?php echo $text_type_product; ?></h4><hr />
                    <table class="table table-hover table-striped">
                      <tbody id="main_products"></tbody>
                    </table>
                  </div>
                  <div class="col-sm-6">
                    <h4><?php echo $text_type_category; ?></h4><hr />
                    <table class="table table-hover table-striped">
                      <tbody id="main_categories"></tbody>
                    </table>
                  </div>
                </div>
              </div>
              <div role="tabpanel" class="tab-pane fade" id="tab_templates"></div>
              <div role="tabpanel" class="tab-pane fade" id="tab_result"></div>
              <!-- TAB LOG -->
              <div role="tabpanel" class="tab-pane fade" id="tab_log">
                <div class="row">
                  <div class="col-sm-12 dka-tab-default-panel">
                    <div class="ui label pull-right dka-pointer" onclick="dkaLogClear()"><?php echo $text_log_tab_clear; ?></div>
                    <a href="<?php echo $urlLogFile ?>" target="_blank" class="ui label yellow pull-right dka-pointer"><?php echo $text_log_tab_download; ?></a>
                  </div>
                </div>
                <div class="row">
                  <div class="col-sm-12">
                    <div class="form-group">
                      <div class="col-sm-12">
                        <textarea id="text_log_input" class="form-control" rows="30"></textarea>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <!-- TAB SETTINGS -->
              <div role="tabpanel" class="tab-pane fade" id="tab_settings">
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form_settings" class="form-horizontal">
                  <div class="row">
                    <div class="col-sm-9 pull-left">
                      <h2><?php echo $text_settings_modal_h; ?></h2>
                    </div>
                    <div class="col-sm-3">
                      <button type="submit" form="form_settings" data-toggle="tooltip" title="" class="btn btn-primary pull-right" data-original-title="<?php echo $text_save; ?>"><?php echo $text_save; ?></button>
                    </div>
                  </div>
                  <div class="row ui segment">
                    <span class="ui green ribbon label"> <?php echo $text_settings_general; ?></span>
                    <div class="form-group">
                      <label class="col-sm-3 control-label"><?php echo $text_settings_language; ?></label>
                      <div class="col-sm-9">
                        <select name="dka_export_import_language" class="form-control">
                          <?php foreach ($languages as $language) { ?>
                          <?php if ($language['language_id'] == $dka_export_import_language || (strlen(trim($dka_export_import_language)) < 1 && $language['code'] == 'ru')) { ?>
                          <option value="<?php echo $language['language_id']; ?>" selected="selected"><?php echo $language['name']; ?></option>
                          <?php } else { ?>
                          <option value="<?php echo $language['language_id']; ?>"><?php echo $language['name']; ?></option>
                          <?php } ?>
                          <?php } ?>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label"><?php echo $text_settings_log_status; ?></label>
                      <div class="col-sm-9">
                        <select name="dka_export_log_status" class="form-control">
                          <?php if ($dka_export_log_status) { ?>
                          <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                          <option value="0"><?php echo $text_disabled; ?></option>
                          <?php } else { ?>
                          <option value="1"><?php echo $text_enabled; ?></option>
                          <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                          <?php } ?>
                        </select>
                      </div>
                    </div>
                    <?php if ($dka_export_log_status) { ?>
                    <div class="form-group">
                      <label class="col-sm-3 control-label"><?php echo $text_settings_log_level; ?></label>
                      <div class="col-sm-9">
                        <select name="dka_export_log_level" class="form-control">
                          <?php if ($dka_export_log_level) { ?>
                          <option value="2" selected="selected">2</option>
                          <option value="1">1</option>
                          <?php } else { ?>
                          <option value="2">2</option>
                          <option value="1" selected="selected">1</option>
                          <?php } ?>
                        </select>
                      </div>
                    </div>
                    <?php } ?>
                  </div>
                  <div class="row ui segment">
                    <span class="ui yellow ribbon label"><?php echo $text_export_import; ?></span>
                    <div class="form-group">
                      <label class="col-sm-3 control-label"><?php echo $text_settings_export_limit; ?></label>
                      <div class="col-sm-9">
                        <?php if ($dka_export_limit) { ?>
                          <input type="text" name="dka_export_limit" value="<?php echo $dka_export_limit; ?>" class="form-control" />
                        <?php } else { ?>
                          <input type="text" name="dka_export_limit" value="500" id="input-export-count" class="form-control" />
                        <?php } ?>
                      </div>
                    </div>
                  </div>
                  <div class="row ui segment">
                    <span class="ui blue ribbon label"><?php echo $text_settings_seo; ?></span>
                    <div class="form-group">
                      <label class="col-sm-3 control-label"><?php echo $text_settings_seo_status; ?></label>
                      <div class="col-sm-9">
                        <select name="dka_export_seo_status" class="form-control">
                          <?php if ($dka_export_seo_status) { ?>
                          <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                          <option value="0"><?php echo $text_disabled; ?></option>
                          <?php } else { ?>
                          <option value="1"><?php echo $text_enabled; ?></option>
                          <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                          <?php } ?>
                        </select>
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-sm-3 control-label"><?php echo $text_settings_seo_end; ?></label>
                      <div class="col-sm-9">
                        <?php if ($dka_export_seo_end) { ?>
                        <input type="text" name="dka_export_seo_end" value="<?php echo $dka_export_seo_end; ?>" class="form-control" />
                        <?php } else { ?>
                        <input type="text" name="dka_export_seo_end" value=".html" class="form-control" />
                        <?php } ?>
                      </div>
                    </div>
                  </div>
                <div class="row ui segment">
                  <span class="ui olive ribbon label"><?php echo $text_settings_update_copyright; ?></span>
                  <div class="form-group">
                    <label class="col-sm-3 col-xs-3 control-label"><?php echo $text_settings_update_check; ?></label>
                    <div class="col-sm-8 col-xs-5">
                      <select name="dka_export_update" class="form-control">
                        <?php if ($dka_export_update || strlen(trim($dka_export_update)) < 1) { ?>
                        <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                        <option value="0"><?php echo $text_disabled; ?></option>
                        <?php } else { ?>
                        <option value="1"><?php echo $text_enabled; ?></option>
                        <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                        <?php } ?>
                      </select>
                    </div>
                    <div class="col-sm-1 col-xs-4">
                      <button id="btnUpdateSearchManual" type="button" class="btn btn-info pull-right" onclick="dkaUpdateModule();"><i class="fa fa-refresh"></i> <?php echo $text_settings_update_check; ?></button>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label"><?php echo $text_settings_update_show_modal; ?></label>
                    <div class="col-sm-9">
                      <select name="dka_export_update_modal" class="form-control">
                        <?php if ($dka_export_update_modal || strlen(trim($dka_export_update_modal)) < 1) { ?>
                        <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                        <option value="0"><?php echo $text_disabled; ?></option>
                        <?php } else { ?>
                        <option value="1"><?php echo $text_enabled; ?></option>
                        <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                        <?php } ?>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-3 control-label"><?php echo $text_settings_info_footer; ?></label>
                    <div class="col-sm-9">
                      <select name="dka_export_copyright" class="form-control">
                        <?php if ($dka_export_copyright || strlen(trim($dka_export_copyright)) < 1) { ?>
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
              </form>
            </div>
          </div>
        </div>
      </div>
        </div>
        <div class="dka-footer-border">
            <div class="mask"></div>
        </div>
        <div class="row" id="dka-footer">
            <?php if ($dka_export_copyright || strlen(trim($dka_export_copyright)) < 1) { ?>
            <div class="col-sm-6">
              <span class="ui teal label dka-pointer" onclick="modalSupport('')" data-toggle="tooltip" title="<?php echo $text_footer_support; ?>"></span>
            </div>
            <div class="col-sm-6 dka-footer-social">
                <a href="https://anonym.to/?http://dreamclever.ru" target="_blank">
                    <span class="fa-stack fa-lg pull-right" data-toggle="tooltip" title="<?php echo $text_footer_site; ?>">
                      <i class="fa fa-square-o fa-stack-2x fa-2x"></i>
                      <i class="fa fa-globe fa-stack-1x"></i>
                    </span>
                </a>
                <a href="https://anonym.to/?https://twitter.com/dreamtooz" target="_blank">
                  <span class="fa-stack fa-lg pull-right" data-toggle="tooltip" title="<?php echo $text_footer_twitter; ?>">
                    <i class="fa fa-square-o fa-stack-2x fa-2x"></i>
                    <i class="fa fa-twitter fa-stack-1x"></i>
                  </span>
                </a>
                <a href="https://anonym.to/?http://www.youtube.com/channel/UCWdmR3tpvXkzubAZugUQLdw" target="_blank">
                    <span class="fa-stack fa-lg pull-right" data-toggle="tooltip" title="<?php echo $text_footer_youtube; ?>">
                      <i class="fa fa-square-o fa-stack-2x fa-2x"></i>
                      <i class="fa fa-youtube fa-stack-1x"></i>
                    </span>
                </a>
                <a href="https://anonym.to/?http://vk.com/dreamclever" target="_blank">
                  <span class="fa-stack fa-lg pull-right" data-toggle="tooltip" title="<?php echo $text_footer_vk; ?>">
                    <i class="fa fa-square-o fa-stack-2x fa-2x"></i>
                    <i class="fa fa-vk fa-stack-1x"></i>
                  </span>
                </a>
            </div>
            <?php } ?>
        </div>
    </div>
</div>

<!-- --------------------------------------------------------------------* HTML END *---------------------------------------------------------------------------------- -->

<!-- ------------------------------------------------------------------------ JS -------------------------------------------------------------------------------------- -->

<script type="text/javascript">

// CONSTANT
// CIRCLE VERSION MODULE
var dka_circle_info        = '<i class="fa fa-check-square" title="<?php echo $dkaModuleDateRelease; ?>" data-toggle="tooltip"> <?php echo $dkaModuleMajorVersion . "." . $dkaModuleMinorVersion . "." . $dkaModuleBuildVersion; ?></i>';
// SPINNER LOAD PULSE S1
var dka_spinner_pulse_1    = '<i class="fa fa-spinner fa-pulse dka-text-c-blue"></i>';
// SPINNER LOAD PULSE S3
var dka_spinner_pulse_3    = '<i class="fa fa-spinner fa-pulse fa-3x dka-text-c-blue"></i>';
// SPINNER LOAD COG S5, TEXT: BLUE
var dka_spinner_cog_5_text = '<i class="fa fa-cog fa-spin fa-5x dka-text-c-blue"></i><br /><label class="dka-text-c-blue"><?php echo $text_loading; ?>...</label>';
// PROGRESS LOAD
var dka_progress_rainbow   = '';
// IMPORT HEADER
var dka_import_hdefault = '<div class="row"><div class="col-sm-12 text-uppercase dka-text-c-gold"><i class="fa fa-hdd-o fa-2x pull-left"></i><span class="import-header-t"><?php echo $text_import_hdefault; ?></span></div></div>';
var dka_import_hupload = '<div class="row"><div class="col-sm-12 text-uppercase dka-text-c-blue"><i class="fa fa-spinner fa-pulse fa-2x pull-left"></i><span class="import-header-t"><?php echo $text_import_hupload; ?></span></div></div>';
var dka_import_hstandby = '<div class="row"><div class="col-sm-12 text-uppercase dka-text-c-red"><i class="fa fa-spinner fa-pulse fa-2x pull-left"></i><span class="import-header-t"><?php echo $text_import_hstandby; ?></span></div></div>';
var dka_import_hanalize = '<div class="row"><div class="col-sm-12 text-uppercase dka-text-c-red"><i class="fa fa-spinner fa-pulse fa-2x pull-left"></i><span class="import-header-t"><?php echo $text_import_hanalize; ?></span></div></div>';
var dka_import_hready = '<div class="row"><div class="col-sm-12 text-uppercase dka-text-c-green"><i class="fa fa-check-circle-o fa-2x pull-left"></i><span class="import-header-t"><?php echo $text_import_hready; ?></span></div></div>';
// ***********************************************************************

// CONSTANT, RELOAD AFTER FINISH
var exportTotal    = 0;
var exportTotalNow = 0;
var exportStart    = 0;
var exportLimit    = 0;
var exportProcent = 0; // EXPORT PROGRESS VALUE
var queueAr = []; // EXPORT QUEUE
var queueArTable = []; // QUEUE TABLE HTML
var queueId = 1; // QUEUE COUNT
var arExport = []; // EXPORT ROW VALUE
var arExportHead = []; // EXPORT TABLE HEADER
var filesGetImport = []; // ARRAY FILES TO IMPORT
var filesGetImportAnalize = []; // ARRAY FILES TO IMPORT ANALIZE
var arrayError = []; // ARRAY ERROR TO MODAL

// DOCUMENT LOAD OPERATION
$( document ).ready(function() {
  $('.nav-tabs a[href="#tab_default"]').tab('show');
  exportReload();
  dkaMainLoadData();
  <?php if ($dka_export_update || strlen(trim($dka_export_update)) < 1) { ?> dkaUpdateModule(); <?php } ?>
  //$('#input_message').summernote({ height: 300 });
});
// ***********************************************************************

// EXPORT RELOAD
function exportReload() {
  templateLoad();
  $("#import_header").html(dka_import_hdefault);
  <?php if($dka_export_limit) echo 'exportLimit = ' . $dka_export_limit . ';'; else echo 'exportLimit = 500;'; ?>
  queueAr.length > 0 ? $(".dka-btn-group .dka-btn-group-split").fadeIn() : $(".dka-btn-group .dka-btn-group-split").hide();
  // CONSTANT RELOAD
  exportTotal    = 0; // Export total
  exportTotalNow = 0; // Export total now
  exportStart    = 0; // Export start
  exportProcent  = 0; // Export progress value
  queueAr = []; // Export queue
  queueArTable = []; // Queue table html
  queueId = 1; // Queue count
  arExport = [];
  arExportHead = [];
  arrayError = []; // Array error to modal
  // HTML RELOAD
  $('.dka-filter').hide(); // FILTER CLEAN
  $("#export_queue_body").html(''); // ROW CLEAN
  queueAr.length > 0 ? $(".dka-btn-group .dka-btn-group-split").fadeIn() : $(".dka-btn-group .dka-btn-group-split").hide() ; // BTN EXPORT CLEAN
  queueAr.length > 0 ? null : $("#export_queue").hide() ; // ROW QUEUE CLEAN
  $("#type_export_filter option[value='empty']").prop('selected', true); // SELECT CLEAN
  $("#type_export option[value='empty']").prop('selected', true); // SELECT CLEAN
  filterDKA();

  filesGetImport = []; // CLEAN ARRAY FILES TO IMPORT
  filesGetImportAnalize = []; // CLEAN ARRAY FILES TO IMPORT ANALIZE
  $("#table_files_upload").hide(); // TABLE FILES UPLOAD HIDE
};
// ***********************************************************************

// PROGRESS/INFO TOP
function dkaTopProgress(loadClass){
  loadClass == 'p' ? $(".dka-pie-content").addClass('pie-show') : null ;
  var isVisible = $( "#top-progress-info" ).is( ":visible" );
  isVisible == true ? $('#top-progress-info').fadeOut(4100) : $('#top-progress-info').fadeIn();
  loadClass == 'p' ? $(".dka-pie-content").animate({opacity:1}, 100) : $(".dka-pie-content").animate({opacity: 0.5}, 5000) ;
}
// ***********************************************************************

// DKA CIRCLE
function dkaCircle(loadBox){
  loadBox == 'l' ? $("#dka-circle-info").html(dka_spinner_pulse_3) : $("#dka-circle-info").html(dka_circle_info);
}
// ***********************************************************************

// SLIDE SETTINGS
$(".wrapper i").click(function(){ $(".dka-dropdown").slideToggle(); });
// ***********************************************************************

// SAVE SETTINGS
function dkaSettingsSlideEdit(){
  urlSettingsSlideEdit = <?php echo "\"" . str_replace('&amp;', '&', $urlSettingsSlideEdit) . "\""; ?>;
  // EDIT SETTINGS BUTTON
  var btn_slide_edit_settings = $("#btn-slide-edit-settings").val();
  $("#btn-slide-edit-settings").val('<?php echo $text_saving; ?>...');
  // CIRCLE INFO
  dkaCircle('l');
  $.ajax({
    url: urlSettingsSlideEdit,
    type: 'post',
    data: $('#dka_slide_settings').serialize(),
    dataType: 'json',
    success: function(json) {
      // EDIT SETTINGS BUTTON DEFAULT
      $("#btn-slide-edit-settings").val(btn_slide_edit_settings);
      //exportLimit = json.dka_export_limit;
      document.location.reload(true);
      // CIRCLE INFO DEFAULT
      dkaCircle('');
    },
    error: function(json) {
      alertDKA('w');
      $("#alert-content").html('<h3><?php echo $text_template_load_hinfo_p; ?></h3><p><?php echo $text_template_load_pinfo_p; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      dkaCircle('');
    }
  });
}
// ***********************************************************************

// NO CLOSE BLOCK WINDOWS
function stopCloseWindow(){
  var message = "<?php echo $text_window_lock; ?>";
    window.onbeforeunload = function(event) {
    var e = e || window.event;
    if (e) { e.returnValue = message; }
    return message;
  };
}

// ALERT
function alertDKA(alertClass){

  $(".dka-alert .dka-alert-debug p").html();

  alertClass == 'i'  ? $(".dka-alert").addClass('info')    : $(".dka-alert").removeClass('info');
  alertClass == 'w'  ? $(".dka-alert").addClass('warning') : $(".dka-alert").removeClass('warning');
  alertClass == 's'  ? $(".dka-alert").addClass('success') : $(".dka-alert").removeClass('success');

  alertClass == 'i'  ? $(".dka-alert .alert-icon").html('<i class="fa fa-info-circle fa-4x pull-left"></i>'): null ;
  alertClass == 'w'  ? $(".dka-alert .alert-icon").html('<i class="fa fa-exclamation-circle fa-4x pull-left"></i>'): null ;
  alertClass == 's'  ? $(".dka-alert .alert-icon").html('<i class="fa fa-thumbs-o-up fa-4x pull-left"></i>'): null ;

  alertClass == 'w'  ? $(".dka-alert #btn_sent_support").fadeIn() : $(".dka-alert #btn_sent_support").hide() ;

  var isVisible = $( ".dka-alert" ).is( ":visible" );
  isVisible == true ? null : $('.dka-alert').slideDown();
  $('html, body').animate({
    scrollTop: $(".dka-alert").offset().top
  }, 2000);
}
$('.dka-alert .close').click(function(){
    $('.dka-alert').slideToggle();
    $('.dka-alert-debug').slideUp();
});

$('.dka-alert .alert-icon').click(function(){
    $('.dka-alert-debug').slideToggle();
});
// ***********************************************************************

// TABS
$('#myTabs a').click(function (e) {
  e.preventDefault()
  $(this).tab('show')
});
// ***********************************************************************

// TYPE EXPORT TEXT
function dkaTypeExportText(){
	textTypeExport = '';
	$("#type_export").val() == 'category' ? textTypeExport = '<?php echo $text_export_process_category; ?>' : textTypeExport = '<?php echo $text_export_process_product; ?>';
	return textTypeExport;
}
// ***********************************************************************

// MAIN LOAD DATA
function dkaMainLoadData(){
  //dkaCircle('l');
  $("#main_reload").html('<i class="fa fa-spinner fa-pulse">');
  $("#main_products").html('<tr><td colspan="2" class="text-center"><i class="fa fa-spinner fa-pulse fa-5x"></td></tr>');
  $("#main_categories").html('<tr><td colspan="2" class="text-center"><i class="fa fa-spinner fa-pulse fa-5x"></td></tr>');
  $("#main_uploads_files").html('<i class="fa fa-spinner fa-pulse">');
  $("#main_downloads_files").html('<i class="fa fa-spinner fa-pulse">');
  $("#main_templates_count").html('<i class="fa fa-spinner fa-pulse">');

  urlMainLoadData = <?php echo "\"" . str_replace('&amp;', '&', $urlMainLoadData) . "\""; ?>;
  $.ajax({
    url: urlMainLoadData,
    dataType: 'json',
    success: function(json) {
      var productData = []; var categoryData = [];
      $.each(json.products, function(key, val){
        productData.push('<tr><td class="">' + json.products[key].name + '</td><td class="text-right"><a class="ui tag teal label">' + json.products[key].value + '</a></td></tr>');
      });
      $.each(json.categories, function(key, val){
        categoryData.push('<tr><td class="">' + json.categories[key].name + '</td><td class="text-right"><a class="ui tag olive label">' + json.categories[key].value + '</a></td></tr>');
      });
      $("#main_products").html(productData.join(''));
      $("#main_categories").html(categoryData.join(''));
      $("#main_uploads_files").html(json.uploads);
      $("#main_downloads_files").html(json.downloads);
      $("#main_templates_count").html(json.templates);
      $("#main_reload").html('');

      var permissionData = [];
      json.permission.dka_dist.perm.charAt(0) == '7' ? null : permissionData.push({ 'name' : 'dka_dist', 'path' : json.permission.dka_dist.path, 'perm' : json.permission.dka_dist.perm }) ;
      json.permission.downloads.perm.charAt(0) == '7' ? null : permissionData.push({ 'name' : 'download', 'path' : json.permission.downloads.path, 'perm' : json.permission.downloads.perm }) ;
      json.permission.uploads.perm.charAt(0) == '7' ? null : permissionData.push({ 'name' : 'uploads', 'path' : json.permission.uploads.path, 'perm' : json.permission.uploads.perm }) ;
      json.permission.bin.perm.charAt(0) == '7' ? null : permissionData.push({ 'name' : 'bin', 'path' : json.permission.bin.path, 'perm' : json.permission.bin.perm }) ;

      var permissionHtml = [];
      permissionHtml.push('<h3><?php echo $text_home_permission_herror; ?></h3>');
      $.each(permissionData, function(key, val){
        permissionHtml.push('<li><?php echo $text_home_permission_p1; ?><b>' + permissionData[key].name + '</b><?php echo $text_home_permission_p2; ?> <b>' + permissionData[key].path + '</b> <?php echo $text_home_permission_p3; ?>' + permissionData[key].perm + '<?php echo $text_home_permission_p4; ?></li>');
      });
      if(permissionData.length > 0){
        alertDKA('w');
        $("#alert-content").html(permissionHtml.join(''));
      }
      //dkaCircle('');
    },
    error: function(json) {
      $("#main_products").html('');
      $("#main_categories").html('');
      $("#main_uploads_files").html('');
      $("#main_downloads_files").html('');
      $("#main_templates_count").html('');
      $("#main_reload").html('');
      alertDKA('w');
      $("#alert-content").html('<h3><?php echo $text_template_load_hinfo_p; ?></h3><p><?php echo $text_template_load_pinfo_p; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      //dkaCircle('');
    }
  });
}
// ***********************************************************************

// TYPE LOAD TEMPLATE
function templateLoad(){
  //dkaCircle('l');
  urlTemplateLoad = <?php echo "\"" . str_replace('&amp;', '&', $urlTemplateLoad) . "\""; ?>;
  $.ajax({
    url: urlTemplateLoad,
    dataType: 'json',
    success: function(json) {
      var options = [];
      var modal_templates = [];
      $.each(json, function(key, val){
        options.push('<option value="' + json[key].id + '" ' + json[key].select + '>' + json[key].name + '</option>');
        modal_templates.push('<tr><td class="text-center td-width-fixed"><div class="radio">\
                              <label><input type="radio" name="dka_template_default" value="' + json[key].id + '" form="form_template_save" ' + json[key].checked + ' /><i class="fa fa-check-circle-o fa-2x"></i></label>\
                              </div></td><td><h4 style="margin-left: 6px;">' + json[key].name + '</h4></td>\
                              <td class="text-right"><button class="ui button teal" onclick="testPrepair(\'' + json[key].id + '\')">тест</button></td></tr>');
      });
      $(".dka_export_import_template").html(options.join(''));
      $("#modal_template_table").html(modal_templates.join(''));
      //dkaCircle('');
    },
    error: function(json) {
      alertDKA('w');
      $("#alert-content").html('<h3><?php echo $text_template_load_hinfo_p; ?></h3><p><?php echo $text_template_load_pinfo_p; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      //dkaCircle('');
    }
  });
}
// ***********************************************************************

// TEMPLATE SAVE
function dkaTemplateEdit(){
  dkaCircle('l'); // CIRCLE INFO
  urlSaveDefaultTemplate = <?php echo "\"" . str_replace('&amp;', '&', $urlSaveDefaultTemplate) . "\""; ?>;
  $.ajax({
    url: urlSaveDefaultTemplate,
    type: 'post',
    data: $('#form_template_save').serialize(),
    dataType: 'json',
    success: function(json) {
      // CIRCLE INFO DEFAULT
      $('#modal_template').modal('hide');
      templateLoad();
      dkaCircle('');
    },
    error: function(json) {
      alertDKA('w');
      $('#modal_template').modal('hide');;
      $("#alert-content").html('<h3><?php echo $text_settings_save_hinfo_p; ?></h3><p><?php echo $text_settings_save_pinfo_p; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      dkaCircle('');
    }
  });
}

// MODAL TEMPLATE
function templateSelect(){
  $('#modal_template').modal();
}
// ***********************************************************************

// FILTER
function filterDKA(){
  var input_type_export = $("#type_export").val();
  var input_type_export_filter = $("#type_export_filter").val();
  //disabled
  input_type_export == 'product' ? $("#type_export_filter").removeAttr('disabled') : $("#type_export_filter").attr('disabled','disabled') ;
  input_type_export == 'product' && input_type_export_filter == 'filter' ? $('.dka-filter').slideDown() : $('.dka-filter').slideUp() ;
}
// ***********************************************************************

// FILTER RADIO
$("input[name='filter_radio_p']").click(function(){
  $('.dka-filter-input-hide').slideUp();
  switch ($(this).val()) {
    case 'filter_category':
      dkaLoadCategory();
    break
    case 'filter_price':
      dkaLoadPriceMinMax();
    break
    case 'filter_status':
      $('.dka-filter-status-p').slideDown();
    break
    case 'filter_count':
      dkaLoadCountMinMax();
    break
    case 'filter_seo':
      $('.dka-filter-seo-p').slideDown();
    break
  }
});
// ***********************************************************************

// LOAD CATEGORY OPTION
function dkaLoadCategory(){
  dkaCircle('l');
  urlLoadCategory = <?php echo "\"" . str_replace('&amp;', '&', $urlGetListCategory) . "\""; ?>;
  $.ajax({
    url: urlLoadCategory,
    dataType: 'json',
    success: function(json) {
      if(json.length > 0){
        var arOptions = [];
        arOptions.push('<option value="empty">--- <?php echo $text_filter_category_select_p; ?> (<?php echo $text_loaded; ?> ' + json.length + ') ---</option>');
        $.each(json, function(key, val){
          arOptions.push('<option value="' + json[key].category_id + '">' + json[key].name + '</option>');
        });
        $("#type_export_filter_category_p").html(arOptions.join(''));
        $('.dka-filter-category-p').slideDown();
      }else{
        $("#alert-content").html('<h3><?php echo $text_filter_category_hinfo_p; ?></h3><p><?php echo $text_filter_category_pinfo_p; ?></p>');
        alertDKA('i');
      }
      dkaCircle('');
    },
    error: function(json) {
      alertDKA('w');
      $("#alert-content").html('<h3><?php echo $text_filter_category_herror_p; ?></h3><p><?php echo $text_filter_category_perror_p; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      dkaCircle('');
    }
  });
}
// ***********************************************************************

// LOAD PRICE MIN & MAX
function dkaLoadPriceMinMax(){
  urlLoadPriceMinMax = <?php echo "\"" . str_replace('&amp;', '&', $urlLoadPriceMinMax) . "\""; ?>;
	dkaCircle('l');
  $.ajax({
    url: urlLoadPriceMinMax,
    dataType: 'json',
    success: function(json) {
      if(json.product_price_max > 0){
        $("#type_export_filter_price_p").slider({tooltip: 'always', min  : json.product_price_min, max  : json.product_price_max, value : [json.product_price_min,json.product_price_max]});
        $('.dka-filter-price-p').slideDown();
      }else{
        $("#alert-content").html('<h3><?php echo $text_filter_price_hinfo_p; ?></h3><p><?php echo $text_filter_price_pinfo_p; ?></p>');
        alertDKA('i');
      }
      dkaCircle('');
    },
    error: function(json) {
      alertDKA('w');
      $("#alert-content").html('<h3><?php echo $text_filter_price_herror_p; ?></h3><p><?php echo $text_filter_price_perror_p; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      dkaCircle('');
    }
  });
}
// ***********************************************************************

// LOAD COUNT MIN & MAX
function dkaLoadCountMinMax(){
  urlLoadCountMinMax = <?php echo "\"" . str_replace('&amp;', '&', $urlLoadCountMinMax) . "\""; ?>;
	dkaCircle('l');
  $.ajax({
    url: urlLoadCountMinMax,
    dataType: 'json',
    success: function(json) {
      if(json.product_count_max > 0){
        $("#type_export_filter_count_p").slider({tooltip: 'always', min  : json.product_count_min, max  : json.product_count_max, value : [json.product_count_min,json.product_count_max]});
        $('.dka-filter-count-p').slideDown();
      }else{
        $("#alert-content").html('<h3><?php echo $text_filter_count_hinfo_p; ?></h3><p><?php echo $text_filter_count_pinfo_p; ?></p>');
        alertDKA('i');
      }
      dkaCircle('');
    },
    error: function(json) {
      alertDKA('w');
      $("#alert-content").html('<h3><?php echo $text_filter_count_herror_p; ?></h3><p><?php echo $text_filter_count_perror_p; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      dkaCircle('');
    }
  });
}
// ***********************************************************************

// EXPORT VALIDATE ADD QUEUE
function dkaExportAddQueueValidate(){
  if(queueAr.length <= 9){
    var input_type_export = $("#type_export").val(); $("#label_type_export i").removeClass('dka-error-c');
    var input_type_export_format = $("#type_export_format").val(); $("#label_type_export_format i").removeClass('dka-error-c');
    var input_type_export_filter = $("#type_export_filter").val(); $("#label_type_export_filter i").removeClass('dka-error-c');

    if(input_type_export != 'empty'){
      if(input_type_export_format != 'empty'){
        if(input_type_export == 'category' || input_type_export == 'product' || input_type_export == 'order'){
          dkaExportAddQueue();
        }
      }else{
        $("#label_type_export_format i").addClass('dka-error-c');
      }
    }else{
      $("#label_type_export i").addClass('dka-error-c');
    }
  }else{
    $("#alert-content").html('<h3><?php echo $text_export_queue_hinfo_p; ?></h3><p><?php echo $text_export_queue_pinfo_p; ?></p>');
    alertDKA('i');
  }
}
// ***********************************************************************

// EXPORT ADD QUEUE PRODUCT & CATEGORY
function dkaExportAddQueue(){
  $("#export_queue").slideDown();
	queueArTable.push($("#export_queue_body").html());
  var text_type_export = $("#type_export option:selected").text(), input_type_export = $("#type_export").val();
  var text_type_export_format = $("#type_export_format option:selected").text(), input_type_export_format = $("#type_export_format").val();
  var input_type_export_filter = $("#type_export_filter").val();
	input_type_export_filter == 'empty' ? text_type_export_filter = '<?php echo $text_off; ?>' : text_type_export_filter = '<?php echo $text_active; ?>' ;

  if(input_type_export == 'product'){
    if(input_type_export_filter == 'empty'){
      var input_filter_radio_p = $("#filter_radio_p").val(), text_filter_radio_p = $("[name='filter_radio_p']:checked").next().next().text();
      var exportData = { id : queueId, type : input_type_export, format : input_type_export_format, filter : input_type_export_filter,
        filter_type : null, filter_value : null, t_type_export: text_type_export, t_type_export_format : text_type_export_format,
        t_filter_radio_p : '' };
      queueArTable.push('<tr id="tr_queue_' + queueId + '">\
        <td>' + queueId + '</td>\
        <td>' + text_type_export + '</td>\
        <td>' + text_type_export_format + '</td>\
        <td>' + text_type_export_filter + '</td>\
        <td></td>\
        <td id="analize_' + queueId + '"></td>\
        <td><button class="btn btn-warning pull-right" onclick="dkaExportDeleteQueueProduct(' + queueId + ')"><i class="fa fa-trash"></i></button></td>\
        </tr>');
      $("#export_queue_body").html(queueArTable.join(''));
      dkaExportAnlize(exportData, queueId);
      queueId++;
    }else{
    	if($("[name='filter_radio_p']:checked").length){
  			var text_text_filter_radio_p = "";
        var text_val_filter_radio_p = null;
  			switch ($("[name='filter_radio_p']:checked").val()) {
  				case 'filter_category':
  					text_text_filter_radio_p = $("#type_export_filter_category_p option:selected").text();
            text_val_filter_radio_p = $("#type_export_filter_category_p option:selected").val();
  				break
  				case 'filter_price':
  					text_text_filter_radio_p = $("#type_export_filter_price_p").val();
            text_val_filter_radio_p = $("#type_export_filter_price_p").val();
  				break
  				case 'filter_status':
  					text_text_filter_radio_p = $("#type_export_filter_status_p option:selected").text();
            text_val_filter_radio_p = $("#type_export_filter_status_p option:selected").val();
  				break
  				case 'filter_count':
  					text_text_filter_radio_p = $("#type_export_filter_count_p").val();
            text_val_filter_radio_p = $("#type_export_filter_count_p").val();
  				break
  				case 'filter_seo':
  					text_text_filter_radio_p = $("#type_export_filter_seo_p option:selected").text();
            text_val_filter_radio_p = $("#type_export_filter_seo_p option:selected").val();
  				break
  			}
  			var input_filter_radio_p = $("#filter_radio_p").val(), text_filter_radio_p = $("[name='filter_radio_p']:checked").next().next().text();
        var exportData = { id : queueId, type : input_type_export, format : input_type_export_format, filter : input_type_export_filter,
          filter_type : $("[name='filter_radio_p']:checked").val(), filter_value : text_val_filter_radio_p, t_type_export: text_type_export,
          t_type_export_format : text_type_export_format, t_filter_radio_p : text_filter_radio_p + ' (' + text_text_filter_radio_p + ')' };
  			queueArTable.push('<tr id="tr_queue_' + queueId + '">\
  			  <td>' + queueId + '</td>\
  			  <td>' + text_type_export + '</td>\
  			  <td>' + text_type_export_format + '</td>\
  			  <td>' + text_type_export_filter + '</td>\
  			  <td>' + text_filter_radio_p + ' (' + text_text_filter_radio_p + ')</td>\
  			  <td id="analize_' + queueId + '"></td>\
  			  <td><button class="btn btn-warning pull-right" onclick="dkaExportDeleteQueueProduct(' + queueId + ')"><i class="fa fa-trash"></i></button></td>\
  			  </tr>');
        $("#export_queue_body").html(queueArTable.join(''));
  			dkaExportAnlize(exportData, queueId);
        queueId++;
  		}else{
  			$("#label_type_export_filter i").addClass('dka-error-c');
  		}
    }
  }else if(input_type_export == 'category'){
    var input_filter_radio_p = $("#filter_radio_p").val(), text_filter_radio_p = $("[name='filter_radio_p']:checked").next().next().text();
    var exportData = { id : queueId, type : input_type_export, format : input_type_export_format, filter : input_type_export_filter,
      filter_type : null, filter_value : null, t_type_export: text_type_export, t_type_export_format : text_type_export_format,
      t_filter_radio_p : '' };
    queueArTable.push('<tr id="tr_queue_' + queueId + '">\
      <td>' + queueId + '</td>\
      <td>' + text_type_export + '</td>\
      <td>' + text_type_export_format + '</td>\
      <td>' + text_type_export_filter + '</td>\
      <td></td>\
      <td id="analize_' + queueId + '"></td>\
      <td><button class="btn btn-warning pull-right" onclick="dkaExportDeleteQueueProduct(' + queueId + ')"><i class="fa fa-trash"></i></button></td>\
      </tr>');
    $("#export_queue_body").html(queueArTable.join(''));
    dkaExportAnlize(exportData, queueId);
    queueId++;
  }else if(input_type_export == 'order'){
    var input_filter_radio_p = $("#filter_radio_p").val(), text_filter_radio_p = $("[name='filter_radio_p']:checked").next().next().text();
    var exportData = { id : queueId, type : input_type_export, format : input_type_export_format, filter : input_type_export_filter,
      filter_type : null, filter_value : null, t_type_export: text_type_export, t_type_export_format : text_type_export_format,
      t_filter_radio_p : '' };
    queueArTable.push('<tr id="tr_queue_' + queueId + '">\
      <td>' + queueId + '</td>\
      <td>' + text_type_export + '</td>\
      <td>' + text_type_export_format + '</td>\
      <td>' + text_type_export_filter + '</td>\
      <td></td>\
      <td id="analize_' + queueId + '"></td>\
      <td><button class="btn btn-warning pull-right" onclick="dkaExportDeleteQueueProduct(' + queueId + ')"><i class="fa fa-trash"></i></button></td>\
      </tr>');
    $("#export_queue_body").html(queueArTable.join(''));
    dkaExportAnlize(exportData, queueId);
    queueId++;
  }
  queueArTable = [];
}
// ***********************************************************************

// QUEUE ANALIZE EXPORT
function dkaExportAnlize(exportData, queueId){
  dkaCircle('l');
  urlExportAnlize = <?php echo "\"" . str_replace('&amp;', '&', $urlExportAnlize) . "\""; ?>;
	$("#analize_" + queueId).html(dka_spinner_pulse_1 + " <?php echo $text_analize; ?>...");
  $.ajax({
    url: urlExportAnlize,
    type: 'post',
    data: exportData,
    dataType: 'json',
    success: function(json) {
      if(json.total > 0){
        $("#analize_" + queueId).html(json.total)
        queueAr.push({ id : exportData.id, type : exportData.type, format : exportData.format, filter : exportData.filter,
        filter_type : exportData.filter_type, filter_value : exportData.filter_value, t_type_export: exportData.t_type_export,
        t_type_export_format : exportData.t_type_export_format, t_filter_radio_p : exportData.t_filter_radio_p, total : json.total, page : json.page });
        exportTotal = +exportTotal + +json.total;
        queueAr.length > 0 ? $(".dka-btn-group .dka-btn-group-split").show() : $(".dka-btn-group .dka-btn-group-split").hide() ;
      }else{
        dkaExportDeleteQueueProduct(queueId);
        $("#alert-content").html('<h3><?php echo $text_queue_empty_t; ?> <span class="text-lowercase">' + exportData.t_type_export + ' <?php echo $text_empty; ?></span></h3>\
          <p><?php echo $text_queue_empty_tp; ?></p>');
        alertDKA('i');
      }
      dkaCircle('');
    },
    error: function(json) {
      dkaExportDeleteQueueProduct(queueId);
      $("#analize_" + queueId).html('<i class="fa fa-exclamation-triangle dka-text-c-red"></i> ');
      alertDKA('w');
      $("#alert-content").html('<h3><?php echo $text_export_analize_hinfo_p; ?></h3><p><?php echo $text_export_analize_pinfo_p; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      dkaCircle('');
    }
  });
}
// ***********************************************************************

// DELETE QUEUE
function dkaExportDeleteQueueProduct(queueId){
  var index = null;
  $.each(queueAr, function(key, val){
    if(queueAr[key].id == queueId){
      index = key; exportTotal = exportTotal - queueAr[key].total;
    }
  });
  queueAr.splice(index, 1);
	$("#tr_queue_" + queueId).remove();
  queueAr.length > 0 ? $(".dka-btn-group .dka-btn-group-split").fadeIn() : $(".dka-btn-group .dka-btn-group-split").hide();
  queueAr.length > 0 ? null : $("#export_queue").hide() ;
}
// ***********************************************************************

// EXPORT START
function dkaExport(){
  dkaTopProgress('p');
  exportProcent = 0;
  $('.nav-tabs a[href="#tab_result"]').tab('show');
  $( '#circle_progress' ).progressCircle({ nPercent : exportProcent, showPercentText : true, circleSize : 160, thickness : 4 });
  exportHead();
  setTimeout(exportSend(0, queueAr[0].page) ,400);
}
// ***********************************************************************

// EXPORT AT FILES
var exportFiles = [];
var htmlExportT_head = '<thead><tr><th><i class="fa fa-sort-amount-asc"> №</i></th><th><i class="fa fa-pencil"> <?php echo $text_export_th_name; ?></i></th><th>\
                        <i class="fa fa-bars pull-right"> <?php echo $text_export_th_count; ?></i></th>\
						            <th><i class="fa fa-file-excel-o pull-right"> <?php echo $text_export_th_size; ?>\
                        </i></th><th><i class="fa fa-download pull-right"> <?php echo $text_export_th_download; ?></i></th>\
        				        </tr></thead>';
function exportHead(){
	var textTypeExport = dkaTypeExportText();
	arExportHead.push('<div id="export_finish_header">\
        					   <div class="row"><div class="col-sm-9"><i class="fa fa-refresh fa-2x pull-left dka-text-c-green text-uppercase">\
                     <?php echo $text_export_h_base . " " . $text_export_h_file; ?>...</i></div></div>\
        					   </div><div id="export-current-file"></div>\
					           <hr />\
				             <table class="table table-bordered table-hover" id="dka-export-table">' + htmlExportT_head + '\
      					    <tbody id="export_div">');
  arExportHead.push("</tbody></table>");
	$("#tab_result").html(arExportHead.join(''));
}

var idSend = 1; // id operation (file end)
var idPage = 1; // id page send
function exportSend(idQueue, isPage){

  var t_filter_radio_p = '';

  switch (queueAr[idQueue].type) {
    case 'category':
      urlDkaExport = <?php echo "\"" . str_replace('&amp;', '&', $urlExportCategory) . "\""; ?>;
    break;
    case 'product':
      urlDkaExport = <?php echo "\"" . str_replace('&amp;', '&', $urlExportProduct) . "\""; ?>;
    break;
    case 'order':
      urlDkaExport = <?php echo "\"" . str_replace('&amp;', '&', $urlExportOrder) . "\""; ?>;
    break;
  }

  queueAr[idQueue].t_filter_radio_p.length > 0 ? t_filter_radio_p = '<button class="btn btn-info" type="button">' + queueAr[idQueue].t_filter_radio_p + '</button> ' : null;
  queueAr.length > 1 ? arExport.push('<tr><th colspan="5"><button class="btn btn-primary" type="button">' + queueAr[idQueue].t_type_export + ' <span class="badge">' + queueAr[idQueue].total + '</span></button> <button class="btn btn-success" type="button">' + queueAr[idQueue].t_type_export_format + '</button> ' + t_filter_radio_p + '</th></tr>') : null ;

  ajaxExport = $.ajax({
    url: urlDkaExport + "&start=" + exportStart + "&limit=" + exportLimit + "&id=" + idSend,
    dataType: 'json',
    method: 'POST',
    data: queueAr[idQueue],
    success: function(json) {
      if(!json.error){
        arExport.push('<tr>\
          <th scope="row">' + idSend + '</th>\
          <th scope="row">' + json.name + '</th>\
          <th><span class="pull-right">' + json.count + '</span></th>\
          <th><span class="pull-right">' + json.size + '</span></th>\
          <th><a href="' + json.link + '" target="_blank" class="btn btn-success pull-right"><i class="fa fa-floppy-o"></i></a></th>\
          </tr>');
        exportFiles.push(json.name);
        exportFiles.join(',');

        startLimit = +exportStart + +exportLimit;
        exportStart = startLimit;
        $("#export_div tr").length > 0 ? $("#export_div tr").last().after(arExport.join('')) : $("#export_div").html(arExport.join('')) ;
        arExport = [];
        exportTotalNow = +exportTotalNow + +json.count;
        if(exportTotal > exportTotalNow){
          exportProcent = (exportTotalNow/exportTotal)*100;
          $("#export-current-file").html('<small><?php echo $text_export_t_files; ?>: </small>' + idSend);
          $( '#circle_progress' ).progressCircle({ nPercent : Math.round(exportProcent), showPercentText : true, circleSize : 160, thickness : 4 });
        }else{
          $("#export-current-file").html('<small><?php echo $text_export_t_files; ?>: </small>' + idSend);
          var textTypeExport = dkaTypeExportText();
          exportProcent = 100;
          $( '#circle_progress' ).progressCircle({ nPercent : Math.round(exportProcent), showPercentText : true, circleSize : 160, thickness : 4 });
          dkaTopProgress('');
          $("#export_finish_header").html('<div class="row"><div class="col-sm-9"><i class="fa fa-bell-o fa-2x pull-left dka-text-c-gold text-uppercase">\
            <?php echo $text_export . " " . $text_finished; ?></i></div>\
            <div class="col-sm-3"><button type="button" id="create-arhive" class="btn btn-warning pull-right" onclick="exportToZip();">\
            <i class="fa fa-inbox"></i> <?php echo $text_export_t_all_load; ?></button></div></div>');
          dkaCircle('');
        }
        idSend++;

        if(isPage > idPage){
          idPage++;
          exportSend(idQueue, queueAr[idQueue].page);
        }else{
          idQueue++;
          if (queueAr[idQueue] !== undefined){
            idPage = 1; exportStart = 0;
            exportSend(idQueue, queueAr[idQueue].page);
          }else{
            idPage = 1; idSend = 1; idQueue = 0;
            exportTotal <= exportTotalNow ? exportReload() : null ;
          }
        }

      }else{
        $("#dka-export-progress").html('');
        $("#dka-export-table").html('');
        var textTypeExport = dkaTypeExportText();

        $("#export_finish_header").html('<?php echo $text_export_t_atbase; ?> <span class="text-lowercase"> <?php echo $text_empty; ?></span>');
      }
    },
    error: function(json) {
      dkaTopProgress('');
      alertDKA('w');
      $("#alert-content").html('<h3><?php echo $text_export_herror_p; ?></h3><p><?php echo $text_export_perror_p; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      dkaCircle('');
    }
  });
}
// ***********************************************************************

// EXPORT FILES TO ZIP
function exportToZip() {
  dkaCircle('l');
  filesToZip = <?php echo "\"" . str_replace('&amp;', '&', $filesToZip) . "\""; ?>;
  $("#create-arhive").html('<i class="fa fa-refresh"></i> <?php echo $text_arhive_process; ?>...');
  $.ajax({
    url: filesToZip,
    dataType: 'json',
    method: 'POST',
    data: { files : exportFiles },
    success: function(json) {
      if((json.file_info.name).length > 0){
	      var textTypeExport = dkaTypeExportText();
				$("#export_finish_header").html('<div class="row"><div class="col-sm-9"><i class="fa fa-bell-o fa-2x pull-left dka-text-c-gold text-uppercase">\
          <?php echo $text_export . " " . $text_finished; ?></i></div>\
          <div class="col-sm-3"><a class="btn btn-success pull-right" href="' + json.file_info.link + '" target="_blank">\
          <i class="fa fa-file-archive-o"></i> <?php echo $text_download; ?> (' + json.file_info.size + ')</a></div></div>');
      }else{
        $("#alert-content").html('<h3><?php echo $text_export_zip_herror_p; ?></h3><p><?php echo $text_export_zip_perror_p; ?></p>');
        alertDKA('i');
      }
      dkaCircle('');
    },
    error: function(json) {
      alertDKA('w');
      $("#alert-content").html('<h3><?php echo $text_export_zip_herror_p; ?></h3><p><?php echo $text_export_zip_perror_p; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      dkaCircle('');
    }
  });
}
// ***********************************************************************

// GET EXTENSION FILE
function getExtensionFile(filename_ext){
  var arrayExt = ({'xls' : 1, 'xlsx' : 1});
  var ext = '';
  var match_ext = /(?:\.([^.]+))?$/;
  ext = match_ext.exec(filename_ext)[1];
  arrayExt[ext] == 1 ? null : ext = '';
  return ext;
}
// ***********************************************************************

// IMPORT FILES UPLOADS
$(function () {
  'use strict';
  // Change this to the location of your server-side upload handler:
  var urlUploadFiles = <?php echo "\"" . str_replace('&amp;', '&', $urlUploadFiles) . "\""; ?>;
  var i = 1;
  $('#fileupload').fileupload({
    url: urlUploadFiles + "&filepath=<?php echo $dka_upload_path; ?>",
    dataType: 'json',
    beforeSend: function(){
      $("#import_header").html(dka_import_hupload);
      dkaCircle('l');
      filesGetImport = [];
      filesGetImportAnalize = [];
      $('#files_upload').empty();
      $('#progress .progress-bar').css( 'width', 0 + '%' );
      $(".tooltip").hide();
    },
    done: function (e, data) {
      $("#table_files_upload").show();
      $.each(data.result.files, function (index, file) {
        if(getExtensionFile(file.name).length > 0){
          $(".file-upload-name").show();
          $('<tr id="uploadfile-' + i + '"/>').html('<td class="text-center"><span class="label label-primary dka-label-files">' + i + '</span></td>\
            <td><label class="dka-name-files">' + file.name + '</label></td>\
            <td id="analizefile-' + i + '"></td>\
            <td id="formatfile-' + i + '"><span class="label label-info dka-label-files">' + getExtensionFile(file.name) + '</span></td>\
            <td id="deletefile-' + i + '" class="text-right">\
            <span class="fa-stack fa-lg dka-fa-stack-nosize" data-toggle="tooltip" title="<?php echo $entry_label_delete_file; ?>" onclick="filesUploadDelete(' + i + ', false)">\
            <i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-trash fa-stack-1x"></i></span></td>').appendTo('#files_upload');
          $("#fileUploadReady").val(1);

          filesGetImportAnalize.push({'id' : i, 'filename' : file.name, 'format' : getExtensionFile(file.name), 'type' : file.type});

          $("#fileUploadName").val(data.result.files);
        }else{
          $('<tr id="uploadfile-' + i + '" class="danger"/>').html('<td class="text-center"><span class="label label-danger dka-label-files">' + i + '</span></td>\
            <td><label class="dka-name-files">' + file.name + '</label></td>\
            <td></td>\
            <td><span class="label label-danger dka-label-files" data-toggle="tooltip" title="<?php echo $text_import_file_error; ?>"><?php echo $text_import_error_format; ?></span></td>\
            <td></td>').appendTo('#files_upload');
        }
        i++;
      });
    },
    progressall: function (e, data) {
      var progress = parseInt(data.loaded / data.total * 100, 10);
      $('#progress .progress-bar').css( 'width', progress + '%' );
      if(progress >= 100){
        $("#import_header").html(dka_import_hstandby);
        dkaCircle('l');
        stopCloseWindow();
        setTimeout(filesUploadTimeout , 6000);
      }
    },
    error: function(json) {
      alertDKA('w');
      $("#alert-content").html('<h3><?php echo $text_import_upload_herror; ?></h3><p><?php echo $text_import_upload_perror; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      dkaCircle('');
    }
  }).prop('disabled', !$.support.fileInput).parent().addClass($.support.fileInput ? undefined : 'disabled');
});
// ***********************************************************************

// MODAL ERROR
function showModalError(id){
  $.each(arrayError, function(key, val){
    arrayError[key].id == id ? $("#modal_error h3").html(arrayError[key].header) : null ;
    arrayError[key].id == id ? $("#modal_error p").html(arrayError[key].text) : null ;
  });
  $("#modal_error").modal();
}
// ***********************************************************************

// Analize uploads files
function filesUploadTimeout(idAnalize){
  $("#import_header").html(dka_import_hanalize);
  filesUploadAnalize(0);
}
function filesUploadAnalize(idAnalize){
  var id = filesGetImportAnalize[idAnalize].id;

  urlImportAnalize = <?php echo "\"" . str_replace('&amp;', '&', $urlImportAnalize) . "\""; ?>;
  $("#analizefile-" + id).html('<span class="label label-danger dka-label-files text-lowercase"><i class="fa fa-spinner fa-spin"></i> <?php echo $text_analize; ?></span>');
  $.ajax({
    url: urlImportAnalize,
    dataType: 'json',
    method: 'POST',
    data: filesGetImportAnalize[idAnalize],
    success: function(json) {
      if((json.name && json.template != null) || json.isCategories){
        var textPosition = '';
        if(!json.position_null){
          $("#analizefile-" + id).html('<span class="label label-info dka-label-files text-lowercase"><i class="fa fa-list-ul"></i> ' + json.count + ' <?php echo $text_position; ?></span>');
          if(json.template != null){
            var formatfile = $("#formatfile-" + id).html();
            $("#formatfile-" + id).html(formatfile + ' <span class="label label-success dka-label-files dka-pointer" data-toggle="tooltip" title="'+ json.template.name +'"><?php echo $text_template; ?></span>');
          }
        }else{
          $("#uploadfile-" + id).addClass('warning');
          $("#uploadfile-" + id + " span.label").removeClass('label-primary');
          $("#uploadfile-" + id + " span.label").addClass('label-warning');
          $("#analizefile-" + id).html('<span class="label label-warning dka-label-files text-lowercase"><i class="fa fa-list-ul"></i> ' + json.count + ' <?php echo $text_position; ?></span> <span class="label label-warning dka-label-files dka-pointer" data-toggle="tooltip" title="<?php echo $text_more; ?>" onclick="showModalError(' + id + ');"><i class="fa fa-search-plus"></i></span>');

          $.each(json.position_array, function(key, val){
            textPosition = textPosition.concat(json.position_array[key].position + ',')
          });
          textPosition = textPosition.substring(0, textPosition.length-1);
          arrayError.push({'id' : id, 'header' : '<?php echo $text_files_analize_error_empty_h; ?>', 'text' : '<?php echo $text_files_analize_error_empty_p; ?>: ' + textPosition});
        }
        var filetype = json.filetype;
        var formatfile = $("#formatfile-" + id).html();
        var typeimport = '';
        json.isProducts == true ? text_typeimport = '<?php echo $text_type_product; ?>' : null ; json.isProducts == true ? typeimport = 'product' : null ;
        json.isCategories == true ? text_typeimport = '<?php echo $text_type_category; ?>' : null ; json.isCategories == true ? typeimport = 'category' : null ;
        $("#formatfile-" + id).html(formatfile + ' <span class="label label-primary dka-label-files">' + text_typeimport + '</span>');
        var template_id = null;
        json.template != null ? template_id = json.template.id : null ;
        filesGetImport.push({'id' : filesGetImportAnalize[idAnalize].id, 'filename' : filesGetImportAnalize[idAnalize].filename, 'filetype' : filetype, 'position' : json.count, 'type' : typeimport, 'type_text' : text_typeimport, 'template_id' : template_id , 'format' : filesGetImportAnalize[idAnalize].format, 'warn' : textPosition});
      }else{
        if(json.overlap){
          var overlap_error = "";
          var formatfile = $("#formatfile-" + id).html();
          $("#formatfile-" + id).html(formatfile + ' <span class="label label-danger dka-label-files dka-pointer"><?php echo $text_template; ?></span>');
          $.each(json.overlap, function(key, val){
            overlap_error = overlap_error.concat("<b>" + json.overlap[key].name + "</b> : " + json.overlap[key].fields + "<br />");
          });
          overlap_error = "<div class='ui segment'>" + overlap_error + "</div>";
        }
        $("#uploadfile-" + id).addClass('danger');
        $("#uploadfile-" + id + " span.label").removeClass('label-primary');
        $("#uploadfile-" + id + " span.label").addClass('label-danger');
        $("#analizefile-" + id).html('<span class="label label-danger dka-label-files"><i class="fa fa-table"></i> <?php echo $text_analize_error_content; ?></span> <span class="label label-danger dka-label-files dka-pointer" data-toggle="tooltip" title="<?php echo $text_more; ?>" onclick="showModalError(' + id + ');"><i class="fa fa-search-plus"></i></span>');
        $("#deletefile-" + id).html('<span class="label label-danger dka-label-files"><i class="fa fa-close"></i> <?php echo $text_analize_error_excluded; ?></span>');
        arrayError.push({'id' : id, 'header' : '<?php echo $text_analize_error_content_h; ?>', 'text' : '<?php echo $text_analize_error_content_p; ?>' + overlap_error});
      }
      $("#btn_import").show();

      idAnalize++;
      if (filesGetImportAnalize[idAnalize] !== undefined){
        filesUploadAnalize(idAnalize);
      }else{
        $("#import_header").html(dka_import_hready);
        dkaCircle('');
        $("#modal_fade").modal('hide');
        window.onbeforeunload = null;
      }
    },
    error: function(json) {
      $("#uploadfile-" + id).addClass('danger');
      $("#uploadfile-" + id + " span.label").removeClass('label-primary');
      $("#uploadfile-" + id + " span.label").addClass('label-danger');
      $("#analizefile-" + id).html('<span class="label label-danger dka-label-files"><i class="fa fa-table"></i> <?php echo $text_analize_error_process; ?></span>');
      alertDKA('w');
      $("#alert-content").html('<h3><?php echo $text_analize_herror_p; ?></h3><p><?php echo $text_analize_perror_p; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);

      idAnalize++;
      if (filesGetImportAnalize[idAnalize] !== undefined){
        filesUploadAnalize(idAnalize);
      }else{
        $("#import_header").html(dka_import_hready);
        dkaCircle('');
        $("#modal_fade").modal('hide');
        window.onbeforeunload = null;
      }
    }
  });
}
// ***********************************************************************

// Upload files queue delete
function filesUploadDelete(id, all){
  if(!all){
    var index = 0;
    $.each(filesGetImport, function(key, val){
      if(filesGetImport[key].id == id){index = filesGetImport.indexOf(val);}
    });
    filesGetImport.splice(index, 1)
    $("#uploadfile-" + id).fadeOut({ done: function(){ $("#uploadfile-" + id).remove(); } });
    $(".tooltip").hide();
    filesGetImport.length < 1 ? filesUploadDelete(0, true) : null;
  }else{
    $("#import_header").html(dka_import_hdefault);
    filesGetImport = [];
    $("#btn_import").hide();
    $("#table_files_upload").hide();
    $(".file-upload-name").hide();
    $('#files_upload').empty();
  }
}
// ***********************************************************************

// Import start
function dkaImportStartMain(){
  dkaCircle('l');
  stopCloseWindow();
  arrayError = [];
  $('.nav-tabs a[href="#tab_result"]').tab('show');

  $("#tab_result").html('<div id="export_finish_header">\
    <div class="row"><div class="col-sm-8"><i class="fa fa-spinner fa-pulse fa-2x pull-left dka-text-c-gold text-uppercase"></i>\
    <i class="fa fa-2x pull-left dka-text-c-gold text-uppercase">\
    <?php echo $text_import_head_process; ?></i></div>\
    <div class="col-sm-4" id="import_current_file"></div></div>\
    </div></div><div></div>\
    <hr />\
    <table class="table table-bordered table-hover" id="dka_import_table">\
    <thead><tr>\
    <td>№</td><td><?php echo $text_table_name; ?></td>\
    <td><?php echo $text_info; ?></td><td><?php echo $text_table_process; ?></td>\
    </tr></thead>\
    <tbody id="files_import"></tbody></table>');
  $.each(filesGetImport, function(key, val){
    $('<tr id="importfile-' + filesGetImport[key].id + '"/>').html('<td class="text-center"><span class="label label-primary dka-label-files">' + filesGetImport[key].id + '</span></td>\
        <td><label class="dka-name-files">' + filesGetImport[key].filename + '</label></td>\
        <td><span class="label label-info dka-label-files">' + filesGetImport[key].format + '</span> \
        <span class="label label-primary dka-label-files">' + filesGetImport[key].type_text + '</span> \
        <span class="label label-warning dka-label-files">позиций ' + filesGetImport[key].position + '</span></td>\
        <td id="importprocessfile-' + filesGetImport[key].id + '"></td>').appendTo('#files_import');
  });
  dkaImportStart(0);
}
function dkaImportStart(idImport){
  var id = filesGetImport[idImport].id;

  urlImport = <?php echo "\"" . str_replace('&amp;', '&', $urlImport) . "\""; ?>;
  $("#importprocessfile-" + id).html('<span class="label label-danger dka-label-files text-lowercase"><i class="fa fa-spinner fa-spin"></i> <?php echo $text_process; ?></span>');
  $("#import_current_file").html('<div class="pull-right dka-text-c-green"><i class="fa fa-refresh fa-spin"></i> ' + filesGetImport[idImport].filename + '</div>');
  $.ajax({
    url: urlImport,
    dataType: 'json',
    method: 'POST',
    data: filesGetImport[idImport],
    success: function(json) {
      if(json.format){
        var pushError = '<span class="label label-success dka-label-files text-lowercase"><i class="fa fa-check-square"></i> <?php echo $text_finished; ?></span>';
        if(json.return != null){
          if(json.return.length){
            arrayError.push({'id' : id, 'header' : '<?php echo $text_analize_error_content_h; ?>', 'text' : json.return.join(',')});
            pushError = '<span class="label label-warning dka-label-files text-lowercase dka-pointer" data-toggle="tooltip" title="<?php echo $text_more; ?>"\ onclick="showModalError(' + id + ');">\
            <i class="fa fa-check-square"></i> <?php echo $text_finished; ?></span>';
          }
        }
        $("#importprocessfile-" + id).html(pushError + ' <span class="label label-info dka-label-files"><i class="fa fa-refresh"></i> ' + json.positionEdit + '</span>\
        <span class="label label-info dka-label-files"><i class="fa fa-plus-square"></i> ' + json.positionAdd + '</span>');
      }else{
        $("#importprocessfile-" + id).html(' <span class="label label-danger dka-label-files"> format: ' + json.format + '</span>');
      }
      idImport++;
      if (filesGetImport[idImport] !== undefined){
        dkaImportStart(idImport);
      }else{
        dkaCircle('');
        filesGetImport = [];
        filesGetImportAnalize = [];
        $("#import_header").html(dka_import_hdefault);
        $('#files_upload').empty();
        $("#table_files_upload").hide();
        $("#btn_import").hide();
        $('#progress .progress-bar').css( 'width', 0 + '%' );

        $("#import_current_file").html('');
        $("#export_finish_header").html('<div class="row"><div class="col-sm-9"><i class="fa fa-bell-o fa-2x pull-left dka-text-c-gold text-uppercase">\
                                          <?php echo $text_import . " " . $text_finished; ?></i></div>\
                                          <div class="col-sm-3"></div></div>');
        window.onbeforeunload = null;
      }
    },
    error: function(json) {
      $("#importfile-" + id).addClass('danger');
      $("#importfile-" + id + " span.label").removeClass('label-primary');
      $("#importfile-" + id + " span.label").addClass('label-danger');
      $("#importprocessfile-" + id).html('<span class="label label-danger dka-label-files text-lowercase"><i class="fa fa-table"></i> <?php echo $text_error; ?></span>');
      alertDKA('w');
      $("#alert-content").html('<h3><?php echo $text_import_herror_p; ?></h3><p><?php echo $text_import_perror_p; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      idImport++;
      if (filesGetImport[idImport] !== undefined){
        dkaImportStart(idImport);
      }else{
        dkaCircle('');
        filesGetImport = [];
        filesGetImportAnalize = [];
        $("#import_header").html(dka_import_hdefault);
        $('#files_upload').empty();
        $("#table_files_upload").hide();
        $("#btn_import").hide();
        $('#progress .progress-bar').css( 'width', 0 + '%' );

        $("#import_current_file").html('');
        $("#export_finish_header").html('<div class="row"><div class="col-sm-9"><i class="fa fa-bell-o fa-2x pull-left dka-text-c-gold text-uppercase">\
                                          <?php echo $text_import . " " . $text_finished; ?></i></div>\
                                          <div class="col-sm-3"></div></div>');
        window.onbeforeunload = null;
      }
    }
  });
}
// ***********************************************************************

// Template main
function templateMain(){
  dkaCircle('l');
  var dataLoad = [];
  dataLoad.push({ 'template_standart' : true });
  urlTemplateLoad = <?php echo "\"" . str_replace('&amp;', '&', $urlTemplateLoad) . "\""; ?>;
  $.ajax({
    url: urlTemplateLoad,
    dataType: 'json',
    method: 'POST',
    data: dataLoad[0],
    success: function(json) {
      if(json.length){
        $("#tab_templates").html('<div class="row"><div class="col-sm-2 col-md-3"></div><div class="col-sm-8 col-md-6"><div class="ui segment">\
          <div class="row"><div class="col-sm-2 col-md-3"></div><div class="col-sm-8 col-md-6">\
          <div class="row ui button primary dka-btn-width-full" onclick="templateLoadData(\'template_standart\')"><div class="col-sm-12"><h3><?php echo $text_template_create_h; ?></h3></div><div class="col-sm-12"><small><?php echo $text_template_create_p; ?></small></div></div>\
          </div><div class="col-sm-2 col-md-3"></div></div>\
          <div class="row"><div class="col-sm-2 col-md-3"></div><div class="col-sm-8 col-md-6">\
          <div class="row ui button primary dka-btn-width-full" onclick="templateLoadName()"><div class="col-sm-12"><h3><?php echo $text_template_edit_h; ?></h3></div><div class="col-sm-12"><small><?php echo $text_template_edit_p; ?></small></div></div>\
          </div><div class="col-sm-2 col-md-3"></div></div>\
          </div></div><div class="col-sm-2 col-md-3"></div></div>');
      }else{
        $("#tab_templates").html('<div class="row"><div class="col-sm-2 col-md-3"></div><div class="col-sm-8 col-md-6"><div class="ui segment">\
          <div class="row"><div class="col-sm-2 col-md-3"></div><div class="col-sm-8 col-md-6">\
          <div class="row ui button primary dka-btn-width-full" onclick="templateLoadData(\'template_standart\')"><div class="col-sm-12"><h3><?php echo $text_template_create_h; ?></h3></div><div class="col-sm-12"><small><?php echo $text_template_create_p; ?></small></div></div>\
          </div><div class="col-sm-2 col-md-3"></div></div>\
          </div></div><div class="col-sm-2 col-md-3"></div></div>');
      }
      dkaCircle('');
    },
    error: function(json) {
      alertDKA('w');
      $("#alert-content").html('<h3><?php echo $text_template_main_herror; ?></h3><p><?php echo $text_template_main_perror; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      dkaCircle('');
    }
  });
}
// ***********************************************************************

// Template load name for edit
function templateLoadName(){
  dkaCircle('l');
  var dataSend = [];
  dataSend.push({ 'template_standart' : true });
  urlTemplateLoad = <?php echo "\"" . str_replace('&amp;', '&', $urlTemplateLoad) . "\""; ?>;
  $.ajax({
    url: urlTemplateLoad,
    dataType: 'json',
    method: 'POST',
    data: dataSend[0],
    success: function(json) {
      var temlateHtml = [];
      temlateHtml.push('<div class="row"><div class="col-sm-2 col-md-3"></div><div class="col-sm-8 col-md-6"><div class="ui segment">');
      $.each(json, function(key, val){
        temlateHtml.push('<div class="row"><div class="col-sm-2 col-md-3"></div><div class="col-sm-8 col-md-6">\
        <div class="row ui button primary dka-btn-width-full" onclick="templateLoadData(\'' + json[key].id + '\')"><div class="col-sm-12">' + json[key].name + '</div></div>\
        </div><div class="col-sm-2 col-md-3"></div></div>');
      });
      temlateHtml.push('</div><div class="col-sm-2 col-md-3"></div></div></div></div><div class="col-sm-2 col-md-3"></div></div>');
      $("#tab_templates").html(temlateHtml.join(''));
      dkaCircle('');
    },
    error: function(json) {
      alertDKA('w');
      $("#alert-content").html('<h3><?php echo $text_template_name_herror; ?></h3><p><?php echo $text_template_name_perror; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      dkaCircle('');
    }
  });
}
// ***********************************************************************

// Template load name for edit
function templateLoadData(template_id){
  dkaCircle('l');
  var dataSend = [];
  dataSend.push({ 'template_id' : template_id });
  var inputTemplateCreate = ''; var btnTemplateDelete = '';
  if(template_id == 'template_standart'){
    inputTemplateCreate = '<input id="template_create_name" type="text" class="form-control" placeholder="<?php echo $text_template_create_name; ?>" />';
  }else{
    btnTemplateDelete = '<span title="<?php echo $text_delete; ?>" data-toggle="tooltip" class="fa-stack fa-lg dka-fa-stack-size pull-right dka-text-c-red" onclick="templateDelete(\'' + template_id + '\')">\
    <i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-trash fa-stack-1x"></i></span>';
  }
  urlTemplateLoadData = <?php echo "\"" . str_replace('&amp;', '&', $urlTemplateLoadData) . "\""; ?>;
  $.ajax({
    url: urlTemplateLoadData,
    dataType: 'json',
    method: 'POST',
    data: dataSend[0],
    success: function(json) {
      $("#tab_templates").html('<form><div class="row"><div class="col-sm-1">\
      <span title="<?php echo $text_added; ?>" data-toggle="tooltip" onclick="templateLoadFieldList()" class="fa-stack fa-lg dka-fa-stack-size pull-left dka-text-c-green">\
      <i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-plus fa-stack-1x"></i></span>\
      </div>\
      <div class="col-sm-4 form-group">\
      <select id="template_field_list" class="form-control" onchange="templateAddFieldTemlate(\'' + template_id + '\')"></select>\
      </div>\
      <div class="col-sm-4 form-group">' + inputTemplateCreate + '</div>\
      <div class="col-sm-3">' + btnTemplateDelete + '\
      <span title="<?php echo $text_save; ?>" data-toggle="tooltip" class="fa-stack fa-lg dka-fa-stack-size pull-right dka-text-c-blue"" onclick="templateSaveFieldList(\'' + template_id + '\')">\
      <i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-floppy-o fa-stack-1x"></i></span>\
      </div></div></form><hr />\
      <table class="table table-bordered table-hover" id="' + template_id + '">\
      <tbody id="template_div"></tbody></table><div class="result"></div>');
      var temlateHtml = [];
      $.each(json, function(key, val){
        var btnDeleteField = '<span class="fa-stack fa-lg dka-fa-stack-nosize" data-toggle="tooltip" title="<?php echo $entry_template_delete_field; ?>" onclick="templateDelFieldTemlate(\'' + template_id + '\',\'' + json[key].name + '\')"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-trash fa-stack-1x"></i></span>';
        json[key].name == 'product_id' ? btnDeleteField = '' : null ;
        json[key].name == 'name' ? btnDeleteField = '' : null ;
        json[key].name == 'price' ? btnDeleteField = '' : null ;
        temlateHtml.push('<tr id="' + json[key].name + '"><td class="td-arrow-witdth-fix"><i class="fa fa-arrows fa-2x"></i></td><td>' + json[key].header + '</td><td>' + json[key].name + '</td><td>' + json[key].sort   + '</td>\
        <td class="td-arrow-witdth-fix20 text-right">' + btnDeleteField + '\
        </td></tr>');
      });
      $("#template_div").html(temlateHtml.join(''));
      $("#" + template_id).tableDnD({ onDragClass: "DragField" });
      dkaCircle('');
    },
    error: function(json) {
      alertDKA('w');
      $("#alert-content").html('<h3><?php echo $text_template_data_herror; ?></h3><p><?php echo $text_template_data_perror; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      dkaCircle('');
    }
  });
}
// ***********************************************************************

// Template field load list <select>
function templateLoadFieldList(){
  dkaCircle('l');
  $(".tooltip").hide();
  var dataSend = [];
  dataSend.push({ 'template_standart' : true });
  urlTemplateLoadFieldList = <?php echo "\"" . str_replace('&amp;', '&', $urlTemplateLoadFieldList) . "\""; ?>;
  $.ajax({
    url: urlTemplateLoadFieldList,
    dataType: 'json',
    method: 'POST',
    data: dataSend[0],
    success: function(json) {
      var temlateHtml = [];
      $.each(json, function(key, val){
        temlateHtml.push('<option value="' + json[key].name + '">' + json[key].header + '</option>');
      });
      $("#template_field_list").html(temlateHtml.join(''));
      $("#template_field_list").fadeIn();
      dkaCircle('');
    },
    error: function(json) {
      alertDKA('w');
      $("#alert-content").html('<h3><?php echo $text_template_fields_herror; ?></h3><p><?php echo $text_template_fields_perror; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      dkaCircle('');
    }
  });
  $("#tab_templates *").fadeIn();
}
// ***********************************************************************

// Template add field from list <select>
function templateAddFieldTemlate(template_id){
  dkaCircle('l');
  var value = $("#template_field_list").val();
  var text = $( "#template_field_list option:selected" ).text();
  var trCount = $("#" + template_id + ' tr').length;
  $("#" + template_id + " tbody tr").last().after('<tr id="' + value + '" class="success field-new">\
  <td class="td-arrow-witdth-fix"><i class="fa fa-arrows fa-2x"></i></td><td>' + text + '</td><td>' + value + '</td><td>' + trCount + '</td>\
  <td class="td-arrow-witdth-fix20 text-right"><span class="fa-stack fa-lg dka-fa-stack-nosize" data-toggle="tooltip" title="<?php echo $entry_template_delete_field; ?>" onclick="templateDelFieldTemlate(\'' + template_id + '\',\'' + value + '\')"><i class="fa fa-square-o fa-stack-2x"></i><i class="fa fa-trash fa-stack-1x"></i></span></td></tr>');

  $('html, body').animate({ scrollTop: $("#" + template_id + " tbody tr").last().offset().top }, 2000);
  dkaCircle('');
}
// ***********************************************************************

// Template delete field from list <select>
function templateDelFieldTemlate(template_id, field_name){
  dkaCircle('l');
  $(".tooltip").hide();
  $("#" + template_id + " tbody #" + field_name).remove();
  dkaCircle('');
}
// ***********************************************************************

// Template save field from list <select>
function templateSaveFieldList(template_id ){
  $(".tooltip").hide();
  // GET ID TR CREATE JSON
  var trArray = $("#" + template_id + ' tr');
  var trArrayId = [];
  $.each(trArray, function(key, val){ trArrayId.push($(trArray[key]).attr('id')); });
  var dataSendJson = '{"' + template_id + '":' + JSON.stringify(trArrayId) + '}';
  if(template_id == 'template_standart'){
    var template_create_name = $("#template_create_name").val();
    if(template_create_name.length > 3){
      $("#template_create_name").removeClass('border-red');
      dataSendJson = '{"template_name" : "' + template_create_name + '","' + template_id + '":' + JSON.stringify(trArrayId) + '}';
      dkaCircle('l');
    }else{
      $("#template_create_name").addClass('border-red');
      return false;
    }
  }
  else{
    dkaCircle('l');
  }
  var urlTemplateSaveData = <?php echo "\"" . str_replace('&amp;', '&', $urlTemplateSaveData) . "\""; ?>;

  $.ajax({
    url: urlTemplateSaveData,
    dataType: 'json',
    method: 'POST',
    data: dataSendJson,
    success: function(json) {
      if(json.dka_template_new){
        templateLoadName();
        templateLoad();
      }else{
        templateLoadData(template_id);
      }
      dkaCircle('');
    },
    error: function(json) {
      alertDKA('w');
      $("#alert-content").html('<h3><?php echo $text_template_save_herror; ?></h3><p><?php echo $text_template_save_perror; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      dkaCircle('');
    }
  });
}
// ***********************************************************************

// Template delete from base
function templateDelete(template_id ){
  dkaCircle('l');
  $(".tooltip").hide();
  var isTemplateDelete = confirm("<?php echo $text_template_delete_confirm; ?>\n------ " + template_id + " ------");
  if(isTemplateDelete){
    var urlTemplateDelete = <?php echo "\"" . str_replace('&amp;', '&', $urlTemplateDelete) . "\""; ?>;
    $.ajax({
      url: urlTemplateDelete,
      dataType: 'json',
      method: 'POST',
      data: { 'template_id' : template_id },
      success: function(json) {
        templateMain();
        templateLoad();
        dkaCircle('');
      },
      error: function(json) {
        alertDKA('w');
        $("#alert-content").html('<h3><?php echo $text_template_delete_herror; ?></h3><p><?php echo $text_template_delete_perror; ?></p>');
        $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
        dkaCircle('');
      }
    });
  }else{ dkaCircle(''); }
}
// ***********************************************************************

// Check update module
function dkaUpdateModule(){
  var xmlModuleUpdate = <?php echo "\"" . str_replace('&amp;', '&', $dkaModuleUpdate) . "\""; ?>;
  $("#btnUpdateSearchManual").html('<i class="fa fa-refresh fa-spin"></i> <?php echo $text_search; ?> ...');
	$(".search-update").hide();
	var dka_name = '<?php echo $dkaModuleNameUID; ?>';
	$.ajax({
		url: xmlModuleUpdate + '&dka_name=' + dka_name + '&dka_version=' + '<?php echo $dkaModuleMajorVersion . "." . $dkaModuleMinorVersion . "." . $dkaModuleBuildVersion; ?>',
		dataType: 'json',
		success: function(json) {
			var updateVersion = 0;
      var dkaModuleVersion = json['majorVersion'] + "." + json['minorVersion'] + "." + json['buildVersion'];
			<?php if ($dka_export_update_modal || strlen(trim($dka_export_update_modal)) < 1) { ?>
			if(json['fullVersion'] > '<?php echo $dkaModuleMajorVersion . $dkaModuleMinorVersion . $dkaModuleBuildVersion; ?>'){

        $("#btnUpdateSearchManual").html('<i class="fa fa-refresh"></i> <?php echo $text_update_check; ?>');
        var updateText = [];
        updateText.push("<div class='settings-content'>\
          <div class='row'>\
          <div class='col-sm-3 text-center'><img src='" + json['logo'] + "' /></div>\
          <div class='col-sm-9'>\
          <h2><i class='fa fa-refresh'></i> <?php echo $text_update_header_new; ?></h2><hr />\
          <p><?php echo $text_update_subheader_new; ?> <strong>" + json['name'] + " " + dkaModuleVersion + "</strong></p>\
          <p><?php echo $text_update_subheader_date; ?> <strong>" + json['date'] + "</strong></p>\
          </div>\
          </div>");
        if(json['info'].length > 0)
          updateText.push("<hr class='hr-dka-def' /><h4><?php echo $text_update_header_info; ?></h4><div class='row'><div class='col-sm-12'>" + json['info'] + "</div></div>");
        if(json['changelog'].length > 0)
          updateText.push("<hr class='hr-dka-def' /><h4><?php echo $text_update_header_change; ?></h4><div class='row'><div class='col-sm-12'>" + json['changelog'] + "</div></div>");
        if(json['downloadUrl'].length > 0){
          updateText.push("<hr class='hr-dka-def'  /><div class='row'><div class='col-sm-12'>\
            <p class='text-center' style='margin: 20px 0;'><a href='" + json['downloadUrl'] + "' class='alert alert-success'><?php echo $text_update_forward_load; ?></a></p>\
            </div></div>");
        }
        updateText.push("</div>");
				$('#modal_default .modal-content').html(updateText.join(''));
				$('#modal_default').modal();
        //$("#dka-circle-info").attr('title', '');
        $('#dka-circle-info').html('<i class="fa fa-refresh dka-text-c-red" title="<?php echo $text_update_header_new;?> ' + json['date'] + '" data-toggle="tooltip"> ' + dkaModuleVersion + '</i>')
      }else{
        $("#btnUpdateSearchManual").removeClass('btn-info'); $("#btnUpdateSearchManual").addClass('btn-success');
        $("#btnUpdateSearchManual").html('<i class="fa fa-refresh"></i> <?php echo $text_update_no; ?>');
      }
      if(json['news']){
				$('#modal_default .modal-content').html("<div class='settings-content'><h2 class='text-center'><i class='fa fa-refresh'></i> <?php echo $text_update_mr_client; ?></h2><p class='text-center' style='margin: 20px 0;'>" + json['addinginfo'] + "</p></div>");
				$('#modal_default').modal();
			}
      <?php } else { ?>
			if(json['fullVersion'] > '<?php echo $dkaModuleMajorVersion . $dkaModuleMinorVersion . $dkaModuleBuildVersion; ?>'){
        $("#btnUpdateSearchManual").html('<i class="fa fa-refresh"></i> <?php echo $text_update_check; ?>');
        //$("#dka-circle-info").attr('title', '');
        $('#dka-circle-info').html('<i class="fa fa-refresh dka-text-c-red" title="<?php echo $text_update_header_new;?> ' + json['date'] + '" data-toggle="tooltip"> ' + dkaModuleVersion + '</i>');
      }else{
        $("#btnUpdateSearchManual").removeClass('btn-info'); $("#btnUpdateSearchManual").addClass('btn-success');
        $("#btnUpdateSearchManual").html('<i class="fa fa-refresh"></i> <?php echo $text_update_no; ?>');
      }
      <?php } ?>

      },
      error: function(json) {
        $("#btnUpdateSearchManual").removeClass('btn-info'); $("#btnUpdateSearchManual").addClass('btn-warning');
        $("#btnUpdateSearchManual").html('<i class="fa fa-close"></i> <?php echo $text_error; ?>');
        alertDKA('w');
        $("#alert-content").html('<h3><?php echo $text_update_herror; ?></h3><p><?php echo $text_update_perror; ?></p>');
        $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      }
	});
}
// ***********************************************************************

// Clear directories
function clearDirectories(){
  dkaCircle('l');
  $("#btnClear").removeClass('red'); $("#btnClear").addClass('teal');
  $("#btnClear").html('<i class="fa fa-refresh"></i>');
  $(".tooltip").hide();
  var urlClearDirectories = <?php echo "\"" . str_replace('&amp;', '&', $urlClearDirectories) . "\""; ?>;
  $.ajax({
		url: urlClearDirectories,
		dataType: 'json',
		success: function(json) {
      $("#btnClear").removeClass('teal'); $("#btnClear").addClass('green');
      $("#btnClear").html('<i class="fa fa-trash"></i>');
      dkaMainLoadData();
      dkaCircle('');
    },
    error: function(json) {
      $("#btnClear").removeClass('teal'); $("#btnClear").addClass('red');
      alertDKA('w');
      $("#alert-content").html('<h3><?php echo $text_clear_directory_herror; ?></h3><p><?php echo $text_clear_directory_perror; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      dkaCircle('');
    }
	});
}
// ***********************************************************************

// Test export
var testIsAjax;
var testIsAbort = 0;
var testLimit = 200;
var testError = 0;
var testLastSuccess = 0;

function testRefresh(){
	testLimit = 200;
	testError = 0;
  testLastSuccess = 0;
	$("#test_CurrentCount").html(''); $("#test_LastSuccess").html(''); $("#test_LastError").html('');
}

function stopTest(){
	testIsAbort = 1;
  $("#test_CurrentCount").html('<span class="ui label teal">' + testLimit + '</span>');
	testIsAjax.abort();
}

function stopCloseTest(){
  testRefresh();
  $("#test_resultExport").html("");
	$("#test_modal").modal('hide');
  stopTest();
}

function testPrepair(template_id){

  $("#test_MethodTest").html(''); $("#test_CurrentCount").html('');
	$("#test_LastSuccess").html(''); $("#test_LastError").html('');
  $("#test_MethodTest").html('<h4><b><?php echo $text_export; ?></b></h4>');

	$("#test_modal").modal({ backdrop: 'static', keyboard: false });
  testExport(template_id);
}

function testExport(template_id){
  dkaCircle('l');
  if(testLastSuccess > 0){ $("#test_LastSuccess").html('<span class="ui label green">' + testLastSuccess + '</span>'); }
  if(testError > 0){ $("#test_LastError").html('<span class="ui label red">' + testError + '</span>'); }

  var urlTestExport = <?php echo "\"" . str_replace('&amp;', '&', $urlTestExport) . "\""; ?>;
  testIsAjax = $.ajax({
		url: urlTestExport,
    method: 'POST',
    data: { 'template_id' : template_id, 'limit' : testLimit },
		dataType: 'json',
    beforeSend: function() {
			$("#test_CurrentCount").html('<span class="ui label teal">' +  testLimit + ' <i class="fa fa-refresh fa-spin"></i>' + '</span>');
		},
		success: function(json) {
      //if(!testIsAbort){
				if (typeof json.name != 'undefined'){

					$("#test_CurrentCount").html('<span class="ui label teal">' + testLimit + '</span>' );
					if(json.name.length > 0){
						testLimit = +testLimit + +testLimit;
						testLastSuccess = testLimit;

						if(testError > 0){
							var newLimit = (testError - testLimit) / 2;
							newLimit = +testLimit + +newLimit;
							testLimit = newLimit;
						}
						var countBeetwin = testError - testLastSuccess;
            console.log('countBeetwin: ' + countBeetwin);
						if(countBeetwin > 50 || testError == 0){
							if(($("#test_modal").data('bs.modal') || {}).isShown){
								testExport(template_id);
							}else{
								testRefresh();
							}
						}else{
              var resultLast = $("#test_LastSuccess").val(json.count);
              var resultLast = json.count;
              $("#test_resultExport").html("<?php echo $text_test_export_max; ?>" + resultLast + "<?php echo $text_test_export_rec; ?>" + (resultLast - (resultLast * 0.2)));
						}
					}
				}
			//}
    },
    error: function(json) {
      //if(!testIsAbort){
				$("#test_CurrentCount").html('<span class="ui label teal">' + testLimit + '</span>' );
				var newLimit = (testLimit - testLastSuccess) / 2;
				newLimit = +testLastSuccess + +newLimit;
				testLimit = newLimit;
				testError = testLimit;

				var countBeetwin = testError - testLastSuccess;
        console.log('countBeetwin: ' + countBeetwin);
				if(countBeetwin > 50 || testError == 0){
					if(($("#test_modal").data('bs.modal') || {}).isShown){
						testExport(template_id);
					}else{
						testRefresh();
					}
				}else{
					$("#test_LastError").html('<span class="ui label red">' + testLimit + '</span>');
          var resultLast = testLastSuccess;
          $("#test_resultExport").html("<?php echo $text_test_export_max; ?>" + resultLast + "<?php echo $text_test_export_rec; ?>" + (resultLast - (resultLast * 0.2)));
				}
			//}
    },
    complete: function (json) {
			testIsAbort = 0;
      dkaCircle('');
		}
	});
}
// ***********************************************************************

// Modal support
function modalSupport(type){
  $("#support_modal_h").html('<?php echo $text_support_modal_header; ?>');
  $("#input_answer_copy").val($("#input_answer").val());
  $("#input_subject").val('<?php echo $text_support_modal_subject_send; ?> <?php echo $dkaModuleName . " " . $dkaModuleMajorVersion . "." . $dkaModuleMinorVersion . "." . $dkaModuleBuildVersion; ?>');
  support_url = <?php echo "\"" . str_replace('&amp;', '&', $support_url) . "\""; ?>;
  var support_info = '';
  if(type == 'w'){
    support_info = '<br /><br />' + $(".dka-alert .dka-alert-debug p").html();
  }

  <?php if($sslTpl_22) {?>
    $('#input_message').summernote('code','<?php echo $text_support_modal_message_url; ?> ' + support_url + support_info);
	<?php }else{ ?>
		//$('#input_message').code('<?php echo $text_support_modal_message_url; ?> ' + support_url + support_info);
	<?php } ?>


  $('#button_send').show();
  $("#modal_support").modal();
}

function supportSend(){
  var urlSupportSend = <?php echo "\"" . str_replace('&amp;', '&', $urlSupportSend) . "\""; ?>;
  // Summer not fix
  <?php if($sslTpl_22) {?>
		$('textarea[name=\'message\']').val($('#input_message').summernote('code'));
	<?php }else{ ?>
		//$('textarea[name=\'message\']').val($('#input_message').code());
	<?php } ?>
  $.ajax({
      url: urlSupportSend,
      dataType: 'json',
      method: 'POST',
      data: $("#form_support").serialize(),
      beforeSend: function() {
			  $('#button_send').fadeOut();
        $("#support_modal_h").html('<?php echo $text_support_modal_header_forward; ?>');
		  },
      success: function(json) {
        if(json.success){ $("#support_modal_h").html('<?php echo $text_support_modal_header_send; ?>');
        }else{ $("#support_modal_h").html('<?php echo $text_support_modal_header_error; ?>'); }
      },
      error: function(json) {
        alertDKA('w');
        $("#alert-content").html('<h3><?php echo $text_support_herror; ?></h3><p><?php echo $text_support_perror; ?></p>');
        $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      }
  });
}
// ***********************************************************************

// Log Read
function getLogText(){
  dkaCircle('l');
  var urlLogRead = <?php echo "\"" . str_replace('&amp;', '&', $urlLogRead) . "\""; ?>;
	$.ajax({
		url: urlLogRead,
		dataType: 'html',
		success: function(html) {
			$("#text_log_input").html(html);
      dkaCircle('');
    },
    error: function(json) {
      alertDKA('w');
      $("#alert-content").html('<h3><?php echo $text_log_read_herror; ?></h3><p><?php echo $text_log_read_perror; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      dkaCircle('');
    }
	});
}

// Log Read
function dkaLogClear(){
  dkaCircle('l');
  var urlLogClear = <?php echo "\"" . str_replace('&amp;', '&', $urlLogClear) . "\""; ?>;
	$.ajax({
		url: urlLogClear,
		dataType: 'html',
		success: function(html) {
			$("#text_log_input").html(html);
      dkaCircle('');
    },
    error: function(json) {
      alertDKA('w');
      $("#alert-content").html('<h3><?php echo $text_log_clear_herror; ?></h3><p><?php echo $text_log_clear_perror; ?></p>');
      $(".dka-alert .dka-alert-debug p").html('<?php echo $text_error; ?>: ' + json.responseText);
      dkaCircle('');
    }
	});
}
</script>

<!-- ---------------------------------------------------------------------* JS END *----------------------------------------------------------------------------------- -->

<?php echo $footer; ?>
