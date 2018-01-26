<!doctype html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.3/css/bootstrap.min.css" integrity="sha384-Zug+QiDoJOrZ5t4lssLdxGhVrurbmBWopoEl+M6BdEfwnCJZtKxi1KgxUyJq13dy" crossorigin="anonymous">
        <link rel="stylesheet" href="<?php echo base_url('assets/css/AdminLTE.min.css');?>">
        <!-- AdminLTE Skins. Choose a skin from the css/skins
        folder instead of downloading all of them to reduce the load. -->
        <link rel="stylesheet" href="<?php echo base_url('assets/css/skins/skin-black-light.min.css');?>">
        <title>Year in pixels!</title>
        <style type="text/css">
            .table td, .table th {
                padding: 0.70rem !important;
            }
            .pixel-td {
                cursor:pointer;
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
            }
        </style>
    </head>
    <body>
    <!-- header container starts here -->
    <div class="wrapper" style="width:600px;margin: 10px auto;">
        <header class="main-header">
            <a href="<?php echo base_url(); ?>" class="logo">
                <span class="logo-lg"><img src="<?php echo base_url().'assets/images/logo.png' ?>" id="logo" alt="YIN Logo"></span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top">
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
                                <img src="<?php echo base_url().'assets/images/'.$profile_pic;?>" class="user-image" alt="User Image">
                                <!-- span class="hidden-xs"><?php echo isset($this->session->userdata('user_details')[0]->name)?$this->session->userdata('user_details')[0]->name:'';?></span -->
                            </a>
                            <a href="#">
                                <img src="<?php echo base_url().'assets/images/setting.png';?>" class="user-image" alt="Setting">
                            </a>
                            <a href="#">
                                <img src="<?php echo base_url().'assets/images/logout.png';?>" class="user-image" alt="Logout">
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
    </div>
    <!-- header container ends here -->