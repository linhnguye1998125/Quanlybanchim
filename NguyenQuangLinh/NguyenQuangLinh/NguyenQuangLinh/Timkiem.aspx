<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenQuangLinh.master" AutoEventWireup="true" CodeFile="Timkiem.aspx.cs" Inherits="Timkiem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <link href="web.css" rel="stylesheet" />
      <asp:Label ID="lbtim" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="lbthongbao" runat="server" Text="Label"></asp:Label>
     <div class="popup" style="margin-top:20px; margin-left: 0px; width: 500px; ">
       
           <div class="containerr" style="">

            <div class="mat">

                <asp:DataList ID="DataList" runat="server" Width="100%" Height="100%" GridLines="Vertical" RepeatColumns="3" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4"  ForeColor="Black">
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
                                        <asp:Label ID="Label1" runat="server" Text='<%#:string.Format("{0:N0}", Eval("DonGia"))+" VND" %>' />

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
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                  <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/ChiTiet.aspx?MaChim="+Eval("MaChim") %>' Font-Bold="True" Font-Italic="False" ForeColor="#0066CC" BorderColor="#CC3399" BorderStyle="None">Xem thêm</asp:HyperLink>
                        <br />
                         <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" ForeColor="Red" BorderColor="#CC3399" BorderStyle="Solid" PostBackUrl="~/Giohang.aspx">Đặt hàng</asp:LinkButton>
                        <br />
                        <br />

                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                </asp:DataList>
           
            </div>
        </div>
    </div>
</asp:Content>

