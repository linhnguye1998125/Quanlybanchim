<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dangky.aspx.cs" Inherits="Dangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css?family=Bungee+Inline');

        body {
            margin: 0;
            padding: 0;
            background-repeat: no-repeat;
            background-size: 100%, 100%, auto;
            background-image: url("image/hinhdk1.jpg" );
            font-family: Arial;
            font-size: 12px;
        }

        .style {
            margin-top: 75px;
        }

        fieldset {
            padding: 20px;
            padding: 20px;
            width: 400px;
            margin-left: 31%;
            margin-top: 16px;
        }

        h1 {
            position: fixed;
            font-family: 'Bungee Inline', cursive;
            margin-left: 2%;
        }

        .user {
            height: 21px;
            width: 200px;
            border-radius: 3px;
            background: transparent;
        }

        .dk {
            text-align: -webkit-center;
    
            margin-top: 5px;
            border-radius: 5px;
        }

        input#submit {
            height: 34px;
            color: darkred;
             font-family: 'Bungee Inline', cursive;
            width: 125px;
            background-color: blanchedalmond;
        }
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="style">
            <h1>
                <p style="text-align: center;">Đăng ký thành viên</p>
            </h1>

            <fieldset>
                <legend style="font-size: 15px">Thông tin cá nhân</legend>


                <div>
                    <asp:Label ID="Label1" runat="server" Text="Họ và tên"></asp:Label>


                    &nbsp;
                    <asp:TextBox ID="txbTen" CssClass="user" placeholder="Họ và Tên" runat="server"></asp:TextBox>


                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txbTen" ErrorMessage="Tên phải khác rỗng">(*)</asp:RequiredFieldValidator>
                    <br />

                    <asp:Label ID="Label2" runat="server" Text="Gioi Tinh"></asp:Label>


                    &nbsp;
    <br />

                    &nbsp;<asp:RadioButtonList ID="rdGioiTinh" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem Selected="True" Value="0">Nam</asp:ListItem>
                        <asp:ListItem Value="1">Nữ</asp:ListItem>
                    </asp:RadioButtonList>
                    <br />

                    <asp:Label ID="Label3" runat="server" Text="Địa chỉ"></asp:Label>


                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txbDiachi" CssClass="user" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txbDiachi" ErrorMessage="Địa chỉ không được rỗng ">(*)</asp:RequiredFieldValidator>
                    <br />

                    <asp:Label ID="Label4" runat="server" Text="ĐIện thoại"></asp:Label>


                    &nbsp;
        <asp:TextBox ID="txbSdt" CssClass="user" runat="server" Height="22px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txbSdt" ErrorMessage="Số điện thoại không được rỗng">(*)</asp:RequiredFieldValidator>
                    <br />

                    <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>


                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtEmail" CssClass="user" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="lõi mail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">(*)</asp:RegularExpressionValidator>
                    <br />

                    <asp:Label ID="Label6" runat="server" Text="Ngày sinh"></asp:Label>


                    &nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                    </asp:DropDownList>
                    &nbsp;Năm
        <asp:TextBox ID="txbNam" CssClass="user" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txbNam" ErrorMessage="lỗi năm " MaximumValue="2050" MinimumValue="1800" Type="Integer">(*)</asp:RangeValidator>


                    <br />

                </div>
            </fieldset>

            <fieldset>
                <legend style="font-size: 15px;">Thông tin đăng nhập</legend>

                Tên đăng nhập&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="txtTenDN" CssClass="user" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtTenDN" ErrorMessage="Tên DN phải khác rỗng">(*)</asp:RequiredFieldValidator>
                <br />
                Mật khẩu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="txbMatkhau" CssClass="user" runat="server"></asp:TextBox>
                <br />
                Nhập lại mật khẩu&nbsp;&nbsp;&nbsp;
          <asp:TextBox ID="txbnhaplaimk" CssClass="user" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txbMatkhau" ControlToValidate="txbnhaplaimk" ErrorMessage="lỗi không giống nhau">(*)</asp:CompareValidator>
            </fieldset>
            <div class="dk">
                <asp:Button ID="submit" runat="server" type="submit" Text="Đăng Ký" OnClick="submit_Click" Height="34px" Width="125px" />
            </div>
            <br />
            <asp:Label ID="lbThongbaoloi" runat="server"></asp:Label>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
    </form>
</body>
</html>
