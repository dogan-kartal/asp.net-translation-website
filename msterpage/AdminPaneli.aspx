<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPaneli.aspx.cs" Inherits="msterpage.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>

         

    </title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-left:0px; margin-top:200px; width:200px; height:500px; background-color:#ccc; border-color:black; border-width:3px; ">
            <strong>İSTENİLEN KELİMELER</strong>
            <br />
            <br />
            <br />
            <br />
         <asp:DataList ID="DataList1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" Width="195px">
             <AlternatingItemStyle BackColor="PaleGoldenrod" />
             <FooterStyle BackColor="Tan" />
             <HeaderStyle BackColor="Tan" Font-Bold="True" />
             <ItemTemplate>
                 Kelime:
                 <asp:Label ID="KelimeLabel" runat="server" Text='<%# Eval("Kelime") %>' />
                 <br />
<br />
             </ItemTemplate>
             <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            </asp:DataList>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:masterConnectionString2 %>" SelectCommand="SELECT * FROM [İstenilenKelime]"></asp:SqlDataSource>

        </div>

        <div style="margin-left:500px;margin-top:-500px; width:694px; height:500px; background-color:#ccc;">

            

        </div>
    </form>
</body>
</html>
