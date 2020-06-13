<!DOCTYPE html>
<html style="overflow:hidden;">
<head>
	<title>Login Stock</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
        
<!--===============================================================================================-->
<style>
    h3{color:red;}
    
    .login100-form {

    width: 100%;
    justify-content: space-between;
    padding: 43px 88px 93px 190px;
    padding-bottom: 0px;
}
</style>
</head>
<body style="overflow:hidden;">
	 <div style="background-color: #4D4D4D; height: 15%"><img src="p4.gif" style="float: left;
             width: 7%;height:100%;margin-right: 50px;margin-left: 20px;"><br>
        <h1 style="margin-left: 47px; color:white;font-family: sans-serif;">PUNE INSTITUTE OF COMPUTER TECHNOLOGY</h1>
        </div>
	<div class="limiter">
	
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">
						<center>Stock Digitization<center>
					</span>
				</div>

				<form class="login100-form validate-form" action="verify.jsp" method="POST">
					<div class="wrap-input100 m-b-26" >
						<span class="label-input100">Username</span>
						<input class="input100" type="text" name="uname" placeholder="Enter username">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 m-b-18">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="pwd" placeholder="Enter password">
						<span class="focus-input100"></span>
					</div>

					<div class="flex-sb-m w-full p-b-30">
						<div>
							<a href="#" class="txt1">
								Forgot Password ?
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
							Login
						</button>
					</div>
           
				</form>
			</div>
		</div>
		
	</div>
	

</body>
</html>
