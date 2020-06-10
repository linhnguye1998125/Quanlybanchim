<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Doimatkhau.aspx.cs" Inherits="Doimatkhau" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://fonts.googleapis.com/css?family=Bungee+Inline" rel="stylesheet">
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css?family=Bungee+Inline');

        body {
            margin: 0;
            padding: 0;
            background-repeat: no-repeat;
            background-size: 100% 168%;
            background-image: url("image/qmk.jpg" );
            font-family: Arial;
            font-size: 12px;
        }

        fieldset {
            padding: 20px;
            padding: 20px;
              width: 100%;
            margin-left: 31%;
            font-family: 'Bungee Inline', cursive;
            margin-top: 16px;
                font-size: 17px;
        }

        h1 {
            margin-top: 96px;
            position: fixed;
            text-align: center;
            margin-left: 241px;
            font-family: 'Bungee Inline', cursive;
        }

        .user {
            height: 21px;
            width: 200px;
            border-radius: 3px;
            background: transparent;
        }

        input#btnDongy {
            text-align: center;
            margin-left: 79px;
            margin-top: 22px;
            height: 34px;
            width: 125px;
            color: darkred;
             font-family: 'Bungee Inline', cursive;
            
            border-radius:3px;
            background-color:#50ff17;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>ĐỔI MẬT KHẨU </h1>
            <div class="popp" style="margin-top: 160px; float: left;">

                <fieldset class="kkk">
                    <legend style="font-size: 15px; text-align: center;">Thông tin cá nhân</legend>

                    <div style="width:width: 100%;">

                        <asp:Label ID="Label2" runat="server" Text="Tên Đăng Nhập"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtusername" CssClass="user" placeholder="Tên tài khoản" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="Tên đăng nhập phải khác rỗng">(*)</asp:RequiredFieldValidator>
                        </br>
                             <asp:Label ID="Label3" runat="server" Text="Mật khẩu cũ"></asp:Label>

                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             
                <asp:TextBox ID="txtpasswork" CssClass="user" placeholder="Mật khẩu" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpasswork" ErrorMessage="Mật khẩu phải khác rỗng">(*)</asp:RequiredFieldValidator>
                        </br>
       
                         <asp:Label ID="Label4" runat="server" Text="Mật khẩu mới"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:TextBox ID="txtmatkhaumoi" CssClass="user" runat="server"></asp:TextBox><br />
                        <asp:Label ID="Label5" runat="server" Text="Mật lại mật khẩu"></asp:Label>
                        &nbsp;&nbsp;
         <asp:TextBox ID="txtnhaplaimatkhau" CssClass="user" runat="server"></asp:TextBox>
                        </br>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnDongy" CssClass="btnDongy" runat="server" Text="Đồng ý " OnClick="btndangnhap_Click" />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                
                    <asp:Label ID="lblThongbao" runat="server" Text=""></asp:Label>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </div>
                </fieldset>
            </div>
        </div>
    </form>
</body>
</html>
