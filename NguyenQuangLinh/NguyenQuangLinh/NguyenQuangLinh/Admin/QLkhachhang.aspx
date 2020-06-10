<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="QLkhachhang.aspx.cs" Inherits="Admin_QLkhachhang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <%--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
    <style type="text/css">
        .sss {
    width: 100%;
    overflow: hidden;
        padding: 1%;

}
    </style>
    <div class="sss">
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="MaKH" Width="100%">
          <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="MaKH" HeaderText="Mã khách hàng" />
            <asp:BoundField DataField="HoTenKH" HeaderText="Họ tên" />
            <asp:BoundField DataField="NgaySinh" HeaderText="Ngày sinh" />
             <asp:TemplateField HeaderText="Giới tính">
                    <ItemTemplate>
                        <asp:Label ID="GioiTinh" runat="server" Text='<%# ChecGT(Eval("GioiTinh") )%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
       
            <asp:BoundField DataField="DiaChiKH" HeaderText="Địa chỉ" />
            <asp:BoundField DataField="DienThoaiKH" HeaderText="Số điện thoại" />
            <asp:BoundField DataField="Email" HeaderText="Email" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            <asp:CommandField ShowEditButton="True" ButtonType="Button" />
        </Columns>
          <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
          <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
          <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
          <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#0000A9" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
        </div>
</asp:Content>

