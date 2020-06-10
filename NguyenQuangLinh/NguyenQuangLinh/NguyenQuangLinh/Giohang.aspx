<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenQuangLinh.master" AutoEventWireup="true" CodeFile="Giohang.aspx.cs" Inherits="Giohang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
        <link href="https://fonts.googleapis.com/css?family=Sedgwick+Ave+Display" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Noticia+Text" rel="stylesheet">
    <style type="text/css">
            @import url('https://fonts.googleapis.com/css?family=Sedgwick+Ave+Display');
            @import url('https://fonts.googleapis.com/css?family=Noticia+Text');
        .mx-auto {
            margin-left: 16%;
            width: 71%;
            height: 145px;
            font-size:18px;
            font-family: 'Noticia Text', serif;
        }
        .font{
            font-family: 'Sedgwick Ave Display', cursive;
        }
        .nut{
             color: darkred;
             font-family: 'Noticia Text', serif;
            
            border-radius:3px;
            background-color:#50ff17;
        }
        .thanhtien{
             font-family: 'Noticia Text', serif;
              font-size:18px;
        }
    </style>
    <div class="text-center mt-5">
        <p class="text-dark font-weight-bold" style="font-family: 'Sedgwick Ave Display', cursive;    font-size: 50px;">THÔNG TIN GIỎ HÀNG</p>
        <asp:GridView ID="gvGioHang" runat="server" AutoGenerateColumns="False" CssClass="mx-auto" DataKeyNames="MaChim" OnRowCommand="gvGioHang_RowCommand" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
            <Columns>
                <asp:BoundField DataField="MaChim" HeaderText="Mã Chim" />
                <asp:BoundField DataField="Tengoi" HeaderText="Tên Chim" />
                <asp:BoundField DataField="DonGia" HeaderText="Đơn giá" DataFormatString="{0:0,0 } vnđ" />
                <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền" DataFormatString="{0:0,0 } vnđ" />
                <asp:TemplateField HeaderText="Số lượng">
                    <ItemTemplate>
                        <asp:TextBox ID="txtSoLuong" runat="server" Text='<%# Eval("SoLuong") %>'></asp:TextBox>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:ButtonField CommandName="Xoa" Text="Xóa" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FFF1D4" />
            <SortedAscendingHeaderStyle BackColor="#B95C30" />
            <SortedDescendingCellStyle BackColor="#F1E5CE" />
            <SortedDescendingHeaderStyle BackColor="#93451F" />
        </asp:GridView>
        <p class="mt-3">&nbsp;</p>
        <p class="mt-3">
            <span class="font-weight-bold thanhtien">Tổng cộng:</span>
            <asp:Label ID="lbTongThanhTien" CssClass="thanhtien" runat="server" Text="0"></asp:Label>&nbsp;<asp:Label ID="Label1" CssClass="thanhtien" runat="server" Text="vnđ"></asp:Label>
        </p>
        <asp:Button ID="btTiepTucMua" CssClass="btn button-style text-light mx-2  nut" runat="server" Text="Tiếp Tục Mua" OnClick="btTiepTucMua_Click" />
        <asp:Button ID="btXoaGioHang" CssClass="btn button-style text-light mx-2 nut" runat="server" Text="Xóa Giỏ Hàng" OnClick="btXoaGioHang_Click" />
        <asp:Button ID="btCapNhat" CssClass="btn button-style text-light mx-2 nut" runat="server" Text="Cập Nhật" OnClick="btCapNhat_Click" />
        <asp:Button ID="btDatHang" CssClass="btn button-style text-light mx-2 nut" runat="server" Text="Đặt Hàng" OnClick="btDatHang_Click" />
        <br />
        <asp:Label ID="lbThongBaoLoi" runat="server" ForeColor="#FF3300"></asp:Label>
    </div>
</asp:Content>

