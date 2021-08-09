<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        
		<title>Login</title>
		
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        
        <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
        <link href="Bootstrap/Style.css" rel="stylesheet" />

    </head>

    <body style="background-image:url('Images/cropped-1366-768-320144.jpg');background-repeat: repeat; background-attachment: fixed; background-position: center; ">

        <div class="panel-img">
			<img src="Images/Panel.png" alt="" />
        </div>
		<div>
			<div style="position: absolute; z-index: 1" id="layer2" >
				<div class="modal-body" style="margin:30px 0px 0px 400px">
				  <div class="row">
					  <div class="col-xs-push-9">
						  <div>
							  <form id="loginForm" method="post" novalidate="novalidate">
								  <div class="form-group">
									  <label for="username" class="control-label">Username</label>
									  <input type="text" class="form-control" id="username" name="username" value="" required="" title="Introduza o username" placeholder="example@domain.com" />
									  <span class="help-block"></span>
								  </div>
								  <div class="form-group">
									  <label for="password" class="control-label">Password</label>
									  <input type="password" class="form-control" id="password" name="password" value="" required="" title="Introduza a password" />
									  <span class="help-block"></span>
								  </div>
					
								  <button type="submit" class="btn btn-success btn-block">Login</button>
							  </form>
						  </div>
					  </div>
				  </div>
				</div>
			</div>
		</div>  
		
        <script src="js/jquery-3.1.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
