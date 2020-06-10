USE [QLBanChim]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 12/10/2018 7:50:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMIN](
	[MaAdmin] [int] IDENTITY(1,1) NOT NULL,
	[HoTenAdmin] [nvarchar](50) NULL,
	[DiaChiAdmin] [nvarchar](50) NULL,
	[DienThoaiAdmin] [varchar](10) NULL,
	[TenDNAdmin] [varchar](15) NULL,
	[MatKhauAdmin] [varchar](15) NULL,
	[NgaySinhAdmin] [smalldatetime] NULL,
	[GioiTinhAdmin] [bit] NULL DEFAULT ((1)),
	[EmailAdmin] [varchar](50) NULL,
	[QuyenAdmin] [int] NULL DEFAULT ((1)),
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[BINHLUAN]    Script Date: 12/10/2018 7:50:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BINHLUAN](
	[Mabl] [int] IDENTITY(1,1) NOT NULL,
	[NgayDang] [smalldatetime] NULL,
	[NoiDungbinhluan] [ntext] NULL,
	[MaChim] [int] NULL,
	[TenDN] [varchar](50) NULL,
 CONSTRAINT [PK_ThamDo] PRIMARY KEY CLUSTERED 
(
	[Mabl] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHIM]    Script Date: 12/10/2018 7:50:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CHIM](
	[MaChim] [int] IDENTITY(1,1) NOT NULL,
	[Tengoi] [nvarchar](100) NOT NULL,
	[DonViTinh] [nvarchar](50) NULL DEFAULT ('cu?n'),
	[DonGia] [money] NULL,
	[MoTa] [ntext] NULL,
	[Maloai] [int] NOT NULL,
	[HinhMinhHoa] [varchar](50) NULL,
	[NgayCapNhat] [smalldatetime] NULL,
	[SoLuongBan] [int] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaChim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CTDATHANG]    Script Date: 12/10/2018 7:50:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDATHANG](
	[SoDH] [int] NOT NULL,
	[MaChim] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [money] NULL,
	[ThanhTien]  AS ([SoLuong]*[DonGia]),
 CONSTRAINT [PK_CTDatHang] PRIMARY KEY CLUSTERED 
(
	[SoDH] ASC,
	[MaChim] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DANHGIA]    Script Date: 12/10/2018 7:50:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DANHGIA](
	[Masao] [int] NOT NULL,
	[Loaisao] [ntext] NULL,
	[MaChim] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 12/10/2018 7:50:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[SoDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NULL,
	[NgayDH] [smalldatetime] NULL,
	[TriGia] [money] NULL,
	[DaGiao] [bit] NULL CONSTRAINT [DF__DONDATHAN__DaGia__1A14E395]  DEFAULT ((0)),
	[NgayGiaoHang] [smalldatetime] NULL,
	[TenNguoiNhan] [varchar](50) NULL,
	[DiaChiNhan] [nvarchar](50) NULL,
	[DienThoaiNhan] [varchar](15) NULL,
	[ThanhToan] [bit] NULL CONSTRAINT [DF__DONDATHAN__Thanh__1B0907CE]  DEFAULT ((0)),
	[Phuongthuc] [bit] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[SoDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 12/10/2018 7:50:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTenKH] [nvarchar](50) NULL,
	[DiaChiKH] [nvarchar](50) NULL,
	[DienThoaiKH] [varchar](10) NULL,
	[TenDN] [varchar](15) NULL,
	[MatKhau] [varchar](15) NULL,
	[NgaySinh] [smalldatetime] NULL,
	[GioiTinh] [bit] NULL DEFAULT ((1)),
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOGO]    Script Date: 12/10/2018 7:50:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOGO](
	[Malogo] [int] NULL,
	[Tenlogo] [nvarchar](50) NULL,
	[trangthai] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHANLOAI]    Script Date: 12/10/2018 7:50:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHANLOAI](
	[Maloai] [int] IDENTITY(1,1) NOT NULL,
	[khuvuc] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Phanloai] PRIMARY KEY CLUSTERED 
(
	[Maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TINTUC]    Script Date: 12/10/2018 7:50:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TINTUC](
	[MaTin] [int] IDENTITY(1,1) NOT NULL,
	[NoiDung] [nvarchar](500) NULL,
	[NgayDang] [smalldatetime] NULL,
	[LuotXem] [int] NULL,
	[TieuDe] [nvarchar](200) NULL,
 CONSTRAINT [PK_TINTUC] PRIMARY KEY CLUSTERED 
(
	[MaTin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[ADMIN] ON 

INSERT [dbo].[ADMIN] ([MaAdmin], [HoTenAdmin], [DiaChiAdmin], [DienThoaiAdmin], [TenDNAdmin], [MatKhauAdmin], [NgaySinhAdmin], [GioiTinhAdmin], [EmailAdmin], [QuyenAdmin]) VALUES (1, N'Nguyễn Quang Linh', N'Phú Hòa', N'0372325249', N'nqlinh', N'12345', CAST(N'1988-05-02 00:00:00' AS SmallDateTime), 1, N'linhnqn@gmail.com', 1)
INSERT [dbo].[ADMIN] ([MaAdmin], [HoTenAdmin], [DiaChiAdmin], [DienThoaiAdmin], [TenDNAdmin], [MatKhauAdmin], [NgaySinhAdmin], [GioiTinhAdmin], [EmailAdmin], [QuyenAdmin]) VALUES (2, N'Nguyễn Văn a ', N'Phú Hòa', N'0152225565', N'nguyenvana', N'12345', CAST(N'1955-07-08 00:00:00' AS SmallDateTime), 1, N'abc@gmail.com', 2)
SET IDENTITY_INSERT [dbo].[ADMIN] OFF
SET IDENTITY_INSERT [dbo].[BINHLUAN] ON 

INSERT [dbo].[BINHLUAN] ([Mabl], [NgayDang], [NoiDungbinhluan], [MaChim], [TenDN]) VALUES (7, CAST(N'2018-11-28 23:50:00' AS SmallDateTime), N'Chim thật hài hước', 21, N'nguyenva')
INSERT [dbo].[BINHLUAN] ([Mabl], [NgayDang], [NoiDungbinhluan], [MaChim], [TenDN]) VALUES (10, CAST(N'2018-11-29 13:16:00' AS SmallDateTime), N'Chim này rất đẹp, duyêt.', 18, N'nguyenva')
INSERT [dbo].[BINHLUAN] ([Mabl], [NgayDang], [NoiDungbinhluan], [MaChim], [TenDN]) VALUES (12, CAST(N'2018-12-02 00:45:00' AS SmallDateTime), N'Đẹp quá', 24, N'nguyenva')
INSERT [dbo].[BINHLUAN] ([Mabl], [NgayDang], [NoiDungbinhluan], [MaChim], [TenDN]) VALUES (13, CAST(N'2018-12-04 09:55:00' AS SmallDateTime), N'Thấy ', 2, N'nguyencc')
INSERT [dbo].[BINHLUAN] ([Mabl], [NgayDang], [NoiDungbinhluan], [MaChim], [TenDN]) VALUES (14, CAST(N'2018-12-04 09:55:00' AS SmallDateTime), N'Thấy gốm', 2, N'nguyencc')
INSERT [dbo].[BINHLUAN] ([Mabl], [NgayDang], [NoiDungbinhluan], [MaChim], [TenDN]) VALUES (15, CAST(N'2018-12-08 22:41:00' AS SmallDateTime), N'sdsdasd', 21, N'nguyenva')
INSERT [dbo].[BINHLUAN] ([Mabl], [NgayDang], [NoiDungbinhluan], [MaChim], [TenDN]) VALUES (16, CAST(N'2018-12-08 22:45:00' AS SmallDateTime), N'52', 21, N'nguyenva')
INSERT [dbo].[BINHLUAN] ([Mabl], [NgayDang], [NoiDungbinhluan], [MaChim], [TenDN]) VALUES (17, CAST(N'2018-12-08 22:47:00' AS SmallDateTime), N'52', 21, N'nguyenva')
INSERT [dbo].[BINHLUAN] ([Mabl], [NgayDang], [NoiDungbinhluan], [MaChim], [TenDN]) VALUES (18, CAST(N'2018-12-08 22:48:00' AS SmallDateTime), N'52', 21, N'nguyenva')
INSERT [dbo].[BINHLUAN] ([Mabl], [NgayDang], [NoiDungbinhluan], [MaChim], [TenDN]) VALUES (19, CAST(N'2018-12-08 22:52:00' AS SmallDateTime), N'dấgfasg', 21, N'nguyenva')
INSERT [dbo].[BINHLUAN] ([Mabl], [NgayDang], [NoiDungbinhluan], [MaChim], [TenDN]) VALUES (20, CAST(N'2018-12-08 23:18:00' AS SmallDateTime), N'Đẹp', 16, N'nguyenva')
SET IDENTITY_INSERT [dbo].[BINHLUAN] OFF
SET IDENTITY_INSERT [dbo].[CHIM] ON 

INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (1, N'Chim Thiên Nga', N'Con', 260000.0000, N'Thiên nga là một nhóm chim cỡ lớn thuộc họ Vịt, cùng với ngỗng và vịt. Thiên nga và ngỗng có quan hệ gần gũi và cùng được xếp vào phân họ Ngỗng theo nhiều tài liệu sinh học. Với kích thước cơ thể khá lớn, một con chim thiên nga có trung bình 25.000 cái lông trên người. Đặc biệt, thiên nga đực là loài chim duy nhất... có dương vật.', 10, N'1.jpg', CAST(N'2004-07-17 00:00:00' AS SmallDateTime), 12)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (2, N'Chim công', N'Con', 120000.0000, N'Chim công có bộ lông của những con công đực thực sự là một tác phẩm nghệ thuật. Những sợi lông đuôi sắc sặc sỡ được con đực sử dụng khi “tán tỉnh” con cái. Màn múa xòe đuôi cuả chim công đực có lẽ là màn trình diễn tình yêu đẹp nhất trong họ nhà chim.', 10, N'2.jpg', CAST(N'2004-06-05 00:00:00' AS SmallDateTime), 25)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (3, N'Chim Hoàng ', N'Con', 1255000.0000, N'Hoàng liên tước là một loài chim biết hót có kích thước trung bình, sống trong các cánh rừng nhiệt đới ở khu vực lục địa Á - Âu. Chúng có bộ lông màu xám mềm mại, đuôi cánh lông vàng, trắng, phần đầu có lông mào, màu vàng cam và đen.', 11, N'3.jpg', CAST(N'2004-07-12 00:00:00' AS SmallDateTime), 222)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (4, N'Chim Ó Biển ', N'Con', 2502220.0000, N'Chim ó biển non có màu nâu sẫm trong năm đầu tiên, và dần dần có được màu trắng trong các mùa tiếp theo cho đến khi chúng trưởng thành sau năm năm. Chim trưởng thành dài 81–110 cm, trọng lượng 2,2-3,6 kg và có sải cánh dài 165–180 cm. Trước khi đủ lông đủ cánh, những con chim chưa trưởng thành (khoảng 10 tuần tuổi) có thể nặng hơn 4 kg. Bộ lông có màu trắng với lông mũi cánh màu đen. Mỏ màu xanh nhạt. Mắt là màu xanh nhạt, và được bao quanh bởi da trần, đen. Trong quá trình sinh sản, đầu và cổ có màu vàng mịn.', 12, N'4.jpg', CAST(N'2004-07-12 00:00:00' AS SmallDateTime), 21)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (5, N'Chim Quạ Thông ', N'Con', 2000000.0000, N'Chim quạ thông là 1 trong những loài đẹp nhất trong những loại quạ, hình dáng và khuôn mặt chúng hiền lành dễ mến nên được nhiều người chọn nuôi làm cảnh.
Chim Quạ Thông là loài chim sẻ dạng lớn với cơ thể cường tráng, các chân khỏe. Nhiều loài dạng Quạ Thông của vùng ôn đới có bộ lông chủ yếu màu đen hay lam. Tuy nhiên, một số có màu khoang pha màu đen trắng, một số có lông óng ánh màu lam-tía còn nhiều loài nhiệt đới là những loài chim có màu sáng.', 10, N'5.jpg', CAST(N'2018-11-17 18:45:00' AS SmallDateTime), 22)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (6, N'Chim Chích Chòe', N'con', 10000000.0000, N'Chích chòe là tên gọi chung để chỉ một số loài chim kích thước trung bình, ăn sâu bọ (một số loài còn ăn cả các loại quả mọng và các loại quả khác) trong các chi Copsychus sensu lato và Enicurus. Trước đây chúng được phân loại trong họ Hoét (Turdidae), nhưng hiện nay thông thường hay được coi là một phần của họ Đớp ruồi (Muscicapidae). Các loài chim này sinh sống trong các cánh rừng và vườn ở châu Á.', 11, N'6.jpg', CAST(N'2018-11-17 19:02:00' AS SmallDateTime), 25)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (7, N'Chim trĩ vàng ', N'con', 100000000.0000, N'Chim trĩ vàng: Loài trĩ vàng nổi tiếng với bộ lông vàng rực rỡ, kết hợp màu đỏ tươi và xanh xanh lá cây. Phần cổ có màu nâu nhạt. Con cái nhiều màu sắc hơn con đực. Phần bên sườn có đỏ đặc biệt, giữa đuôi cũng những sợi lông màu đen nổi bật. Chúng sống trong các khu rừng rậm rạp ở Trung Quốc, dành phần lớn thời gian trên mặt đất, tìm ăn các quả mọng, hạt và côn trùng.', 12, N'7.jpg', CAST(N'2018-11-17 19:04:00' AS SmallDateTime), 222)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (8, N'Vẹt Đỏ Đuôi Dài ', N'con', 15000000.0000, N'Vẹt đỏ đuôi dài (Scarlet macaw): Vẹt đỏ đuôi dài là một trong những thành viên đẹp nhất và lớn nhất của họ chim vẹt. Chúng sống trong các rừng rậm ở Trung và Nam Mỹ, nổi tiếng với bộ lông đỏ tươi, lưng màu xanh, cánh màu vàng và xanh lục. Chiếc mỏ cong khỏe mạnh, phần trên màu trắng, phần dưới màu đen là một đặc điểm đáng chú ý khác của loài này. Một con vẹt đỏ đuôi dài trưởng thành có chiều dài từ 80-90 cm và nặng đến 1,5 kg. Tuổi thọ từ 40-50 năm. Trong điều kiện sống lý tưởng, chúng có thể tồn tại đến 75 năm.', 12, N'10.jpg', CAST(N'2018-11-17 19:05:00' AS SmallDateTime), 1)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (9, N'Chim Keel Billed Toucan ', N'con', 1600000.0000, N'Chim Keel Billed Toucan: Đây là một trong những loài chim có hình dáng gây kinh ngạc nhất thế giới, sống trong các cánh rừng ở Trung và Nam Mỹ. Chúng có chiếc mỏ cực lớn, có thể dài tới 20 cm và nhiều màu sắc. Mỏ của chúng là sự pha trộn giữa màu xanh lá cây, màu đỏ và màu vàng. Chiếc mỏ ấn tượng này là công cụ để thu hút con cái trong mùa sinh sản và cũng là một vũ khí. Bộ lông trên thân có màu đen, cổ và ngực màu vàng.', 12, N'11.jpg', CAST(N'2018-11-17 19:06:00' AS SmallDateTime), 41)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (10, N'Chim hải âu cổ rụt ', N'con', 50000000.0000, N'Chim hải âu cổ rụt Đại Tây Dương: Đây là một loài chim biển nhỏ, sống chủ yếu ở bờ biển phía Bắc nước Mỹ và Đông Canada, còn được gọi là “vẹt biển” do màu sắc đa dạng. Chúng dành phần lớn cuộc sống trên biển, lặn sâu tới 60 m để săn cá nhỏ. Bộ lông tuyệt đẹp giúp chống thấm nước và giữ ấm cơ thể khi bơi. Chim hải âu cổ rụt Đại Tây Dương sinh sản vào mỗi mùa hè và mùa xuân, tổ được làm bằng lông vũ và cỏ trong hang trên các vách đá.', 12, N'12.jpg', CAST(N'2018-11-17 19:07:00' AS SmallDateTime), 20)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (11, N'Vịt gỗ (vịt Carolina) ', N'con', 2000000.0000, N'Vịt gỗ (vịt Carolina): Gọi là vịt, nhưng đây là một loài chim thuộc họ vịt, sống chủ yếu ở vùng đầm lầy Bắc Mỹ, là loài chim nước có màu sắc nổi bật nhất trên thế giới. Con đực có đầu màu xanh lá cây và màu tím, bụng màu trắng, ngực màu đỏ sẫm chấm trắng. Dọc theo cổ, là những sọc trắng nhỏ hấp dẫn. Đôi cánh màu xanh và đen. Vịt gỗ cái nhiều màu và đẹp như con đực. Chúng có đầu màu nâu xám, bụng màu trắng.', 12, N'13.jpg', CAST(N'2018-11-17 19:07:00' AS SmallDateTime), 100)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (12, N'Hồng Hạc ', N'con', 1255000.0000, N'Hồng hạc là loài chim lội nước sống thành bầy đàn. Chúng thường tụ tập ở các đầm, phá, nơi có nhiều bùn, nước. Có 4 loài hồng hạc ở Châu Mỹ và 2 loài ở Cựu Thế Giới. Màu lông của hồng hạc thay đổi tuỳ theo loài, từ hồng phai cho tới đỏ thẫm hoặc đỏ son. Một điều đặc biệt nữa ở loài này, mà cho đến nay các nhà khoa học vẫn chưa lý giải được đó là chúng thường chỉ đứng trên một chân.', 12, N'14.jpg', CAST(N'2018-11-17 19:08:00' AS SmallDateTime), 44)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (13, N'Chim Sả ngực hoa cà', N'con', 5000000.0000, N'Chim Sả ngực hoa cà là một loài chim thuộc họ Sả rừng. Loài chim này phân bố ở châu Phi hạ Sahara, ưa thích rừng cây gỗ mở và xavan; nó phần lớn không hiện diện ở các khu vực không có cây. Thường được thấy đơn độc hoặc theo cặp, nó đậu dễ thấy tại các ngọn cây, cột hoặc các điểm thuận lợi khác cao từ nơi nó có thể phát hiện côn trùng, thằn lằn, bọ cạp, ốc, những con chim nhỏ và động vật gặm nhấm di chuyển trên mặt đất[2]. Sả ngực hoa cà làm tổ ở các hốc tự nhiên và đẻ mỗi tổ 2-4 quả trứng và được cả chim bố lẫn chim mẹ ấp, bảo vệ tổ một cách hung hăng chống lại các loại chim ăn thịt.', 13, N'17.jpg', CAST(N'2018-11-17 19:09:00' AS SmallDateTime), 8)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (14, N'Chim đầu rìu ', N'con', 1255000.0000, N'Chim đầu rìu là loài phân bố rộng khắp Bắc Phi. Có bảy phân loài đầu rìu, chúng khác nhau chủ yếu ở kích cỡ và màu lông.', 13, N'18.jpg', CAST(N'2018-11-17 19:14:00' AS SmallDateTime), 1)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (15, N'Bói cá ', N'con', 50000000.0000, N'Bói cá là một nhóm các loài chim có kích thước nhỏ và màu sắc rực rỡ thuộc Bộ Sả. Chúng phân bố rộng khắp châu Phi. Nhóm này có khoảng 90 loài chim mang đặc điểm chung như đầu to, màu sắc đa dạng, mỏ nhọn và dài, chân ngắn, lùn. Phần lớn các loài có bộ lông sáng, có sự khác biệt nhỏ giữa hai giới (dị hình lưỡng tính). Hầu hết các loài sống trong môi trường nhiệt đới, và số ít được tìm thấy trong các khu rừng. Thức ăn của chúng gồm cá, thường được bắt bằng cách lao đầu xuống mặt nước.', 13, N'19.jpg', CAST(N'2018-11-17 19:17:00' AS SmallDateTime), 25)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (16, N'Kền kền râu ', N'con', 6222000.0000, N'Kền kền râu là một loài chim săn mồi duy nhất trong chi Gypaetus, họ Accipitridae. Kền kền râu có kích thước rất lớn, với chiều dài trên 1,2 m và sải cánh lên đến gần 3 m. Khối lượng từ 4,5 - 8,0 kg. Nó ăn chủ yếu xác chết và thi thoảng là cả con mồi sống, sinh sản trên những vách núi cao ở Kavkaz Bắc Phi, phía nam châu Phi. Chúng đẻ một đến hai quả trứng vào giữa mùa thu và nở vào mùa xuân. Chúng là loài định cư.', 13, N'20.jpg', CAST(N'2018-11-17 19:18:00' AS SmallDateTime), 6)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (17, N'Đại bàng rừng châu Phi ', N'con', 1200000.0000, N'Đại bàng rừng châu Phi là một loài chim săn mồi lớn trong họ Accipitridae, sống ở vùng hạ Sahara châu Phi. Môi trường sống ưa thích của nó là trong rừng và các khu vực cây cối ven sông. Nó là thành viên còn tồn tại duy nhất của chi Stephanoaetus. Loài thứ hai, đại bàng rừng Madagaxca (Stephanoaetus mahery), đã tuyệt chủng sau khi con người định cư trên đảo Madagascar. Do tương đồng sinh thái, đại bàng rừng châu Phi có đặc tính sinh học tương đối giống với đại bàng Harpy (Harpia harpyja) ở rừng rậm Nam Mỹ', 13, N'phi6a.jpg', CAST(N'2018-11-17 19:20:00' AS SmallDateTime), 10)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (18, N'Hồng tước tiên ', N'con', 20000000.0000, N'Đại bàng rừng châu Phi là một loài chim săn mồi lớn trong họ Accipitridae, sống ở vùng hạ Sahara châu Phi. Môi trường sống ưa thích của nó là trong rừng và các khu vực cây cối ven sông. Nó là thành viên còn tồn tại duy nhất của chi Stephanoaetus. Loài thứ hai, đại bàng rừng Madagaxca (Stephanoaetus mahery), đã tuyệt chủng sau khi con người định cư trên đảo Madagascar. Do tương đồng sinh thái, đại bàng rừng châu Phi có đặc tính sinh học tương đối giống với đại bàng Harpy (Harpia harpyja) ở rừng rậm Nam Mỹ.', 14, N'uc1a.jpg', CAST(N'2018-11-17 19:21:00' AS SmallDateTime), 20)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (19, N'Hút mật bụng vàng', N'con', 900000000.0000, N'Hút mật bụng vàng là một nhóm rất nhỏ của Bộ Sẻ Cựu Thế giới với thức ăn chủ yếu là mật ong, mặc dù họ chúng cũng ăn côn trùng, đặc biệt là khi nuôi con non. Chú nhanh chóng và trực tiếp bằng đôi cánh ngắn. Hầu hết các loài có thể lấy mật hoa bằng cách bay lơ lửng, nhưng thường là đậu để ăn trong phần lớn thời gian.', 14, N'uc2a.jpg', CAST(N'2018-11-17 19:22:00' AS SmallDateTime), 30)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (21, N'Chim cánh cụt ', N'con', 42000000.0000, N'Con chim bồ câu cổ ,( Ducula mullerii ), là một loài chim bồ câu lớn có nguồn gốc ở New Guinea và các hòn đảo lân cận. Loài này có chiều dài cơ thể trung bình 40 cm và nặng khoảng 600 g. Phần trên có màu xám và phần dưới màu xám-hồng, và được phân biệt bằng một cổ áo màu đen hoàn toàn chẩn đoán và nổi bật so với cổ trắng khác.', 14, N'uc4a.jpg', CAST(N'2018-11-17 19:23:00' AS SmallDateTime), 25)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (22, N'Chim thiên đường ', N'con', 9000000.0000, N'Chim thiên đường còn gọi là chim thiên hà, chim seo cờ, là các loài chim thuộc họ Paradisaeidae, sống ở một số khu vực thuộc Australasia. Các thành viên của họ Thiên đường được biết đến nhiều nhất có lẽ là từ những bộ lông sặc sỡ, đẹp của các con trống thuộc phần lớn các loài, được chúng sử dụng để hấp dẫn con mái (con mái có bộ lông bình thường) bằng những điệu nhảy và xòe cánh, múa đuôi. Con trống có đuôi dài và đẹp. Một số còn có chỏm lông trên đầu hay lông cánh dài sặc sỡ. Các loài chim thiên đường là một trong những loại chim biết hót cổ xưa nhất.', 14, N'uc6a.jpg', CAST(N'2018-11-17 19:24:00' AS SmallDateTime), 500)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (23, N'Chào mào ', N'con', 18000000.0000, N'Chào mào (danh pháp hai phần: Pycnonotus jocosus) là một loài chim thuộc Họ Chào mào. Loài này phân bố ở châu Á. Chúng chính là loài được du nhập ở các nước nhiệt đới châu Á và do đó, chúng có những khu vực dành riêng do chúng tạo lập. Chào mào ăn trái cây và côn trùng nhỏ và dễ thấy trên các nhánh cây vì tiếng hót có từ 1 - 4 âm tiết. Chào mào có một cái mào dễ nhận biết, hai má trắng và phía trên "mảng" trắng là màu đỏ do đó khiến chúng có tên tiếng Anh là râu đỏ (Red-whiskered). Tại Việt nam, tùy theo vùng miền mà chúng có tên gọi khác nhau:Chóp mào, Hoành hoạch mồng, chóp mũ đỏ, đít đỏ... nhưng tên thông dụng nhất vẫn là chào mào.', 11, N'chaomao.jpg', CAST(N'2018-11-17 19:34:00' AS SmallDateTime), 302)
INSERT [dbo].[CHIM] ([MaChim], [Tengoi], [DonViTinh], [DonGia], [MoTa], [Maloai], [HinhMinhHoa], [NgayCapNhat], [SoLuongBan]) VALUES (24, N'Chim sẻ châu Âu ', N'con', 75000000.0000, N'Bộ Sẻ (danh pháp khoa học: Passeriformes) là một bộ chim đa dạng về số lượng loài. Trên một nửa các loài chim là dạng sẻ. Đôi khi còn biết đến như là các loài chim đậu cành hay ít chính xác hơn là chim biết hót, bộ Sẻ tạo thành một trong những bộ đa dạng nhất của động vật có xương sống trên mặt đất: với khoảng 5.400 loài, nó khoảng 2 lần đa dạng hơn so với bộ động vật có vú đa dạng nhất là bộ Gặm nhấm (Rodentia).', 10, N'se.jpg', CAST(N'2018-11-17 19:35:00' AS SmallDateTime), 105)
SET IDENTITY_INSERT [dbo].[CHIM] OFF
INSERT [dbo].[CTDATHANG] ([SoDH], [MaChim], [SoLuong], [DonGia]) VALUES (1, 3, 2, 75000.0000)
INSERT [dbo].[CTDATHANG] ([SoDH], [MaChim], [SoLuong], [DonGia]) VALUES (2, 19, 1, 800000.0000)
INSERT [dbo].[CTDATHANG] ([SoDH], [MaChim], [SoLuong], [DonGia]) VALUES (3, 18, 1, 680000.0000)
INSERT [dbo].[CTDATHANG] ([SoDH], [MaChim], [SoLuong], [DonGia]) VALUES (4, 15, 1, 768000.0000)
INSERT [dbo].[CTDATHANG] ([SoDH], [MaChim], [SoLuong], [DonGia]) VALUES (45, 19, 2, 900000000.0000)
INSERT [dbo].[CTDATHANG] ([SoDH], [MaChim], [SoLuong], [DonGia]) VALUES (46, 17, 1, 1200000.0000)
INSERT [dbo].[CTDATHANG] ([SoDH], [MaChim], [SoLuong], [DonGia]) VALUES (47, 18, 1, 20000000.0000)
INSERT [dbo].[CTDATHANG] ([SoDH], [MaChim], [SoLuong], [DonGia]) VALUES (48, 15, 1, 50000000.0000)
INSERT [dbo].[CTDATHANG] ([SoDH], [MaChim], [SoLuong], [DonGia]) VALUES (48, 16, 1, 6222000.0000)
INSERT [dbo].[CTDATHANG] ([SoDH], [MaChim], [SoLuong], [DonGia]) VALUES (48, 22, 1, 9000000.0000)
INSERT [dbo].[CTDATHANG] ([SoDH], [MaChim], [SoLuong], [DonGia]) VALUES (49, 21, 1, 42000000.0000)
INSERT [dbo].[CTDATHANG] ([SoDH], [MaChim], [SoLuong], [DonGia]) VALUES (50, 21, 1, 42000000.0000)
INSERT [dbo].[DANHGIA] ([Masao], [Loaisao], [MaChim]) VALUES (0, N'trang.png', NULL)
INSERT [dbo].[DANHGIA] ([Masao], [Loaisao], [MaChim]) VALUES (1, N'1sao.png', NULL)
INSERT [dbo].[DANHGIA] ([Masao], [Loaisao], [MaChim]) VALUES (2, N'2sao.png', NULL)
INSERT [dbo].[DANHGIA] ([Masao], [Loaisao], [MaChim]) VALUES (3, N'3sao.png', NULL)
INSERT [dbo].[DANHGIA] ([Masao], [Loaisao], [MaChim]) VALUES (4, N'4sao.png', NULL)
INSERT [dbo].[DANHGIA] ([Masao], [Loaisao], [MaChim]) VALUES (5, N'5sao.png', NULL)
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON 

INSERT [dbo].[DONDATHANG] ([SoDH], [MaKH], [NgayDH], [TriGia], [DaGiao], [NgayGiaoHang], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [ThanhToan], [Phuongthuc]) VALUES (1, 1, CAST(N'2010-04-06 00:00:00' AS SmallDateTime), 750000.0000, 0, CAST(N'2010-04-06 00:00:00' AS SmallDateTime), NULL, NULL, NULL, 1, 1)
INSERT [dbo].[DONDATHANG] ([SoDH], [MaKH], [NgayDH], [TriGia], [DaGiao], [NgayGiaoHang], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [ThanhToan], [Phuongthuc]) VALUES (2, 1, CAST(N'2010-06-28 00:00:00' AS SmallDateTime), 800000.0000, 0, CAST(N'2010-06-28 00:00:00' AS SmallDateTime), NULL, NULL, NULL, 0, 1)
INSERT [dbo].[DONDATHANG] ([SoDH], [MaKH], [NgayDH], [TriGia], [DaGiao], [NgayGiaoHang], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [ThanhToan], [Phuongthuc]) VALUES (3, 1, CAST(N'2018-10-07 00:00:00' AS SmallDateTime), 680000.0000, 0, CAST(N'2018-10-16 00:00:00' AS SmallDateTime), N'', N'', N'', 1, 0)
INSERT [dbo].[DONDATHANG] ([SoDH], [MaKH], [NgayDH], [TriGia], [DaGiao], [NgayGiaoHang], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [ThanhToan], [Phuongthuc]) VALUES (4, 2, CAST(N'2018-10-07 00:00:00' AS SmallDateTime), 768000.0000, 0, CAST(N'2018-10-31 00:00:00' AS SmallDateTime), N'Hà Gia B?o', N'Bình Định', N'012523222', 1, 0)
INSERT [dbo].[DONDATHANG] ([SoDH], [MaKH], [NgayDH], [TriGia], [DaGiao], [NgayGiaoHang], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [ThanhToan], [Phuongthuc]) VALUES (45, 1, CAST(N'2018-12-06 11:21:00' AS SmallDateTime), 1800000000.0000, 0, CAST(N'2018-12-06 00:00:00' AS SmallDateTime), N'Nguyen Van A', N'Nguyen Van A', N'012566588', 1, 0)
INSERT [dbo].[DONDATHANG] ([SoDH], [MaKH], [NgayDH], [TriGia], [DaGiao], [NgayGiaoHang], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [ThanhToan], [Phuongthuc]) VALUES (46, 1, CAST(N'2018-12-06 11:22:00' AS SmallDateTime), 1200000.0000, 0, CAST(N'2018-12-06 00:00:00' AS SmallDateTime), N'Nguyen Van A', N'Nguyen Van A', N'012566588', 1, 1)
INSERT [dbo].[DONDATHANG] ([SoDH], [MaKH], [NgayDH], [TriGia], [DaGiao], [NgayGiaoHang], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [ThanhToan], [Phuongthuc]) VALUES (47, 1, CAST(N'2018-12-06 11:22:00' AS SmallDateTime), 20000000.0000, 0, CAST(N'2018-12-06 00:00:00' AS SmallDateTime), N'Nguyen Van A', N'Nguyen Van A', N'012566588', 0, 1)
INSERT [dbo].[DONDATHANG] ([SoDH], [MaKH], [NgayDH], [TriGia], [DaGiao], [NgayGiaoHang], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [ThanhToan], [Phuongthuc]) VALUES (48, 1, CAST(N'2018-12-06 11:26:00' AS SmallDateTime), 65222000.0000, 0, CAST(N'2018-12-06 00:00:00' AS SmallDateTime), N'Nguyen Van A', N'Nguyen Van A', N'012566588', 1, 0)
INSERT [dbo].[DONDATHANG] ([SoDH], [MaKH], [NgayDH], [TriGia], [DaGiao], [NgayGiaoHang], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [ThanhToan], [Phuongthuc]) VALUES (49, 1, CAST(N'2018-12-10 10:37:00' AS SmallDateTime), 42000000.0000, 0, CAST(N'2018-12-10 00:00:00' AS SmallDateTime), N'Nguyen Van A', N'Nguyen Van A', N'012566588', 1, 0)
INSERT [dbo].[DONDATHANG] ([SoDH], [MaKH], [NgayDH], [TriGia], [DaGiao], [NgayGiaoHang], [TenNguoiNhan], [DiaChiNhan], [DienThoaiNhan], [ThanhToan], [Phuongthuc]) VALUES (50, 1, CAST(N'2018-12-10 13:05:00' AS SmallDateTime), 42000000.0000, 0, CAST(N'2018-12-10 00:00:00' AS SmallDateTime), N'Nguyen Van A', N'Nguyen Van A', N'012566588', 0, 1)
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (1, N'Nguyen Van A', N'Bình Định', N'012566588', N'nguyenva', N'12345', CAST(N'1962-07-08 00:00:00' AS SmallDateTime), 1, N'nguyenvana@tdmu.edu.vn')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (2, N'Nguyễn văn B', N'Hà Nội', N'016852256', N'nguyenvanb', N'123456', CAST(N'1974-07-15 00:00:00' AS SmallDateTime), 1, N'nguyenvanb@hcmuns.edu.vn')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (3, N'Mai Thành Phương', N'Phú yên', N'Chua có', N'phuongmt', N'123456', CAST(N'1965-07-24 00:00:00' AS SmallDateTime), 1, N'phuongmt@hcmuns.edu.vn')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (4, N'Ngô Ngọc Ngân', N'Khu chung cư', N'0918544699', N'nnngan', N'ngan', CAST(N'1946-08-15 00:00:00' AS SmallDateTime), 1, N'nnngan@hcmuns.edu.vn')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (5, N'Đỗ Quỳnh Hương', N'Cống Quỳnh', N'0908123456', N'dqhuong', N'huong', CAST(N'1982-03-24 00:00:00' AS SmallDateTime), 0, N'dqhuong@hcmuns.edu.vn')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (6, N'Trần Thị Mỹ Truyền', N'Cần Thơ', N'052636363', N'truyentran ', N'truyen   ', CAST(N'1962-08-05 00:00:00' AS SmallDateTime), 0, N'truyenmy@yahoo.com')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (7, N'Hà gia Bảo', N'63 hầm cầu', N'0168582', N'baobao', N'12345', CAST(N'1998-01-04 00:00:00' AS SmallDateTime), 1, N'baobaoao@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (8, N'Nguyễn Quang Linh', N'43/6 Phú Hoà TDM', N'0167232524', N'nguyenql', N'12345', CAST(N'1998-03-27 00:00:00' AS SmallDateTime), 0, N'linhnguyen1998125@gmail.com')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDN], [MatKhau], [NgaySinh], [GioiTinh], [Email]) VALUES (9, N'Nguyen Chí Cường', N'64 hầm cầu', N'0123625', N'nguyencc', N'12345', CAST(N'1998-03-19 00:00:00' AS SmallDateTime), 0, N'cuongngao@hmail.com')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
INSERT [dbo].[LOGO] ([Malogo], [Tenlogo], [trangthai]) VALUES (1, N'logo.png', 0)
INSERT [dbo].[LOGO] ([Malogo], [Tenlogo], [trangthai]) VALUES (2, N'aaaa.png', 1)
SET IDENTITY_INSERT [dbo].[PHANLOAI] ON 

INSERT [dbo].[PHANLOAI] ([Maloai], [khuvuc]) VALUES (10, N'Châu Á')
INSERT [dbo].[PHANLOAI] ([Maloai], [khuvuc]) VALUES (11, N'Châu Âu ')
INSERT [dbo].[PHANLOAI] ([Maloai], [khuvuc]) VALUES (12, N'Châu Phi')
INSERT [dbo].[PHANLOAI] ([Maloai], [khuvuc]) VALUES (13, N'Châu Mĩ')
INSERT [dbo].[PHANLOAI] ([Maloai], [khuvuc]) VALUES (14, N'Châu ÚC')
SET IDENTITY_INSERT [dbo].[PHANLOAI] OFF
SET IDENTITY_INSERT [dbo].[TINTUC] ON 

INSERT [dbo].[TINTUC] ([MaTin], [NoiDung], [NgayDang], [LuotXem], [TieuDe]) VALUES (1, N'Mặt hàng của chúng tôi đang khuyến mãi rất rẻ. Hãy tranh thủ đặt các sản phẩm của chúng tôi', CAST(N'2016-12-02 00:00:00' AS SmallDateTime), 38, N'Khuyến Mãi')
INSERT [dbo].[TINTUC] ([MaTin], [NoiDung], [NgayDang], [LuotXem], [TieuDe]) VALUES (2, N'Chim Chích Choè đang trong thơi gian khuyến mãi giá từ 1 ngàn giảm còn 2 ngàn mại vô mại vô', CAST(N'2015-02-02 00:00:00' AS SmallDateTime), 32, N'Khuyến Mãi')
INSERT [dbo].[TINTUC] ([MaTin], [NoiDung], [NgayDang], [LuotXem], [TieuDe]) VALUES (5, N'<p>C&oacute; rất nhiều h&agrave;ng ho&aacute; được nhập từ c&aacute;c quốc gia lớn như l&agrave; l&agrave;o , campuchia , praxa...</p>', CAST(N'2018-12-07 16:16:00' AS SmallDateTime), 7, N'Giảm giá')
INSERT [dbo].[TINTUC] ([MaTin], [NoiDung], [NgayDang], [LuotXem], [TieuDe]) VALUES (6, N'<p>loai chau &aacute;</p>
', CAST(N'2018-12-10 11:41:00' AS SmallDateTime), 1, N'Đồng giá')
INSERT [dbo].[TINTUC] ([MaTin], [NoiDung], [NgayDang], [LuotXem], [TieuDe]) VALUES (7, N'<p>loai chau &aacute;</p>
', CAST(N'2018-12-10 11:42:00' AS SmallDateTime), 0, N'Đồng giá')
SET IDENTITY_INSERT [dbo].[TINTUC] OFF
ALTER TABLE [dbo].[BINHLUAN]  WITH CHECK ADD  CONSTRAINT [FK_BINHLUAN_CHIM] FOREIGN KEY([MaChim])
REFERENCES [dbo].[CHIM] ([MaChim])
GO
ALTER TABLE [dbo].[BINHLUAN] CHECK CONSTRAINT [FK_BINHLUAN_CHIM]
GO
ALTER TABLE [dbo].[CHIM]  WITH CHECK ADD  CONSTRAINT [FK_Chim_Phanloai] FOREIGN KEY([Maloai])
REFERENCES [dbo].[PHANLOAI] ([Maloai])
GO
ALTER TABLE [dbo].[CHIM] CHECK CONSTRAINT [FK_Chim_Phanloai]
GO
ALTER TABLE [dbo].[CTDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTDatHang_Chim] FOREIGN KEY([MaChim])
REFERENCES [dbo].[CHIM] ([MaChim])
GO
ALTER TABLE [dbo].[CTDATHANG] CHECK CONSTRAINT [FK_CTDatHang_Chim]
GO
ALTER TABLE [dbo].[CTDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTDatHang_DonDatHang] FOREIGN KEY([SoDH])
REFERENCES [dbo].[DONDATHANG] ([SoDH])
GO
ALTER TABLE [dbo].[CTDATHANG] CHECK CONSTRAINT [FK_CTDatHang_DonDatHang]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[CHIM]  WITH CHECK ADD CHECK  (([DonGia]>=(0)))
GO
ALTER TABLE [dbo].[CHIM]  WITH CHECK ADD CHECK  (([SoLuongBan]>(0)))
GO
ALTER TABLE [dbo].[CTDATHANG]  WITH CHECK ADD  CONSTRAINT [CK__CTDATHANG__DonGi__47DBAE45] CHECK  (([DonGia]>=(0)))
GO
ALTER TABLE [dbo].[CTDATHANG] CHECK CONSTRAINT [CK__CTDATHANG__DonGi__47DBAE45]
GO
ALTER TABLE [dbo].[CTDATHANG]  WITH CHECK ADD  CONSTRAINT [CK__CTDATHANG__SoLuo__48CFD27E] CHECK  (([SoLuong]>(0)))
GO
ALTER TABLE [dbo].[CTDATHANG] CHECK CONSTRAINT [CK__CTDATHANG__SoLuo__48CFD27E]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [CK__DONDATHAN__TriGi__49C3F6B7] CHECK  (([TriGia]>(0)))
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [CK__DONDATHAN__TriGi__49C3F6B7]
GO
