<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CouncilEvent.Login" %>

<!DOCTYPE html>
<html class="login-html">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<!-- Title -->
	<title>충남삼성고등학교 학생회</title>

	<!-- Icon -->
	<link rel="shortcut icon" href="/assets/img/favicon-csc.png" />

	<!-- Bootstrap CSS Framework -->
	<link rel="stylesheet" href="/assets/css/bootstrap.min.css?ver=1.0">

	<!-- Custom CSS -->
	<link rel="stylesheet" href="/assets/css/style.css?ver=0.2">

	<!-- Web Font -->
	<link rel="stylesheet" href="/assets/css/nanumsquare.css">
</head>
<body>
	<br />
	<br />
	<div class="text-center" style="margin-top: 33%; margin-bottom: 20%;">
		<img src="/assets/img/banner.jpg" width="650" />
	</div>
	<br />
	<br />
	<br />
	<form runat="server" class="text-center">
		<div class="p-5" style="border: 3px solid #ffc107; width: 42%; margin: auto;">
			<div>
				<asp:TextBox runat="server" ID="UserID" CssClass="login-form-control" placeholder="ID"></asp:TextBox><br />
				<br />
				<br />
				<asp:TextBox runat="server" ID="UserPW" CssClass="login-form-control" TextMode="Password" placeholder="PW"></asp:TextBox>
				<br />
				<br />
				<br />
				<br />
				<br />
				<asp:Button runat="server" ID="LoginButton" CssClass="btn btn-login" OnClick="LoginButton_Click" />
			</div>
		</div>
		<br />
		<br />
		<h4 class="color-gold">큰사넷과 동일한 계정으로 로그인 할 수 있습니다</h4>
	</form>


	<div class="footer fixed-bottom">
		<h5 class="float-left">충남삼성고등학교 학생회</h5>
		<h5 class="float-right">Copyright &copy; Copyright 이호은, 장지훈 All Rights Reserved</h5>
	</div>
</body>
</html>
