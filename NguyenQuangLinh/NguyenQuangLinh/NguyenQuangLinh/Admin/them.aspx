<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="them.aspx.cs" Inherits="Admin_them" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

    <style type="text/css">
        .sas {
            margin-left: 17%;
        }

        td, th {
            padding: 0;
            max-width: 868px;
        }
        .sau{
            width:82%;
        }
    </style>
    <div class="sas">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <h2>Tên gọi</h2>
                </td>
                <td class="sau">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <h2>Đơn giá</h2>
                </td>
                <td class="sau">
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <h2>Mô tả</h2>
                </td>
                <td class="sau">


                    <CKEditor:CKEditorControl ID="CKEditorControl1" BasePath="~/CK/ckeditor" runat="server" Width="85%"></CKEditor:CKEditorControl>


                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <h2>Khu vực</h2>
                </td>
                <td class="sau">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <h2>Hình minh hoạ</h2>
                </td>
                <td class="sau">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>


            <tr>
                <td class="auto-style3">
                    <h2>Số Lượng</h2>
                </td>
                <td class="sau">
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td class="auto-style3">
                    <h2>&nbsp;</h2>
                </td>
                <td class="auto-style2">
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="margin-right: 0px" Text="Lưu" Width="87px" />
                    <br />
                    <br />
                    <asp:Label ID="lbThongBaoLoi" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

