<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="QLDonhangAdmin.aspx.cs" Inherits="Admin_QLDonhangAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .mx-auto {
                margin-left: 10%;
        }
        .doanhthu {
    text-align: -webkit-center;
    font-family: fantasy;
    font-size: 27px;
}
      table {

 
    margin-left: 16%;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <div class="sas">
        <div class="">
        <asp:GridView ID="gvDonDatHang" runat="server" CssClass="mx-auto" AutoGenerateColumns="False" DataKeyNames="SoDH" OnRowCommand="gvDonDatHang_RowCommand" OnPageIndexChanging="gvDonDatHang_PageIndexChanging" OnRowCancelingEdit="gvDonDatHang_RowCancelingEdit" OnRowDeleting="gvDonDatHang_RowDeleting" OnRowEditing="gvDonDatHang_RowEditing" OnRowUpdating="gvDonDatHang_RowUpdating" OnSelectedIndexChanged="gvDonDatHang_SelectedIndexChanged" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="80%">
            <Columns>
                <asp:BoundField DataField="SoDH" HeaderText="Số đơn hàng" />
                <asp:BoundField DataField="NgayDH" HeaderText="Ngày đặt hàng" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="NgayGiaoHang" HeaderText="Ngày giao hàng" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:TemplateField HeaderText="Hình thức giao hàng">
                    <ItemTemplate>
                        <asp:Label ID="ThanhToan" runat="server" Text='<%# CheckHTTT(Eval("ThanhToan")) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hình thức thanh toán">
                    <ItemTemplate>
                        <asp:Label ID="Phuongthuc" runat="server" Text='<%# CheckHTGH(Eval("Phuongthuc")) %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="TriGia" HeaderText="Số tiền cần thanh toán" DataFormatString="{0:0,0 } vnđ" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                <asp:ButtonField CommandName="Chitiet" Text="Xem chi tiết" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
            <div class="doanhthu">  Doanh thu:<asp:Label ID="lbtong" runat="server" Text='<%# (Eval("trigia")) %>'></asp:Label></div>
        </div>
        <asp:Label ID="lbThongBao" runat="server" Text=""></asp:Label>

    <br />
        <div class="col-lg-4">
          <asp:GridView ID="gvCTDH" runat="server" AutoGenerateColumns="False" CssClass="mt-5 mx-auto">
            <Columns>
                <asp:BoundField DataField="MaChim" HeaderText="Mã chim" />
                <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" />
                <asp:BoundField DataField="DonGia" HeaderText="Đơn giá" DataFormatString="{0:0,0 } vnđ" />
                <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền" DataFormatString="{0:0,0 } vnđ" />
            </Columns>
        </asp:GridView>
            </div>
        </div>
</asp:Content>

