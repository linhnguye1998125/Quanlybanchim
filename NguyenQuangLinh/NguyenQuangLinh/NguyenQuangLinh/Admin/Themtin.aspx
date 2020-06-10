<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Themtin.aspx.cs" Inherits="Admin_Themtin" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                <h2>Tiêu đề</h2>
            </td>
            <td class="sau">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="auto-style3">
                <h2>Nội dung</h2>
            </td>
            <td class="sau">
                <CKEditor:CKEditorControl ID="CKEditorControl1" BasePath="~/CK/ckeditor" runat="server" Width="85%"></CKEditor:CKEditorControl>
            </td>
        </tr>

    </table>
    <div class="nut" style="text-align:center;">
    <asp:Button ID="Button1" runat="server" Text="Lưu" OnClick="Button1_Click" />
    <asp:Label ID="lbThongBaoLoi" runat="server" Text="Label"></asp:Label></div>
</asp:Content>

