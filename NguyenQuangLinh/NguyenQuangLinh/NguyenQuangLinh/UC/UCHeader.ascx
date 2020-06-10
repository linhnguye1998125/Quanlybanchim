<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UCHeader.ascx.cs" Inherits="UC_UCHeader" %>

<style type="text/css">
    @import url('https://fonts.googleapis.com/css?family=Bungee+Inline');
    @import url('https://fonts.googleapis.com/css?family=Baloo');

    .navbar-nav li {
        background-color: black;
        float: left;
    }

        .navbar-nav li a {
            margin-left: 5px;
            margin-left: -50px;
        }

    .navbar {
        position: fixed;
        margin: 0;
    }


    .container ul {
        margin-top: 10px;
    }

    .navbar-custom .nav li a {
        padding-top: 10px;
    }



    .navbar-custom .navbar-brand .navbar-toggle {
        padding: 4px 6px;
        font-size: 16px;
    }

        .navbar-custom .navbar-brand .navbar-toggle:focus,
        .navbar-custom .navbar-brand .navbar-toggle:active {
            outline: 0;
        }

    .navbar-custom .nav li a:hover {
        outline: 0;
        color: rgba(255,55,41,.8);
        background-color: transparent;
    }

    .container {
        height: 100px;
        margin-left: 30px;
    }

    .containerrr {
    }

        .containerrr video {
            border-radius: 10px;
        }

    .navbar-header {
        margin-top: 10px;
        /*margin-bottom: -10px;*/
    }



    ul {
        margin-left: -30px;
    }

        ul li {
            list-style-type: none;
            margin-right: 10px;
        }

            ul li a {
                font-family: 'Bungee Inline', cursive;
                font-size: 17px;
                text-shadow: 1px 1px 0 #B4C6C6;
                text-transform: uppercase;
                text-decoration: none;
                color: black;
            }

    a:hover {
        text-decoration: none;
        color: black;
    }

    .table {
        margin-top: 20px;
        margin-left: 5px;
        max-width: -4%;
    }

    .video {
        position: relative;
        -moz-box-shadow: 1px 2px 4px rgba(0, 0, 0,0.5);
        -webkit-box-shadow: 1px 2px 4px rgba(0, 0, 0, .5);
        box-shadow: 1px 2px 4px rgba(0, 0, 0, .5);
    }

    .seach {
        margin-top: -36px;
        float: right;
        margin-right: 200px;
        width: 214px;
        height: 25px;
    }
    /*.backround{
      
        top:0;
        left:0;
        right:0;
        width:100%;
        height:auto;
         position: fixed;
    }*/
    .navbar1 {
        background-color: black;
    }

    .hinh1 {
        height: 39px;
        margin-left: 10%px;
        border-radius: 19px;
    }

    .anhhinh {
        /*width: 200px;
        height: 55px;*/
        line-height: 50%;
        margin-left: -40px;
    }

    .row {
        margin-left: 0px;
        margin-right: 0px;
    }

    .seach1 {
        max-width: 33px;
        margin-top: -43px;
        margin-right: 191px;
        float: right;
    }

    .login {
        margin-top: -33px;
        margin-right: 80px;
        float: right;
        font-family: 'Baloo', cursive;
    }
       .login1 {
        margin-top: -33px;
        margin-right: -7px;
        float: right;
        font-family: 'Baloo', cursive;
    }

    .giohang {
        max-width: 33px;
        margin-top: -45px;
        margin-right: -70px;
        float: right;
    }

    .dangxuat {
        max-width: 33px;
        margin-top: -45px;
        margin-right: 24px;
        float: right;
    }

    .ten {
        margin-top: -32px;
        margin-right: 95px;
        float: right;
        font-family: 'Baloo', cursive;
        font-size: 17px;
    }


    .nutb {
        position: fixed;
        top: 172px;
        left: 0px;
        width: 35px;
          outline: none;
        z-index: 99;
        border-radius: 20px;
    }

    #ve {
        text-decoration: none;
    }

    .navbar1 {
    }

    .navbar-fixed-top {
        margin-top: 0px;
        margin-left: 0px;
        margin-right: 0px;
        max-height: 78px;
        border-radius: 20px;
        box-shadow: 0px 2px 2px 2px rgba(0, 0, 0, 0.5), 0px 2px 2px 0px rgba(255, 255, 255, 0.5) inset;
    }

    .nho {
        background-color: white;
        max-height: 40px;
        line-height: 50%;
    }

    .giam {
        background-color: red;
        max-height: 40px;
    }

    .tims {
        padding: 20px;
        display: none;
        padding: 20px;
        padding: 0px;
        margin-top: 82px;
        margin-left: -24px;
        position: fixed;
        top: 134px;
        left: 29px;
        width: 13px;
        z-index: 99;
        font-family: 'Bungee Inline', cursive;
    }

    .nutb:hover + .tims {
        display: block;
    }

    .nuta {
     transition: all 1s;
        position: fixed;
        top: 135px;
        left: 0px;
        width: 35px;
        z-index: 99;
      outline: none;
        border-radius: 20px;
        transform: translateY(500px);
        opacity: 0
    }

    .nutra {
        position: fixed;
        top: 135px;
        left: 0px;
        width: 35px;
        z-index: 99;
        outline: none;
        border-radius: 20px;
        transform: translateX(0px);
        opacity: 1;
        	transition: all 1s;
    }
</style>

<script src="../umbala.js"></script>


<div style="height:100px;"></div>
<nav class="navbar navbar-custom  navbar-fixed-top "   id="menu" role="navigation">
    <div class="container  ">

        <div class="navbar-header ">
            <a   href="TrangChu.aspx">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                          <img class=" anhhinh  " style=""  src='<%# "image/"+Eval("Tenlogo") %>' />
                        </ItemTemplate>
                    </asp:Repeater>
            </a>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars" style="background: white;display:inline-block;"></i>
                </button>
        </div>


        <div class="collapse navbar-collapse navbar-main-collapse ">
            <div class="table   ">

                <asp:DataList ID="DataList10" CssClass="" runat="server" RepeatDirection="Horizontal">
                    <ItemTemplate>
                        <ul class="mee   ">
                            <li>
                                <asp:HyperLink ID="HyperLink1" CssClass="" runat="server" NavigateUrl='<%# "~/Chim.aspx?Maloai="+Eval("Maloai") %>' Text='<%# Eval("khuvuc") %>'></asp:HyperLink>
                            </li>

                        </ul>

                    </ItemTemplate>

                </asp:DataList>
                <div class="seach">
                 
             <asp:TextBox ID="TextBox1" style="border-radius:10px; text-align:center; outline:none;"  placeholder="Seach" runat="server"></asp:TextBox>  

                </div>
              
                <asp:ImageButton ID="ImageButton1" CssClass="seach1"  runat="server" ImageUrl="~/seach.png" Width="35px" OnClick="ImageButton1_Click"/>
              <asp:HyperLink ID="HyperLink2" CssClass="ten" runat="server" NavigateUrl="~/Thongtinkhachhang.aspx" ForeColor="Red"> [HyperLink2]</asp:HyperLink>
                <asp:LinkButton ID="linkdangnhap" CssClass="login"  runat="server" Font-Bold="False" Font-Size="14pt" ForeColor="Black" PostBackUrl="~/dangnhap.aspx">Đăng nhập</asp:LinkButton>
                <asp:LinkButton ID="linkdangky" CssClass="login1"  runat="server" Font-Bold="False" Font-Size="14pt" ForeColor="Black" CommandName="Black"  >Đănng Ký</asp:LinkButton>

                <asp:ImageButton ID="ImageButton3" CssClass="dangxuat"  runat="server" ImageUrl="~/dangxuat.png" Width="35px" OnClick="ImageButton3_Click"  />
              <asp:ImageButton ID="ImageButton2" CssClass="giohang"  runat="server" ImageUrl="~/cart.png" Width="35px" PostBackUrl="~/Giohang.aspx" />

        </div>

    </div>

    </div>

</nav>
<div class="containerrr">
    <div class="row" >
            <img  class=" col-xs-12 col-sm-2" src="123.gif" alt=""  " />
            <video  class="video col-xs-12 col-sm-8" src="chim.mp4" type="video/mp4" autoplay muted loop>
            </video>
            <img  class="col-xs-12 col-sm-2" src="123.gif"  class="anh1" />

         
        </div>
    <%--<h2 style="margin-top:50px; display:block;text-align:center;  font-family: 'Bungee Inline', cursive;">the bird</h2>--%>

   
</div>

<a href="#menu"><asp:ImageButton CssClass="nuta" ID="ImageButton4" ImageUrl="~/image/dong1.jpg"   runat="server" /></a>


<br />
<asp:ImageButton CssClass="nutb" ID="ImageButton5" ImageUrl="~/image/sun.png" href="#menu"  runat="server" PostBackUrl="~/TinTuc.aspx" />
<div class="tims col-lg-1">Tin Tức</div>