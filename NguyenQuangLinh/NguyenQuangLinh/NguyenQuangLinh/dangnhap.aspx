<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dangnhap.aspx.cs" Inherits="dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="https://fonts.googleapis.com/css?family=Bungee+Inline" rel="stylesheet">
    <style>
        @import url(http://fonts.googleapis.com/css?family=Exo:100,200,400);
        @import url(http://fonts.googleapis.com/css?family=Source+Sans+Pro:700,400,300);
         @import url('https://fonts.googleapis.com/css?family=Bungee+Inline');
        body {
            margin: 0;
            padding: 0;
           background-repeat: no-repeat;
           background-size: 100%, 100%, auto;
            background-image: url("image/backround.jpg" );
        
            font-family: Arial;
            font-size: 12px;
        }




        .header {
            position: absolute;
            top: calc(50% - 35px);
            left: calc(50% - 255px);
            z-index: 2;
        }

            .header div {
                float: left;
                color: #fff;
                font-family: 'Exo', sans-serif;
                font-size: 35px;
                font-weight: 200;
            }

                .header div span {
                    color: #5379fa !important;
                }

        .login {
            position: absolute;
            top: calc(50% - 75px);
            left: calc(50% - 50px);
            height: 150px;
            width: 350px;
            padding: 10px;
            z-index: 2;
        }

            .login input[type=text] {
                width: 250px;
                height: 30px;
                background: transparent;
                border: 1px solid rgba(255,255,255,0.6);
                border-radius: 2px;
                color: #fff;
                font-family: 'Exo', sans-serif;
                font-size: 16px;
                font-weight: 400;
                padding: 4px;
            }

            .login input[type=password] {
                width: 250px;
                height: 30px;
                background: transparent;
                border: 1px solid rgba(255,255,255,0.6);
                border-radius: 2px;
                color: #fff;
                font-family: 'Exo', sans-serif;
                font-size: 16px;
                font-weight: 400;
                padding: 4px;
                margin-top: 10px;
            }

            .login input[type=button] {
                width: 260px;
                height: 35px;
                background: #fff;
                border: 1px solid #fff;
                cursor: pointer;
                border-radius: 2px;
                color: #a18d6c;
                font-family: 'Exo', sans-serif;
                font-size: 16px;
                font-weight: 400;
                padding: 6px;
                margin-top: 10px;
            }

                .login input[type=button]:hover {
                    opacity: 0.8;
                }

                .login input[type=button]:active {
                    opacity: 0.6;
                }

            .login input[type=text]:focus {
                outline: none;
                border: 1px solid rgba(255,255,255,0.9);
            }

            .login input[type=password]:focus {
                outline: none;
                border: 1px solid rgba(255,255,255,0.9);
            }

            .login input[type=button]:focus {
                outline: none;
            }

        ::-webkit-input-placeholder {
            color: rgba(255,255,255,0.6);
        }

        ::-moz-input-placeholder {
            color: rgba(255,255,255,0.6);
        }

        input[type="submit"] {
            color: white;
            background: blue;
            border: none;
            padding: .7em 0;
            width: 44%;
            font-size: 1em;
            outline: none;
            border-radius: 20px;
        }

            input[type="submit"]:hover {
                background: #fff;
                color: black;
                transition: 0.5s all;
                -webkit-transition: 0.5s all;
                -o-transition: 0.5s all;
                -moz-transition: 0.5s all;
                -ms-transition: 0.5s all;
                outline: none;
            }
            a#HyperLink1{
                float: right;
                margin-right: 94px;
                font-family: 'Bungee Inline', cursive;
            }
            .dangky{
                float: right;
                margin-right: 102px;
                margin-top: -26px;
                font-size: 17px;
                text-decoration:none;
                 color:white;
            }    
    </style>

    <script src="js/prefixfree.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        <div>
                        <div class="body"></div>
            <div class="grad"></div>
            <div class="header">
                <div>Đăng<span>Nhập</span></div>
            </div>
            <br>
            <div class="login">
                <asp:TextBox ID="user" CssClass="user" placeholder="Tài Khoản" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="user" ErrorMessage="không được rỗng">(*)</asp:RequiredFieldValidator>
                <br>
                <br />
                <asp:TextBox ID="password" CssClass="password" type="password" placeholder="Mật Khẩu" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Mật khẩu phải khác rỗng">(*)</asp:RequiredFieldValidator>
                <br>
                <br />
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Yellow" NavigateUrl="~/Doimatkhau.aspx">Đổi mật khẩu</asp:HyperLink>
                <br />
                   <br />
                <asp:Button ID="submit" runat="server" type="submit" Text="Đăng nhập" OnClick="submit_Click" />
               
           <asp:HyperLink ID="HyperLink2" CssClass="dangky" runat="server" ForeColor="White" BorderStyle="Ridge" NavigateUrl="~/Dangky.aspx" >Đăng ký</asp:HyperLink>
                     <asp:Label ID="lblThongbao" runat="server" Text=""></asp:Label>
                <br />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                <br />
            </div>
            <script src='http://codepen.io/assets/libs/fullpage/jquery.js'></script>
        </div>
    </form>
</body>
</html>
