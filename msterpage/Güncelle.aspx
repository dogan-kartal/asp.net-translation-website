﻿<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Güncelle.aspx.cs" Inherits="msterpage.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
  background-color: black;
  margin-bottom:0;
}

* {
  box-sizing: border-box;
}


.container {
  padding: 16px;
  background-color: white;
}


input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity: 1;
}

/
a {
  color: dodgerblue;
}


.signin {
  background-color: #f1f1f1;
  text-align: center;
}
    .auto-style1 {
        text-align: center;
    }
</style>
<html>
<body>

<form action="/action_page.php">
  <div class="container">
    
      <asp:Panel ID="Panela" runat="server"> 

          
      
      <h1 class="auto-style1">Kullanıcı Adı Değiştir</h1>
  
    <hr>
      

    <label for="email"><b>Kullanıcı Adı</b></label>
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

    <label for="psw"><b>Yeni Kullanıcı Adı</b></label>
      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

    <label for="psw-repeat"><b>Şifre</b></label>
      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <hr>
    

      <asp:Button ID="Button1" type="submit" class="registerbtn" runat="server" Text="Güncelle" OnClick="Button1_Click"  />
  </div>
     
  <div style="background-color:white; height: 456px;">
      </asp:Panel>

      
      <asp:Label ID="Label1" runat="server" style="margin-left:630px;" ></asp:Label>
  </div>

</form>

</body>
</html>







</asp:Content>
