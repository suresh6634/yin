<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <!-- link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous" -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <link rel="stylesheet" href="<?php echo base_url('assets/css/AdminLTE.min.css');?>">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
        folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="<?php echo base_url('assets/css/skins/skin-black-light.min.css');?>">
        <link rel="shortcut icon" href="<?php echo base_url('assets/images/favicon.ico'); ?>" type="image/x-icon">
        <link rel="icon" href="<?php echo base_url('assets/images/favicon.ico'); ?>" type="image/x-icon">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css" integrity="sha512-/zs32ZEJh+/EO2N1b0PEdoA10JkdC3zJ8L5FTiQu82LR9S/rOQNfQN7U59U9BC12swNeRAz3HSzIL2vpp4fv3w==" crossorigin="anonymous" />
        <title>Year in pixels!</title>

        <!--[if lt IE 9]><script src="<?php echo base_url('assets/js/ie8-responsive-file-warning.js'); ?>"></script><![endif]-->
        <script src="<?php echo base_url('assets/js/jquery.min.js'); ?>"></script>
        <!-- jQuery UI 1.11.4 -->
        <script src="<?php echo base_url('assets/js/jquery-ui.min.js'); ?>"></script>
        <!-- script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script -->
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <!-- HTML Editor -->
        <script src="https://cdn.ckeditor.com/ckeditor5/1.0.0-alpha.2/classic/ckeditor.js"></script>
        <!-- Chart JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js" integrity="sha512-s+xg36jbIujB2S2VKfpGmlC3T5V2TF3lY48DX7u2r9XzGzgPsa6wTpOQA7J9iffvdeBN0q9tKzRxVxw1JviZPg==" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.bundle.min.js" integrity="sha512-vBmx0N/uQOXznm/Nbkp7h0P1RfLSj0HQrFSzV8m7rOGyj30fYAOKHYvCNez+yM8IrfnW0TCodDEjRqf6fodf/Q==" crossorigin="anonymous"></script>
        <style type="text/css">
            body {
                background-color: #d2d6de;
            }
            .bg-white {
                background-color: #FFF;
            }
            .table td, .table th {
                padding: 0.70rem !important;
            }
            .pixel-td {
                cursor:copy;
                border: 1px solid #f0f0f0 !important;
            }
            .pixel-table-header .col {
                border-top: 1px solid #000;
                border-right: 1px solid #000;
                border-bottom: 1px solid #000;
                border-left: 0;
                height: 20px;
                width:20px;
                /* padding: 20px 15px; */
                padding: 0;
            }
            .pixel-table-header .col:first-child {
                border-left: 1px solid #000;
            }
            .pixel-container .row {
                margin-left: 0;
                margin-right: 0;
            }
            .main-header .navbar {
                float: right;
            }
            .main-header .logo-lg {
                width: 179px;
            }
            .yin-table tr td {
                cursor: pointer;
                font-size:11px;
                text-align:center;
            }
            .navbar-nav>.user-menu .icons {
                float: left;
                width: 24px;
                height: 24px;
                margin-top: -2px;
                margin-left: 20px;
            }
            .navbar-nav>.user-menu .icons:hover {
                background-color: #F7F7F7;

            }
            .height55px, .dayscore-block .col-md-12 {
                height: 55px;
            }
            .dayscore-block .col-md-12 {
                padding:17px 20px 20px 20px;
                font-size: 15px;
                cursor: pointer;
            }
            .amazing, ._7 {
                background-color: #17A9EF;
                color: #FFF;
            }
            .good, ._6{
                background-color: #671B9A;
                color: #FFF;
            }
            .normal, ._5 {
                background-color: #8DD049;
            }
            .exhausted, ._4 {
                background-color: #FFFF06;
            }
            .depressed, ._3 {
                background-color: #FDBE06;
            }
            .frustrated, ._2 {
                background-color: #FB0405;
                color: #FFF;
            }
            .stressed, ._1 {
                background-color: #B90203;
                color: #FFF;
            }
            .bg-line {
                background: url("<?php echo base_url('assets/images/textarea-bg-line.png');?>") repeat;
            }
            .selected {
                background-image: url("<?php echo base_url('assets/images/selected.png');?>");
                background-repeat: no-repeat;
                background-position: 95% 50%;
            }
            .de-select {
                background-image: url("<?php echo base_url('assets/images/de-select.png');?>");
                background-repeat: no-repeat;
                background-position: 95% 50%;
            }
            .disabledDate {
                background-color: #EEE;
                cursor: not-allowed !important;
            }
            .ck-editor__editable {
                min-height: 300px;
                /*background: url("<?php echo base_url('assets/images/textarea-bg-line.png');?>") repeat;*/
                font-size:14px;
                line-height:1em;
                padding-top: 10px;
            }
            .yin-table>thead>tr>th, .yin-table>tbody>tr>td, .yin-table>tbody>tr>th {
                border: 1px solid #DDD !important;
            }
            #show-graph {
                display:block;
                float: right;
                width: 24px;
                height: 24px;
                border: 0;
                cursor: pointer;
                background: none;
                background-image: url("<?php echo base_url('assets/images/pie-chart.png');?>");
                background-repeat: no-repeat;

            }
            #yin-chart {
                display:none;
            }
            .weekday {
                display: block;
                float: left;
                font-size: 8px;
                color: #AAA;
                margin:-10px 0 0 -8px;
                text-transform: uppercase;
            }
            .ds {
                display: block;
                position: absolute;
                margin: 0 0 0 9px;
            }
        </style>
        <script>
           // ClassicEditor.create( document.querySelector( '#pixelComment' ) );
            /* Send DayScore as soon as the score is clicked */


            function addDayScore ( selectedPixel ) {

                var dayScore = selectedPixel.attr("data-dayscore");
                var hasRecord = selectedPixel.attr("data-hasrecord");
                var mode;
                console.log(hasRecord);
                if ( hasRecord == 0 )
                {
                    mode = "insert";

                } else if ( hasRecord == 1 ) {
                    mode = "update";

                }
                var commentForTheDay = pixelCommentEditor.getData();
                var selectedYear = $("#yin-year").val();
                var formData = $("#modalDayScoreForm").serialize()+"&year="+selectedYear+"&mode="+mode+"&commentForTheDay="+commentForTheDay;
                console.log( formData );
                //console.log ( selectedPixel.attr("data-fulldate") );

                $.post( "<?php echo base_url().'yin/insertOrUpdateDayScore'; ?>", formData, function( data ) {
                    console.log(data);
                    selectedPixel.attr("data-hasRecord", 1);
                });

            }

            function isOrWas ( thisDate ) {
                var today = new Date();
                var dd = today.getDate();
                var mm = today.getMonth()+1; //January is 0!

                var yyyy = today.getFullYear();
                if(dd<10){
                    dd='0'+dd;
                }
                if(mm<10){
                    mm='0'+mm;
                }
                var today = yyyy+mm+dd;
                //console.log ( thisDate + ' ' + today );
                if ( thisDate == today ) {
                    $("#spanIsOrWas").html( "is" );
                } else {
                    $("#spanIsOrWas").html( "was" );
                }
            }


            $( document ).ready(function() {
                var selectedDate;

                $(document).on("click", "#show-graph", function(){
                    $( "#yin-table" ).hide( "fold", 500 );
                    $( "#yin-chart" ).show( "fold", 500 );
                });

                $( document ).on("click", ".datePixel", function() {

                    /*//console.log ($(this).attr("data-datepixel"));
                    var thisPixel = $(this);
                    var thisDate = thisPixel.attr("data-fullDate");

                    selectedDate = thisPixel.attr("data-datepixel");
                    var formData = "date="+selectedDate;

                    $.post( "<?php //echo base_url().'yin/selectedPixelData'; ?>", formData, function( data ) {
                        var pixel = jQuery.parseJSON( data );
                        if ( data.ok == 1 ) {
                            console.log(pixel);
                            thisPixel.attr("data-dayscore", pixel.data.date);
                            var dayScore = pixel.data.dayscore_id;
                            $("#ScoreForTheDay").val(pixel.data.dayscore_id);
                            $("#pixelComment").html(pixel.data.comment);
                            if (dayScore != "" && dayScore > 0) {
                                $(".dayscore").hide();
                                $(".dayscore[data-dayscore='" + dayScore + "']").attr("data-selected", 1).addClass("de-select").show();
                                $("#dayscore-comments").show();
                                $(".scoreForTheDay").html($(".dayscore[data-dayscore='" + dayScore + "']").attr("data-mood"));
                            }
                        }
                        $("#modal-date-title").html(thisDate);
                        $("#selectedDate").val(selectedDate);
                        console.log($("#selectedDate").val());
                        $('.pixelDateModal').modal('show');
                        $(".dayscore-block").show();
                    });*/
                    var thisPixel = $(this);
                    selectedDate = thisPixel.attr("data-datepixel");
                    isOrWas(selectedDate);
                    var formData = "date="+selectedDate;

                    console.log(formData);

                    $.post( "<?php echo base_url().'yin/selectedPixelData'; ?>", formData, function( data ) {
                        var pixel = jQuery.parseJSON( data );
                        if ( pixel.ok == 1 ) {
                            //console.log(pixel);
                            //console.log(pixel.data.comment);
                            thisPixel.attr("data-dayscore", pixel.data.date);
                            //$("#pixelComment").val(pixel.data.comment);
                            pixelCommentEditor.setData(pixel.data.comment);

                        }
                    });
                    var thisDate = thisPixel.attr("data-fullDate");
                    var dayScore = thisPixel.attr("data-dayscore");
                    if (dayScore != "" && dayScore > 0) {
                        $(".dayscore").hide();
                        $( ".dayscore[data-dayscore='"+dayScore+"']" ).attr( "data-selected", 1 ).addClass( "de-select" ).show();
                        $( "#dayscore-comments" ).show();
                        $(".scoreForTheDay").html( $( ".dayscore[data-dayscore='"+dayScore+"']" ).attr( "data-mood" ) );
                        $("#ScoreForTheDay").val(dayScore);
                    }
                    $( "#modal-date-title" ).html(thisDate);
                    $( "#selectedDate" ).val(selectedDate);
                    $( '.pixelDateModal' ).modal('show');
                    $(".dayscore-block").show();
                });

                $( document ).on("click", ".dayscore", function() {
                    var isSelected = $(this).attr("data-selected");
                    var dayScore = $(this).attr("data-dayscore");
                    var dayMood = $(this).attr("data-mood");
                    //console.log("clicked "+isSelected+" "+dayScore+" "+dayMood);
                    if (isSelected == 1) {
                        $(this).attr( "data-selected", 0 );
                        $(this).removeClass( "de-select" );
                        $(this).siblings().slideDown( 200, "easeOutCirc" );
                        $("#dayscore-comments").slideUp( 200, "easeInCirc" );
                        $("."+selectedDate).removeClass( "_"+dayScore ).html("").attr("data-dayscore", 0);
                        $("#ScoreForTheDay").val("");
                    } else if (isSelected == 0) {
                        $(".scoreForTheDay").html( dayMood );
                        $(this).siblings( "data-selected", 0 );
                        //$(this).attr( "data-selected", 1 );
                        //$( ".dayscore-block" ).slideUp( 400,  );
                        $(this).siblings().slideUp( 200, "easeInCirc" );
                        $("#dayscore-comments").slideDown( 200, "easeOutCirc" );
                        $(this).addClass( "de-select" );
                        $("."+selectedDate).addClass( "_"+dayScore ).html(dayScore).attr("data-dayscore", dayScore);
                        $("#ScoreForTheDay").val(dayScore);
                    }
                    //addDayScore( $("."+selectedDate) );
                });

                $('.pixelDateModal').on('hidden.bs.modal', function () {
                    $( ".dayscore" ).attr("style", "display:block").removeClass("de-select");
                    $( "#dayscore-comments" ).hide();
                    //addDayScore( $("."+selectedDate) );
                    pixelCommentEditor.setData("");
                });

                $("#btnAddComments").on("click", function(){
                    $('.pixelDateModal').modal('hide');
                    addDayScore( $("."+selectedDate) );
                    pixelCommentEditor.setData("");
                });

                $( document ).on("change", "#yin-year", function(){
                    var formData = "year="+$(this).val();
                    //alert(formData);
                    $.post( "<?php echo base_url().'yin/changeYear'; ?>", formData, function( data ) {
                        //alert('test');
                        //console.log(data);
                        $("#yin-table").html("").html(data);
                    });
                });
            });
        </script>
    </head>
    <body>
    <!-- header container starts here -->
    <div class="wrapper" class="bg-white" style="width:600px;margin: 10px auto;">
        <header class="main-header">
            <a href="<?php echo base_url(); ?>" class="logo">
                <span class="logo-lg"><img src="<?php echo base_url().'assets/images/logo.png' ?>" id="logo" alt="YIN Logo"></span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top" style="margin:0">
                <!-- Sidebar toggle button-->
                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <!-- Control Sidebar Toggle Button -->
                        <!-- <li>
                          <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
                        </li> -->
                        <!-- User Account: style can be found in dropdown.less -->

                        <li class="user user-menu">
                            <a href="#">
                                <?php
                                $profile_pic =  'user.png';
                                if(isset($this->session->userdata('user_details')[0]->profile_pic) && file_exists('assets/images/'.$this->session->userdata('user_details')[0]->profile_pic))
                                {
                                    $profile_pic = $this->session->userdata('user_details')[0]->profile_pic;
                                }?>
                                <img src="<?php echo base_url().'assets/images/'.$profile_pic;?>" class="user-image" alt="User Image" style="margin-right:0;">
                                <!-- span class="hidden-xs"><?php echo isset($this->session->userdata('user_details')[0]->name)?$this->session->userdata('user_details')[0]->name:'';?></span -->
                            </a>
                            <a href="#">
                                <img src="<?php echo base_url().'assets/images/search.png';?>" class="icons" alt="Search">
                            </a>
                            <a href="#">
                                <img src="<?php echo base_url().'assets/images/setting.png';?>" class="icons" alt="Setting">
                            </a>
                            <a href="<?php echo base_url()."user/logout"; ?>">
                                <img src="<?php echo base_url().'assets/images/logout.png';?>" class="icons" alt="Logout">
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
    </div>
    <!-- header container ends here -->