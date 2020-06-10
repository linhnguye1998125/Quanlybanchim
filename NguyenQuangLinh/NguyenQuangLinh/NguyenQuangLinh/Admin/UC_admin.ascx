<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UC_admin.ascx.cs" Inherits="Admin_UC_admin" %>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
    .navbar-inverse {
        background-color: white;
        border-color: #080808;
    }

        .navbar-inverse .navbar-nav > li > a {
            color: black;
        }

    li:hover {
        background-color: yellow;
        color: red;
    }

    .navbar-inverse .navbar-nav > .open > a, .navbar-inverse .navbar-nav > .open > a:focus, .navbar-inverse .navbar-nav > .open > a:hover {
        /* color: #fff; */
        /* background-color: #080808; */
    }
</style>








<nav class="navbar navbar-inverse">
    <div class="container-fluid">

        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="Default.aspx">
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>

                        <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/image/"+Eval("Tenlogo") %>' />
                    </ItemTemplate>
                </asp:Repeater>
            </a>
        </div>

        <ul class="nav navbar-nav">

            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Quản lý chim <span class="caret"></span></a>
                <ul class="dropdown-menu">


                    <li><a href="suaxoa.aspx">Sửa, xoá Chim</a></li>
                    <li><a href="them.aspx">Thêm Chim</a></li>
                </ul>
            </li>
            <li>
                <asp:HyperLink ID="Label1" CssClass="hover" runat="server" Text="Quản lý khách hàng" NavigateUrl="~/Admin/QLkhachhang.aspx"></asp:HyperLink></li>
            <li>
                <asp:HyperLink ID="HyperLink1" CssClass="hover" runat="server" Text="Quản lý đơn hàng" NavigateUrl="~/Admin/QLDonhangAdmin.aspx"></asp:HyperLink></li>
            <li>
                <asp:HyperLink ID="HyperLink3" CssClass="hover" runat="server" Text="Quản lý logo" NavigateUrl="~/Admin/QLLogo.aspx"></asp:HyperLink></li>
            <li>
            <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Quản lý Tin <span class="caret"></span></a>
                <ul  class="dropdown-menu">
                    <li><a href="QLtin.aspx">Sửa, xoá tin</a></li>
                    <li><a href="them.aspx">Thêm tin</a></li>
                </ul>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li>
                <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Red">dv</asp:HyperLink>
            </li>
            <li><a href="#">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/image/businessman.png" />
                <asp:Button ID="Button1" runat="server" Text="Đăng nhập" OnClick="Button1_Click" PostBackUrl="~/Admin/DangnhapAdmin.aspx" />

            </a>

            </li>
            <li><a href="#">
                <asp:Button ID="Button2" runat="server" Text="Đăng Xuất" OnClick="Button2_Click" /></a></li>
        </ul>

    </div>
</nav>
