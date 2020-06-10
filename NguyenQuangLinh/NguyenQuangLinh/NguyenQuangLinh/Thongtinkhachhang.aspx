<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Thongtinkhachhang.aspx.cs" Inherits="Thongtinkhachhang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://fonts.googleapis.com/css?family=Sedgwick+Ave+Display" rel="stylesheet">
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css?family=Baloo');
        @import url('https://fonts.googleapis.com/css?family=Sedgwick+Ave+Display');

        body {
            margin: 0;
            padding: 0;
            background-repeat: no-repeat;
            background-size: 100%, 100%, auto;
            background-image: url("image/tttk.jpg" );
            font-family: Arial;
            font-size: 12px;
        }

        table {
            margin-left: 34%;
        }

        h1 {
            margin-left: 21%;
        }

        .bg-light {
            text-align: -webkit-center;
            margin-left: 33%;
            font-size: 18px;
        }

        table#rblGioiTinh {
            margin-left: -9px;
        }

        td.tren {
            float: left;
            margin-left: 43%;
        }

        .tren {
            font-family: 'Sedgwick Ave Display', cursive;
        }

        .input {
            height: 24px;
            color: darkred;
            font-family: 'Bungee Inline', cursive;
            width: 220px;
            background-color: blanchedalmond;
            border-radius: 5px;
        }

        .capnhat {
            height: 34px;
            margin-left: 24%;
            margin-top: 2%;
            color: darkred;
            font-family: 'Bungee Inline', cursive;
            width: 125px;
            background-color: blanchedalmond;
        }
             a#HyperLink1{
                float: right;
                margin-right: 94px;
                font-family: 'Bungee Inline', cursive;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="bg-light">
            <h1 style="font-family: 'Baloo', cursive;">
                <p>Thông Tin Tài Khoản</p>
            </h1>
            <table style="width: 100%;">
                <tr>
                    <td class="tren">Họ và tên:</td>
                    <td>
                        <asp:TextBox ID="txtHoTen" CssClass="input" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtHoTen"></asp:RequiredFieldValidator>
                    </td>

                </tr>
                <tr>
                    <td class="tren">Ngày sinh:</td>
                    <td>
                        <asp:TextBox ID="txtNgaySinh" CssClass="input" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtNgaySinh"></asp:RequiredFieldValidator>
                    </td>

                </tr>
                <tr>
                    <td class="tren">Giới tính:</td>
                    <td>
                        <asp:RadioButtonList ID="rblGioiTinh" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem Value="Nam">Nam</asp:ListItem>
                            <asp:ListItem Value="Nữ">Nữ</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>

                </tr>
                <tr>
                    <td class="tren">Số điện thoại:</td>
                    <td>
                        <asp:TextBox ID="txtSoDienThoai" CssClass="input" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtSoDienThoai"></asp:RequiredFieldValidator>
                    </td>

                </tr>
                <tr>
                    <td class="tren">Địa chỉ:</td>
                    <td>
                        <asp:TextBox ID="txtDiaChi" CssClass="input" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="txtDiaChi"></asp:RequiredFieldValidator>
                    </td>

                </tr>

            </table>
            <asp:Button ID="txtCapNhat" CssClass="capnhat" runat="server" Text="Cập nhật" OnClick="txtCapNhat_Click" />

            <br />
            <asp:Label ID="lbThongBao" runat="server"></asp:Label><br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Doimatkhau.aspx">Đổi mật khẩu</asp:HyperLink>
        </div>
    </form>
</body>
</html>
