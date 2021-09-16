<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addCustomers.aspx.cs"
    Inherits="WebApplication1TRY3.addCustomers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <!--starts style-->
    <!--in between <style> we added the styles of the adding customer and it's content including buttons,labels,textboxes,etc.</style> -->
    <style>
        .txtStyle {
          
                width:350px;
            border-radius:10px;
            
        }
        .lblstyle{
            font:italic,14px;
            color:white;
        }
        .div1style{
            text-align:center ;
            margin:auto;
            background-color:gray; 
            border: 1px solid #000 ;
            border-radius:15px; 
                width: 500px; 
            height:fit-content();
        }
        .div2style{
             text-align:center ;
             margin:auto;
             background-color:wheat;
             border-bottom-left-radius: 15px ;
             border-bottom-right-radius:15px;
             width: 499px;
             height:fit-content();
        }
        .btnstyle{
             font:bold 12px arial; 
             color:white;
             background-color:wheat;
             border-color:wheat;
             border-radius:5px;
        }
        .txtBoxStyle{
              width: 100px;
              -webkit-transition: width .35s ease-in-out;
              transition: width .35s ease-in-out;
              border-radius:5px;

        }
        .txtBoxStyle:focus {
              width: 250px;
        }
        
    </style>
</head>
    <!--body starts-->
<body>
    <!--creating form called form1-->
    <form id="form1" runat="server">
        <!--adding div to include parameters of addind a customer and it's style-->
         <div class="div1style">
             <!--new line-->
            <br />   
             <!--labels to indicate the name area-->
    <asp:Label ID="Namelbl" runat="server" Text="Name" class="lblstyle"></asp:Label>
            <br />
             <!--textbox to insert the name-->
    <asp:TextBox ID="nametxt"  placeholder=" full name" runat="server" Class="txtBoxStyle" OnTextChanged="nametxt_TextChanged" />
            <br />

    <asp:Label ID="IDlbl" runat="server" Text="ID" class="lblstyle"></asp:Label>
            <br />
    <asp:TextBox ID="CID" placeholder="Customer ID" runat="server" class="txtStyle"></asp:TextBox>
            <br />
    <asp:Label ID="Glbl" runat="server" Text="Group belong?" class="lblstyle"></asp:Label>
            <br />
    <asp:TextBox ID="Grouptxt" placeholder="Group name or number" runat="server" class="txtStyle" style="margin-right:10px;"></asp:TextBox>
                     <!--a groupAdding button to redirect to the group page--><asp:Button ID="AddGroupButton" runat="server" Text=" add group " class="btnstyle" OnClick="AddGroupButton_Click" />

            <br />
             <asp:Label ID="divisonlbl" runat="server" Text="Division" class="lblstyle"></asp:Label>
             <br />
             <asp:TextBox ID="divisiontxt" runat="server" placeholder=" ex: jeddah city division " class="txtStyle"></asp:TextBox>
             <br />
             <br />
             <!--open another div inside the main one to differ the buttons area-->
<div class="div2style">
                <asp:Button ID="savebtn" runat="server" Text=" Save " class="btnstyle" OnClick="savebtn_Click" />
            
    <asp:Button ID="showCus" runat="server" Text=" Show Customers " class="btnstyle" OnClick="showCus_Click"/>
    <!--end of buttons div-->
</div>
    <!--end of main div-->
            </div>
        <!--end of form-->
    </form>
    <!--end of body-->
</body>
</html>
