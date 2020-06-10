<%@ Page Title="" Language="C#" MasterPageFile="~/NguyenQuangLinh.master" AutoEventWireup="true" CodeFile="Thanhtoan.aspx.cs" Inherits="Thanhtoan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Srisakdi" rel="stylesheet">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Old+Standard+TT" rel="stylesheet">


    <style type="text/css">
        @import url('https://fonts.googleapis.com/css?family=Srisakdi');
        @import url('https://fonts.googleapis.com/css?family=Old+Standard+TT');

        .canhan {
            margin-left: 16%;
            width: 71%;
            height: 145px;
            font-size: 22px;
        }

        .h1, h1 {
            font-size: 36px;
            text-align: center;
            margin-left: 15%;
        }

        .giaohang {
            font-family: 'Old Standard TT', serif;
             font-weight: bold;
                 font-size: 20px;
        }

        .tongcanhan {
            text-align: -webkit-center;
            margin-left: 13px;
            font-family: cursive;
        }

        .gh {
            margin-left: 3%;
            width: 117%;
            height: 145px;
            font-size: 18px;
            text-align: center;
        }

        .tonggiohang {
            text-align: center;
            padding: 0px;
        }

        .text-center {
            text-align: center;
            margin-left: 13%;
            margin-top: 28px;
            font-size: 20px;
            margin-bottom: 0px;
            font-family: 'Srisakdi', cursive;
            font-weight: bold;
        }

        .abc {
            margin-top: 55px;
        }



        td.ten1 {
            width: 173px;
        }

        .h1 {
            margin-left: -48%;
            font-family: 'Srisakdi', cursive;
            font-weight: bold;
        }

        h1 {
            font-family: 'Srisakdi', cursive;
            font-weight: bold;
        }

        .btn {
            margin-left: 18%;
            margin-top: 6%;
                background-color: chocolate;
        }

        .tonggiaohang {
            font-size: 15px;
        }
        .xxxx {
    height: 946px;
}
    </style>
    <div class="xxxx">
    <div class="abc ">
        <div class="tonggiohang  col-lg-5">
            <h1>
                <p>Thông tin giỏ hàng</p>
            </h1>
            <asp:GridView ID="gvGioHang" runat="server" AutoGenerateColumns="False" CssClass="gh" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <Columns>
                    <asp:BoundField DataField="MaChim" HeaderText="Mã chim" />
                    <asp:BoundField DataField="Tengoi" HeaderText="Tên goi" />
                    <asp:BoundField DataField="DonGia" HeaderText="Đơn giá" DataFormatString="{0:0,0 } vnđ" />
                    <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" />
                    <asp:BoundField DataField="ThanhTien" HeaderText="Thành tiền" DataFormatString="{0:0,0 } vnđ" />
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
            <p class="text-center">
                Tổng tiền:
            <asp:Label ID="lbTongTien" runat="server" Text=""></asp:Label>
                vnđ
            </p>
        </div>
        <div class="hai col-lg-7">
            <div class="tongcanhan">
                <h1>
                    <p>Thông tin Khách hàng</p>
                </h1>
                <table style="" class="canhan">
                    <tr>
                        <td>Họ tên:
                    <asp:Label ID="lbHoTen" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Địa chỉ:
                    <asp:Label ID="lbDiaChi" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Điện thoại:
                    <asp:Label ID="lbDienThoai" runat="server"></asp:Label></td>
                    </tr>
                    <tr>
                        <td>Email:
                    <asp:Label ID="lbEmail" runat="server"></asp:Label></td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    <div class="col-lg-12">
        <div class="col-lg-3"></div>
        <div class="tonggiaohang col-lg-7">
            <h1 class="h1">
                <p>Thông tin giao hàng</p>
            </h1>
            <table style="width: 80%;" class="giaohang">
                <tr>
                    <td class="ten1">Ngày giao:</td>
                    <td>
                        <asp:Calendar ID="calNgayGiao" runat="server" Height="16px" Width="318px" BackColor="White" BorderColor="#009933" ForeColor="Black"></asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="ten1">Người nhận:</td>
                    <td>
                        <asp:TextBox ID="txtNguoiNhan" runat="server"></asp:TextBox>


                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNguoiNhan" ErrorMessage="Người nhận phải khác rỗng">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="ten1">Địa chỉ:</td>
                    <td>
                        <asp:TextBox ID="txtDiaChi" runat="server"></asp:TextBox>


                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtDiaChi" ErrorMessage="Địa chỉ phải khác rỗng">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="ten1">Điện thoại:</td>
                    <td>
                        <asp:TextBox ID="txtDienThoai" runat="server"></asp:TextBox>


                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDienThoai" ErrorMessage="Số phải khác rỗng">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="ten1">Hình thức thanh toán:</td>
                    <td>
                        <asp:RadioButtonList ID="rblHinhThucThanhToan" runat="server">
                            <asp:ListItem Value="0">Thanh toán trước khi giao hàng</asp:ListItem>
                            <asp:ListItem Value="1">Thanh toán sau khi giao hàng</asp:ListItem>
                        </asp:RadioButtonList>


                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rblHinhThucThanhToan" ErrorMessage="phải khác rỗng">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="ten1">Hình thức giao hàng:</td>
                    <td>
                        <asp:RadioButtonList ID="rblhinhThucGiaoHang" runat="server">
                            <asp:ListItem Value="0">Giao trực tiếp</asp:ListItem>
                            <asp:ListItem Value="1">Ngân lượng</asp:ListItem>
                        </asp:RadioButtonList>


                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="rblhinhThucGiaoHang" ErrorMessage="phải khác rỗng">(*)</asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            <div class="nutt">
                <asp:Button ID="btDongY" runat="server" Text="Đồng ý" OnClick="btDongY_Click" CssClass="btn button-style text-light mx-2" /><br />
                <asp:Label ID="lbThongBaoLoi" runat="server" CssClass="text-center" Text=""></asp:Label>
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </div>
        </div>
        <div class="col-lg-2"></div>
    </div>
    </div>
</asp:Content>

