<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mainForm.aspx.cs" Inherits="WebApplication1TRY3.mainForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!--starts style-->
    <!--in between <style> we added the styles of the main page and it's content including buttons, dropdownlists,links,etc.</style> -->
    <style>

     .DivMainPageStyleHorizintal3rd{
           background-color:wheat;
            width:1120px;
            height:70px;
            position:sticky;
            position:-webkit-sticky;
            top: 0;
            padding: 5px;
        }
        
        .DivMainPageStyleVerticalTool{
            background-color:wheat;
            width:200px;
            height:800px;
            -moz-border-radius-bottomright:15px;
            -moz-border-radius-bottomleft:0px;

        }
        .btnStyle
        {
              color:white;
              background-color:inherit;
              float: left;
              border: none;
              outline: none;
              cursor: pointer;
              padding: 14px 16px;
              transition: 0.3s;
              font-size: 17px; 
              width:100px;
            }
        .MainBtnStyle{
              color:white;
              background-color:inherit;
              float: left;
              border: none;
              outline: none;
              cursor: pointer;
              padding: 14px 16px;
              transition: 0.3s;
              font-size: 25px; 
              width:100px;
        }
        .MainBtnStyle:hover{
            background-color:#e0b86e;
        }
        .btnStyle:hover{
            background-color:#e0b86e;
        }
        .DropListStyle{
              color:white;
              background-color:inherit;
              float: left;
              border: none;
              outline: none;
              cursor: pointer;
              padding: 14px 16px;
              transition: 0.3s;
              font-size: 17px; 
        }
        .DropListStyle:hover{
            background-color:#e0b86e;
        }
        .lblstyle{
            font:italic,14px;
            color:white;
            padding-bottom:500px;
            text-decoration: none ;
        }
        .DivMainPageStyleVerticalbody {
            background-color: gray;
            width: fit-content();
            height: fit-content();
            right: 0;
            top:100px;
            
        }
        .pstyle{
            font-size:16px;
            font-family:Arial;
        }
        
    </style>

</head>
    <!--starts body-->
<body>
    <!-- the <body> contains the main desighn which links us to the api systems and events-->
    <!--form starts -->
    <form id="mainFormForCustomers" runat="server">
        <!--added div for the main page and includded the class style-->
        <div class="DivMainPageStyleVerticalbody">
        <!--added div for tabsBar and includded the class style-->
        <div class="DivMainPageStyleHorizintal3rd">
            <!--create buttons for refresh the page and includded the class style-->
            <asp:Button ID="mainPbtn" runat="server" Text="Main" Class="MainBtnStyle" OnClick="mainPbtn_Click" />
            <!--starts creating drop down lists and its componnets and includded the class style-->
            <asp:DropDownList ID="CustomerDDL" runat="server" AutoPostBack="true" class="DropListStyle" OnSelectedIndexChanged="CustomerDDL_SelectedIndexChanged">
                <asp:ListItem>Customers</asp:ListItem>
                <asp:ListItem>Add Customer</asp:ListItem>
                <asp:ListItem>Edit Customers</asp:ListItem>
                            </asp:DropDownList>
            
            <asp:DropDownList ID="GroupDDL" runat="server" Class="DropListStyle">
                <asp:ListItem>Group</asp:ListItem>
                <asp:ListItem>Add Group</asp:ListItem>
                <asp:ListItem>Edit Group</asp:ListItem>
            </asp:DropDownList>
            <asp:DropDownList ID="DivisionDDL" runat="server" class="DropListStyle">
                <asp:ListItem >Division</asp:ListItem>
                <asp:ListItem>Add Division</asp:ListItem>
                <asp:ListItem>Edit Division</asp:ListItem>
            </asp:DropDownList>
            <!--end of DivMainPageStyleHorizintal3rd div-->
        </div>
            
                
            <!--added div for horezintalBar and includded the class style-->
            <div class="DivMainPageStyleVerticalTool"> 
                <p class="">
                    contact out customer service <br />
                    <!--added link to help website-->
                    at <a href="http://help.v1.neomproerp.com/pages/AllMangement.php?Mang=7#account" style="color:#ffffff;text-decoration:none;">help.com</a>
                </p>
                <!--end of DivMainPageStyleVerticalTool div-->
            </div>
            <!--end of DivMainPageStyleVerticalbody div-->
            </div>
        <!--end form-->
    </form>
    <!--end body-->
</body>
</html>
