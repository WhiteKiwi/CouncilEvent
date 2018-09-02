<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Evaluate.aspx.cs" Inherits="CouncilEvent.Evaluate" %>

<!DOCTYPE html>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

	<!-- Title -->
	<title>Game of Concert</title>

	<!-- Icon -->
	<link rel="shortcut icon" href="/assets/img/favicon-csc.png" />

	<!-- Bootstrap CSS Framework -->
	<link rel="stylesheet" href="/assets/css/bootstrap.min.css">

	<!-- Custom CSS -->
	<link rel="stylesheet" href="/assets/css/style.css?ver=0.2">

	<!-- Bootstrap JS -->
	<script src="/assets/js/jquery-3.3.1.slim.min.js"></script>
	<script src="/assets/js/popper.min.js"></script>
	<script src="/assets/js/bootstrap.min.js"></script>

	<!-- Web Font -->
	<link rel="stylesheet" href="/assets/css/nanumsquare.css">
</head>
<body class="background">
	<!-- Navbar -->
	<div class="text-center p-3" style="background-image: url('/assets/img/gold-bar.jpg');">
		<a href="/">
			<img src="/assets/img/GameOfConcert.png" width="400" />
		</a>
	</div>
	<br />
	<br />
	<br />
	<br />
	<br />
	
	<!-- 소개소개 -->
	<img src="/assets/img/yellow-flag.jpg" height="300" />

	<!-- 내 점수는? -->
	<%
		int myScore = CouncilEvent.managers.EventManager.GetMyScore((string)Session["UserID"], int.Parse(Request.QueryString["singer"]));
		%>
	<div class="text-left text-white" style="padding: 200px;">
		<span style="font-size: 35pt;"><b>제 점수는요 :</b></span>
		<div class="text-center">
			<span style="font-size: 200pt;"><b><%= myScore == -1 ? "__" : myScore.ToString() %></b></span><span style="font-size: 130pt;"><b>점</b></span>
		</div>
	</div>

	<!-- 입력받자 -->
	<form runat="server" class="text-center">
		<asp:TextBox runat="server" ID="Score" CssClass="input-box" TextMode="Number" placeholder="점수를 입력하세요"></asp:TextBox>
		<asp:Button runat="server" ID="Check" CssClass="check-button" OnClick="Check_Click" Text="확인" />
	</form>

	<div class="footer fixed-bottom">
		<h4 class="float-left">충남삼성고등학교 학생회</h4>
		<h4 class="float-right">Copyright &copy; Copyright 이호은, 장지훈 All Rights Reserved</h4>
	</div>

	<script>
		if (getParameterByName("singer") == 0) {
			alert('아직 오픈 시간이 아닙니다.');
			location.href = '/';
		} else if (getParameterByName("singer") == 0) {
			alert('아직 오픈 시간이 아닙니다.');
			location.href = '/';
		} else if (getParameterByName("singer") == 3) {
			alert('아직 오픈 시간이 아닙니다.');
			location.href = '/';
		} else if (getParameterByName("singer") == 4) {
			alert('아직 오픈 시간이 아닙니다.');
			location.href = '/';
		}
		
		function getParameterByName(name, url) {
			if (!url) url = window.location.href;
			name = name.replace(/[\[\]]/g, '\\$&');
			var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
				results = regex.exec(url);
			if (!results) return null;
			if (!results[2]) return '';
			return decodeURIComponent(results[2].replace(/\+/g, ' '));
		}
	</script>
</body>
</html>
