﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="CouncilEvent.Login" %>

<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form runat="server">
		<asp:TextBox runat="server" ID="UserID"></asp:TextBox>
		<asp:TextBox runat="server" ID="UserPW"></asp:TextBox>
		<asp:Button runat="server" ID="LoginButton" Text="로그인" OnClick="LoginButton_Click" />
    </form>
</body>
</html>