CREATE DATABASE QL_ShopGiay
USE QL_ShopGiay
drop database QL_ShopGiay
alter DATABASE QL_ShopGiay
set offline  
alter DATABASE QL_ShopGiay
set online  
CREATE TABLE TAIKHOAN
(
	TENTK VARCHAR(30),
	MATKHAU VARCHAR(30),
	EMAIL NVARCHAR(30),
	PHONE VARCHAR(12),
	FILEHINHANH NVARCHAR(40),
	CONSTRAINT PK_TK_DN PRIMARY KEY (TENTK,MATKHAU),
)
Create Table DANHMUC 
(
	MADM char(4) primary key ,
	TenDM nvarchar (50),
)
Insert into DANHMUC 
values ('DM01',N'NIKE'),
		('DM02',N'Lacoste'),
		('DM03',N'Phụ kiện');


Create Table THONGTINDM
(
	MASP char(4) primary key ,
	TENSP nvarchar(400),
	GIABAN money ,
	MOTA NVARCHAR (4000),
	MADM char (4),
	Hinh nvarchar(50),
	hinhchitiet nvarchar(50),
	hinhchitiet1 nvarchar(50),
	hinhchitiet2 nvarchar (50),
	constraint FK_THONGTINDM_DM foreign key (MADM) references DANHMUC(MADM) 
)

insert into THONGTINDM(MASP,TENSP,GIABAN,MOTA,MADM,Hinh,hinhchitiet,hinhchitiet1)
values ('SP01',N'Nike Jordan 1',1500000,N'Mô tả : Giày Nike Air Jordan là sự kết hợp của huyền thoại bóng các sản phẩm đến từ Puma, adidas hoặc New Balance. So với mức thu nhgiá này không quá khó khă','DM01','Nike/NikeAirJordan1.jpg','Nike/nike1_1.jpg','Nike/Nike1_2.jpg'),
	   ('SP02',N'Nike Blue Navy',1500000,N'Mô tả : Giày BlueNavy là sự kết hợp của huyền thoại bóng rổ Michael Jordan và thương hiệu giày thể thao Nike đình đám. Air Jordan có giá thành khá rẻ, dao phần lớn các sản phẩm. Với  không quá','DM01','Nike/BlueNavy.jpg','Nike/nike2_1.jpg','Nike/nike2_2.jpg'),
	   ('SP03',N'Jordan Super.Fly 2017',1500000,N'Mô tả : Giày Jordan Super.Fly 2017 là sự kết hợp của huyền thoại bóng rổ Michael Jordan và thương hiệu giày thể thao Nike đình đám. Air Jordan có giá thàuá thấp ','DM01','Nike/nike3.jpg','Nike/nike3_1.jpg','Nike/nike3_2.jpg'),
	   ('SP04',N'Air Jordan 1 Retro High les twin',1500000,N'Mô tả : Giày Air Jordan 1 Retro High les twin là sự kết hợp của huyền thoại bóng rổ Michael Jordan và thương hiệu giày thể thao Nike đình đám.ng cấp. Với mức sống ngày càng phát t','DM01','Nike/nike4.jpg','Nike/nike4_1.jpg','Nike/nike4_2.jpg'),
	   ('SP05',N'Air Jordan 1 Retro High les twin',1500000,N'Mô tả : Giày Air Jordan 1 Retro High les twin là sự kết hợp của huyền thoại bóng rổ Michael Jordan và thương hiệu giày thể thao Nike đình đám. Air go, nằm trong khoảng t khô','DM01','Nike/nike5.jpg','Nike/nike5_1.jpg','Nike/nike5_2.jpg'),
	   ('SP06',N'Nike Sun bõx gameming',1500000,N'Mô tả : Giày Air Jordan 1 Retro High les twin là sự kết hợp của huyền thoại bóng rổ Michael Jordan và thương hiệu giày thể thao Ni Mức giá này tương đưcủaquá thấp ca cấp càng ng quá kdan.','DM01','Nike/nike6.jpg','Nike/nike6_1.jpg','Nike/nike6_2.jpg'),
	   ('SP07',N'Lacoste Evara 419',1500000,N'Mô tả: Giày Thể Thao được thiết kế với phong cách trẻ trung, khỏe khoắn và lịch lãm mang đậm phong phong cách đặc trưng của thương hiệu Lacoste.','DM02','giay/lac1.jpg','giay/lac1_1.jpg','giay/lac1_2.jpg'),
	   ('SP08',N'Lacoste Storda Sport 319',1500000,N'Mô tả: Giày Thể Thao được thiết kế với phong cách trẻ trung, khỏe khoắn và lịch lãm mang đậm phong phong cách đặc trưng của thương hiệu Lacoste.','DM02','giay/lac2.jpg','giay/lac2_1.jpg','giay/lac2_2.jpg'),
	   ('SP09',N'Lacoste Slip on Tatalya 319 ',1500000,N'Mô tả: Giày Thể Thao được thiết kế với phong cách trẻ trung, khỏe khoắn và lịch lãm mang đậm phong phong cách đặc trưng của thương hiệu Lacoste.','DM02','giay/lac3.jpg','giay/lac3_1.jpg','giay/lac3_2.jpg'),
	   ('SP10',N'Big Ball Chunky Mickey ',1500000,N'Mô tả: Giày Thể Thao được thiết kế với phong cách trẻ trung, khỏe khoắn và lịch lãm mang đậm phong phong cách đặc trưng của thương hiệu Lacoste.','DM02','giay/lac4.jpg','giay/lac4_1.jpg','giay/lac4_2.jpg'),
	   ('SP11',N'Lacoste Slip on Tatalya 319 ',1500000,N'Mô tả: Giày Thể Thao được thiết kế với phong cách trẻ trung, khỏe khoắn và lịch lãm mang đậm phong phong cách đặc trưng của thương hiệu Lacoste.','DM02','giay/lac3.jpg','giay/lac3_1.jpg','giay/lac3_2.jpg'),
	   ('SP12',N'Lacoste Evara 419',1500000,N'Mô tả: Giày Thể Thao được thiết kế với phong cách trẻ trung, khỏe khoắn và lịch lãm mang đậm phong phong cách đặc trưng của thương hiệu Lacoste.','DM02','giay/lac1.jpg','giay/lac1_1.jpg','giay/lac1_2.jpg'),
	   ('SP13',N'Còi police 4 chế độ ',56900000,N'Mô tả :Bộ ba còi sịn ','DM03','coixe/cx4.jpg','mockhoa/ctmk1.jpg','mockhoa/ctmk2.jpg'),
	   ('SP14',N'Nón Chữ Police ',6900000,N'Nón đẹp  ','DM03','non/non1.jpg','mockhoa/ctmk1.jpg','mockhoa/ctmk2.jpg'),
	   ('SP15',N'Nón Chữ Police màu xanh ',6900000,N'Nón đẹp ','DM03','non/non2.jpg','mockhoa/ctmk1.jpg','mockhoa/ctmk2.jpg'),
	   ('SP16',N'Nón Thể Thao',16900000,N'Nón mô tô','DM03','non/non3.jpg','mockhoa/ctmk1.jpg','mockhoa/ctmk2.jpg'),
	   ('SP17',N'Nón mô tô kawasaki',120000,N'Nón mô tô đẹp','DM03','non/non4.jpg','mockhoa/ctmk1.jpg','mockhoa/ctmk2.jpg');

	  
			

INSERT INTO TAIKHOAN(TENTK,MATKHAU)
VALUES ('admin','admin');
select * from TAIKHOAN





			