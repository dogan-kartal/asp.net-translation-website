<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="HAKKIMIZDA.aspx.cs" Inherits="msterpage.HAKKIMIZDA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!DOCTYPE html>

<html>
    <head>
    <title></title>
    <link href="hakkımızda.css" rel="stylesheet" />
</head>
<body>
   <form>
        <div class="about-section">
  <h1>Hakkımızda</h1>
  <p>Mühendislik öğrencilerinin daha kolay bilgiye ulaşması için çalışıyoruz.</p>
</div>

<h2 style="text-align:center">Our Team</h2>
<div class="row">
  <div class="column">
    <div class="card">
      <img src="RESİM/K.jpeg" alt="Jane" style="width:100%">
      <div class="container">
        <h2>Cansu Şen</h2>
        <p class="title">CEO & Founder</p>
        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
        <p>jane@example.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="RESİM/E2.jpeg" alt="Mike" style="width:100%">
      <div class="container">
        <h2>Onur Akköse</h2>
        <p class="title">Art Director</p>
        <p>Some text that describes me lorem ipsum ipsum lorem..</p>
        <p>mike@example.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="RESİM/E1.jpeg" alt="John" style="width:100%">
      <div class="container">
        <h2>Doğan KARTAL</h2>
        <p class="title">Designer</p>
        <p>Herşeyi ben yaptım.</p>
        <p>john@example.com</p>
        <p><button class="button">Contact</button></p>
      </div>
    </div>
  </div>
</div>

   

    </form>
</body>
</html>

</asp:Content>
