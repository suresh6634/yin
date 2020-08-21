<body class="hold-transition login-page">
            <?php if (ENVIRONMENT == "development") { ?>
            <!-- pre>
                <?php //print_r($_SESSION); ?>
            </pre -->
            <?php } ?>
	<div class="login-box">
	  	<div class="login-logo">
            <a href="<?php echo base_url(); ?>" class="logo">
                <span class="logo-lg"><img src="<?php echo base_url().'assets/images/logo.png' ?>" id="logo" alt="YIN Logo"></span>
            </a>
        </div>
	  	<!-- /.login-logo -->
	  	<div class="login-box-body">

	    	<p class="login-box-msg">Sign in</p>
			<?php if($this->session->flashdata("messagePr")){?>
	  		<div class="alert alert-info" style="background-color: #f8d7da !important; color: #721c24 !important; border-color: #f5c6cb !important;">
		        <?php echo $this->session->flashdata("messagePr")?>
		    </div>
		    <?php } ?>
		    <form action="<?php echo base_url().'user/auth_user'; ?>" method="post">
		    	<div class="form-group has-feedback">
		    		<input type="text" name="email" class="form-control" id="" placeholder="Email">
		        	<span class="glyphicon glyphicon-envelope form-control-feedback"></span>
		      	</div>
				<div class="form-group has-feedback">
					<input type="password" name="password" class="form-control" id="pwd" placeholder="Password" >
					<span class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
                <div class="row">
                    <div class="col-xs-12">
			            <a href="forgetpassword" class="forgot" style="margin:10px 0 20px 0;">Forgot your password?</a>
                    </div>
                </div>
			  	<div class="row">
			  		<div class="col-xs-12">
		          		<button type="submit" class="btn btn-primary btn-block btn-flat btn-color">Sign in</button>
		        	</div>
				</div>
		    </form>
		    <!-- /.social-auth-links -->
		    <?php if(setting_all('register_allowed')==1){ ?>
		    	<br>
				<span class="glyphicon glyphicon-user bg-icon-paste"></span><a href="<?php echo base_url().'user/registration';?>" class="text-center"> Create an account</a>
			<?php } ?>
		</div>
		<!-- /.login-box-body -->
	</div>
</body>
</html>