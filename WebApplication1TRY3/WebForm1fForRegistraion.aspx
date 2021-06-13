<%@ Page Title="title" Language="C#" AutoEventWireup="true" CodeFile="WebForm1fForRegistraion.aspx.cs" Inherits="WebApplication1TRY3.WebForm1fForRegistraion" %>

<%@ Register Assembly="System.Web.Mvc" Namespace="System.Web.Mvc" TagPrefix="cc1" %>  

  
<!DOCTYPE html>  
  
<html xmlns="http://www.w3.org/1999/xhtml">  
<head runat="server">  
    <title></title>  
</head>  
<body> 
   <form id="clientForm" runat="server">  

        <div style="text-align:center ;margin:auto; background-color:gray; border: 1px solid #000 ; border-radius:15px; width: 500px; height:500px;">

            <br >            
    <asp:Label ID="Namelbl" runat="server" Text="Name" style="font:italic,14px;color:white"></asp:Label>
            <br />
    <asp:TextBox ID="nametxt" placeholder=" full name" runat="server" MaxLength="100" Style="width:350px; border-radius:10px;" />
            <br />
    <asp:Label ID="IDlbl" runat="server" Text="ID" style="font:italic,14px;color:white"></asp:Label>
            <br />
    <asp:TextBox ID="CID" placeholder="Customer ID" runat="server"></asp:TextBox>
            <br />
    <asp:Label ID="Glbl" runat="server" Text="Group belong?" style="font:italic,14px;color:white"></asp:Label>
            <br />
    <asp:TextBox ID="Grouptxt" placeholder="Group name or number" runat="server"></asp:TextBox>
            <br />
            <br>
            <div style="text-align:center ;margin:auto; background-color:wheat; border: 1px solid ; width: 499px; height:100px;">
                <asp:Button ID="savebtn" runat="server" Text="save" Style="font:bold 12px arial; color:white; background-color:wheat;border-color:wheat" />
</div>
            </br>

            </div>
        </form>
    
</body>  
</html>