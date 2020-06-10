<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenQuangLinh.master" AutoEventWireup="true" CodeFile="ChiTiet.aspx.cs" Inherits="ChiTiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css?family=Pacifico');

        .giua {
            text-align: -webkit-center;
        }

        td {
            text-align: -webkit-center;
        }

        .nhap {
            text-align: -webkit-right;
            margin-left: 10%;
            margin-right: 10%;
            border: 1px solid #dadada;
            height: 124px;
        }

        .ngay {
            margin-left: 10px;
            font-size: 12px;
            color: cadetblue;
        }

        .nn {
        }

        .kk {
            font-size: large;
        }

        .font {
            font-family: 'Pacifico', cursive;
            font-size: 19px;
        }

        .kkkk {
            font-family: 'Bungee Inline', cursive;
            font-size: 20px;
        }

        .danhgia {
            margin-left: 10%;
        }
    </style>

    <div style="text-align: center;">
        <p style="font-family: 'Pacifico', cursive; font-size: 50px;">Chi Tiết Sản Phẩm</p>
    </div>
    <div class="containner">
        <div class="row">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div>
                        <div class="col-lg-1"></div>
                        <div class="col-lg-4" style="text-align: -webkit-right; padding-right: 0px">
                            <asp:Image ID="Image1" runat="server" Height="313px" Width="427px" ImageUrl='<%# "~/image/"+Eval("HinhMinhHoa") %>' />
                        </div>
                        <div class="col-lg-6" style="text-align: center; margin-left: 26px;">
                            <asp:Label ID="Label1" CssClass="kkkk" runat="server" Text='<%# Eval("Tengoi") %>'></asp:Label><br />
                            <asp:Label ID="Label2" CssClass="font" runat="server" Text='<%# Eval("MoTa") %>'></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="Label4" CssClass="font" runat="server" Text="Đơn giá: "></asp:Label>
                            <asp:Label ID="Label3" CssClass="font" runat="server" Text='<%#:string.Format("{0:N0}", Eval("DonGia "))+" VND" %>'></asp:Label>
                            <br />
                            <br />
                            <br />

                            <br />
                            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="kkkk" NavigateUrl='<%# "~/GioHang.aspx?MaChim="+Eval("MaChim") %>'>Đặt mua</asp:HyperLink>

                        </div>
                        <div class="col-lg-1"></div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <div>

        <%-- Sản phẩm liên quan--%>
        <div style="text-align: center">
            <h2>Các sản phẩm liên quan</h2>
        </div>
        <div class="popup" style="margin-top: 20px; margin-left: 0px; width: 500px;">

            <div class="containerr" style="height: 432px;">

                <div class="mat">

                    <asp:DataList ID="DataList" runat="server" Width="100%" Height="100%" GridLines="Vertical" RepeatColumns="3" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black">
                        <AlternatingItemStyle BackColor="White" />
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <ItemStyle BackColor="#F7F7DE" />
                        <ItemTemplate>
                            <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3 card">
                                <div class="wrapper">
                                    <div class="item">

                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/image/"+Eval("HinhMinhHoa") %>' />

                                        <span class="information">
                                            <strong>
                                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("Tengoi") %>'></asp:Label></strong>
                                            <asp:Label ID="Label1" runat="server" Text='<%#:string.Format("{0:N0}", Eval("DonGia "))+" VND" %>' />

                                        </span>
                                    </div>
                                </div>
                                <div class="card-body">
                                </div>
                            </div>

                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />

                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/ChiTiet.aspx?MaChim="+Eval("MaChim") %>' Font-Bold="True" Font-Italic="False" ForeColor="#0066CC" BorderColor="#CC3399" BorderStyle="None">Xem thêm</asp:HyperLink>
                            <br />
                            <br />

                            <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" ForeColor="Red" BorderColor="#CC3399" BorderStyle="Solid" PostBackUrl="~/Giohang.aspx">Đặt hàng</asp:LinkButton>
                            <br />
                            <br />

                        </ItemTemplate>
                        <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    </asp:DataList>
                </div>
            </div>
        </div>

        <%--Danhgia--%>
        <div class="danhgia ">
            <h2>
                <asp:LinkButton ID="LinkButton1" runat="server">Đánh giá</asp:LinkButton></h2>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Số sao"></asp:Label>
            <asp:TextBox ID="txtdanhgia" runat="server" Height="37px">0</asp:TextBox>
            <asp:Button ID="Button3" runat="server" Text="Gửi" OnClick="Button3_Click" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                ControlToValidate="txtdanhgia" ValidationExpression="([0-9])*" ErrorMessage="Đánh giá là kiểu số từ 1-5"
                ForeColor="Red">(*)</asp:RegularExpressionValidator>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <br />
            <asp:Repeater ID="Repeater3" runat="server">
                <ItemTemplate>
                    <asp:Image ID="Image2" runat="server" ImageUrl='<%# "~/image/"+Eval("Loaisao") %>' />
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <%--Bình luận--%>
        <div class="binhluan" style="margin-left: 122px;">
            <h2>
                <asp:LinkButton ID="binhluan" runat="server">Bình Luận</asp:LinkButton></h2>
        </div>
        <div class="nhap">
            <div class="sss" style="text-align: center; line-height: 50%; height: 42px;">
                <br />
            </div>
            <asp:Label ID="Label5" runat="server" Text="Nội dung"></asp:Label>
            <asp:TextBox ID="txtnoidung" runat="server" Width="871px" Height="37px"></asp:TextBox>
           

            <asp:Button ID="Button1" runat="server" Text="Gửi" OnClick="Button1_Click1" />
        </div>
        <div class="xuat" style="margin-left: 10%;">
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <asp:Label ID="hoten" CssClass="nn" runat="server" Text="Tên: "></asp:Label><asp:Label ID="TEN" CssClass="   kk " runat="server" Text='<%# Eval("TenDN") %>'></asp:Label><asp:Label ID="ngay" CssClass="ngay" runat="server" Text='<%# Eval("NgayDang") %>'></asp:Label>
                    <br />
                    <asp:Label ID="onoidung" CssClass="nn" runat="server" Text="Nội dung: "></asp:Label><asp:Label ID="NOIDUNG" CssClass="   kk " runat="server" Text='<%# Eval("NoiDungbinhluan") %>'></asp:Label>
                    <br />

                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <asp:Label ID="lbThongBaoLoi" runat="server" Text=""></asp:Label>


</asp:Content>

