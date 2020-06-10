<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenQuangLinh.master" AutoEventWireup="true" CodeFile="TinTuc.aspx.cs" Inherits="TinTuc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style type="text/css">
        .sssw {
            text-align: -webkit-center;
            font-family: cursive;
            font-size: 20px;
        }
    </style>

    <%--   <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TieuDe") %>'></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("NoiDung") %>'></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server" Text='<%# Eval("NgayDang") %>'></asp:Label>
            <br />
                <asp:Label ID="Label4" runat="server" Text='<%# Eval("LuotXem") %>'></asp:Label>
        </ItemTemplate>
    </asp:Repeater>--%>
    <div class="sssw">
        <asp:DataList ID="DataList1" RepeatColumns="2" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" GridLines="Both" ForeColor="Black">
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="White" />
            <ItemTemplate>
                <div class="">
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("TieuDe") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("NoiDung") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("NgayDang") %>'></asp:Label>
                    <br />
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("LuotXem") %>'></asp:Label>
                </div>
            </ItemTemplate>

            <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />

        </asp:DataList>
    </div>

</asp:Content>



