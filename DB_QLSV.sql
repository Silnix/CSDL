CREATE DATABASE QLSV
USE QLSV
--DROP DATABASE QLSV

CREATE TABLE CT_DaoTao
(
	MaCTDT varchar(10) not null, 
	TenCTDT nvarchar(50)
)

CREATE TABLE KhoaHoc
(
	MaKH varchar(10) not null, 
	MaCTDT varchar(10) not null, 
	TenKH nvarchar(50)
)

CREATE TABLE Lop
(
	MaLop varchar(10) not null, 
	MaKH varchar(10) not null, 
	TenLop nvarchar(50)
) 

CREATE TABLE MonHoc
(
	MaMH varchar(10) not null, 
	TenMH nvarchar(50)
)

CREATE TABLE SinhVien
(
	MaSV varchar(10) not null, 
	HoTen nvarchar(50), 
	GioiTinh nvarchar(50), 
	NgaySinh datetime, 
	NoiSinh nvarchar(50), 
	MaLop varchar(10) not null
)

CREATE TABLE KetQuaThi
(
	MaSV varchar(10) not null, 
	MaMH varchar(10) not null,
	LanThi int not null, 
	DiemThi Float(10) not null
)

ALTER TABLE CT_DaoTao ADD CONSTRAINT PK_CT_DaoTao PRIMARY KEY (MaCTDT)
ALTER TABLE KhoaHoc ADD CONSTRAINT PK_KhoaHoc PRIMARY KEY (MaKH)
ALTER TABLE Lop ADD CONSTRAINT PK_Lop PRIMARY KEY (MaLop)
ALTER TABLE MonHoc ADD CONSTRAINT PK_MonHoc PRIMARY KEY (MaMH)
ALTER TABLE SinhVien ADD CONSTRAINT PK_SinhVien PRIMARY KEY (MaSV)
ALTER TABLE KetQuaThi ADD CONSTRAINT PK_KetQuaThi PRIMARY KEY (MaSV,MaMH,LanThi)

--ALTER TABLE CT_DaoTao DROP PK_CT_Daotao

SP_PKEYS CT_DaoTao
SP_PKEYS KhoaHoc
SP_PKEYS Lop
SP_PKEYS MonHoc
SP_PKEYS SinhVien
SP_PKEYS KetQuaThi

AlTER TABLE KhoaHoc ADD CONSTRAINT FK_KhoaHoc_MaCTDT FOREIGN KEY (MaCTDT) REFERENCES CT_DaoTao(MaCTDT) 
AlTER TABLE Lop ADD CONSTRAINT FK_Lop_MaKH FOREIGN KEY (MaKH) REFERENCES KhoaHoc(MaKH) 
AlTER TABLE SinhVien ADD CONSTRAINT FK_SinhVen_MaLop FOREIGN KEY (MaLop) REFERENCES Lop(MaLop) 
AlTER TABLE KetQuaThi ADD CONSTRAINT FK_KetQuaThi_MaSV FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV) 
AlTER TABLE KetQuaThi ADD CONSTRAINT FK_KetQuaThi_MaMH FOREIGN KEY (MaMH) REFERENCES MonHoc(MaMH) 

DELETE KetQuaThi
DELETE SinhVien
DELETE Lop
DELETE MonHoc

INSERT INTO CT_DaoTao (MaCTDT, TenCTDT)
VALUES
    ('1', N'Cử nhân'),
    ('2', N'Cao đẳng'),
    ('3', N'Trung cấp');

INSERT INTO MonHoc (MaMH, TenMH)
VALUES
    ('TH101', N'Tin học đại cương'),
    ('TH110', N'Toán rời rạc'),
    ('TH102', N'Cơ sở dữ liệu');

INSERT INTO KhoaHoc (MaKH, MaCTDT, TenKH)
VALUES
    ('1', '1', N'Khóa 1 năm 2005'),
    ('2', '1', N'Khóa 2 năm 2006'),
    ('3', '2', N'Khóa 1 năm 2007'),
    ('4', '3', N'Khóa 1 năm 2008'),
    ('5', '2', N'Khóa 2 năm 2008');

INSERT INTO Lop (MaLop, MaKH, TenLop)
VALUES
    ('1', '1', N'K1_1'),
    ('2', '1', N'K2_1'),
    ('3', '1', N'K3_1'),
    ('4', '2', N'K3_2');

INSERT INTO SinhVien (MaSV, HoTen, GioiTinh, NgaySinh, NoiSinh, MaLop)
VALUES
    ('K116', N'Đinh Nguyễn Vân Anh', N'Nữ', '1985-12-18', N'Bình Thuận', '1'),
    ('K117', N'Trần Hoàng Anh', N'Nữ', '1986-8-4', N'Bình Dương', '1'),
    ('K118', N'Bùi Thanh Bình', N'Nam', '1985-10-23', N'Đồng Nai', '1'),
    ('K119', N'Phạm Nhật Tân', N'Nam', '1985-1-15', N'Đồng Tháp', '2'),
    ('K120', N'Định Thiện Hòa', N'Nam', '1985-12-8', N'Vĩnh Long', '3'),
    ('K121', N'Nguyễn Anh Khoa', N'Nam', '1985-11-14', N'Vũng Tàu', '3'),
    ('K122', N'Trương Mộng Thủy', N'Nữ', '1986-5-12', N'Cần Thơ', '2'),
    ('K123', N'Võ Anh Thi', N'Nữ', '1986-5-23', N'Bến Tre', '2');
    
INSERT INTO KetQuaThi (MaSV, MaMH, LanThi, DiemThi)
VALUES
    ('K116', 'TH101', '1', '8'),
    ('K117', 'TH101', '1', '4'),
    ('K118', 'TH101', '1', '6.5'),
    ('K119', 'TH102', '1', '5'),
    ('K120', 'TH102', '1', '7'),
    ('K116', 'TH110', '1', '7'),
    ('K118', 'TH102', '1', '9'),
    ('K119', 'TH101', '1', '6'),   
	('K120', 'TH101', '1', '6'),
	('K116', 'TH102', '1', '7.5'),
	('K117', 'TH101', '2', '7');

SELECT *
FROM CT_DaoTao
SELECT *
FROM KhoaHoc
SELECT *
FROM Lop
SELECT *
FROM MonHoc
SELECT *
FROM SinhVien
SELECT *
FROM KetQuaThi

-------------------------------------------------
--1 
ALTER TABLE SinhVien
ADD GhiChu nvarchar(50)
--2
INSERT INTO MonHoc (MaMH, TenMH)
VALUES ('TH112', N'Kiến trúc máy tính')
--3
UPDATE KetQuaThi
SET DiemThi = 7.5
WHERE MaSV = 'K116' AND MaMH = 'TH101'
--4
SELECT MaSV, HoTen
FROM SinhVien
--5
SELECT TenMH
FROM MonHoc
--6
SELECT MaSV, HoTen, GioiTinh, NgaySinh, NoiSinh
FROM SinhVien
INNER JOIN Lop ON SinhVien.MaLop = Lop.MaLop
WHERE TenLop = 'K1_1'
--7
SELECT MaSV, HoTen, GioiTinh, NgaySinh, NoiSinh, MaLop
FROM SinhVien
WHERE YEAR(NgaySinh) = 1985
--8
SELECT SinhVien.MaSV, SinhVien.HoTen, SinhVien.GioiTinh, SinhVien.NgaySinh, SinhVien.NoiSinh
FROM SinhVien
JOIN Lop ON SinhVien.MaLop = Lop.MaLop
JOIN KhoaHoc ON Lop.MaKH = KhoaHoc.MaKH
JOIN CT_DaoTao ON KhoaHoc.MaCTDT = CT_DaoTao.MaCTDT
WHERE CT_DaoTao.TenCTDT = N'Cử nhân'
--9
SELECT SinhVien.MaSV, SinhVien.HoTen
FROM SinhVien
JOIN KetQuaThi ON SinhVien.MaSV = KetQuaThi.MaSV
JOIN MonHoc ON KetQuaThi.MaMH = MonHoc.MaMH
WHERE MonHoc.TenMH = N'Tin học đại cương'
--10
SELECT COUNT(MaSV) AS 'So luong SV lop K3_1'
FROM SinhVien
INNER JOIN Lop ON SinhVien.MaLop = Lop.MaLop
WHERE TenLop = 'K3_1' 
--11
SELECT Lop.MaLop, Lop.TenLop, COUNT(SinhVien.MaSV) AS 'So luong SV theo tung lop'
FROM Lop
LEFT JOIN SinhVien ON Lop.MaLop = SinhVien.MaLop
GROUP BY Lop.MaLop, Lop.TenLop
--12
SELECT GioiTinh, COUNT(MaSV) AS 'So luong SV theo gioi tinh'
FROM SinhVien
GROUP BY GioiTinh
--13
SELECT NoiSinh, COUNT(MaSV) AS 'So luong SV theo noi sinh'
FROM SinhVien
GROUP BY NoiSinh
--14
SELECT CT_DaoTao.TenCTDT, COUNT(SinhVien.MaSV) AS 'So luong SV theo tung chuong trinh dao tao'
FROM CT_DaoTao
LEFT JOIN KhoaHoc ON CT_DaoTao.MaCTDT = KhoaHoc.MaCTDT
LEFT JOIN Lop ON KhoaHoc.MaKH = Lop.MaKH
LEFT JOIN SinhVien ON Lop.MaLop = SinhVien.MaLop
GROUP BY CT_DaoTao.TenCTDT
--19
SELECT SinhVien.HoTen, MonHoc.TenMH
FROM SinhVien
JOIN KetQuaThi ON SinhVien.MaSV = KetQuaThi.MaSV
JOIN MonHoc ON KetQuaThi.MaMH = MonHoc.MaMH
GROUP BY SinhVien.HoTen, MonHoc.TenMH
HAVING COUNT(KetQuaThi.LanThi) >= 2
--15
SELECT MaLop, TenLop
FROM Lop
WHERE (
	SELECT COUNT(MaSV) 
	FROM SinhVien
	WHERE SinhVien.MaLop = Lop.MaLop
	) = (
		SELECT MAX(SoLuongSV) 
		FROM (
			SELECT MaLop, COUNT(MaSV) AS SoLuongSV 
			FROM SinhVien 
			GROUP BY MaLop
			) AS SoLuongSinhVien
		)
--16
SELECT MaSV, COUNT(DISTINCT MaMH) AS SoLuongMonHoc
FROM KetQuaThi
GROUP BY MaSV
HAVING COUNT(DISTINCT MaMH) = (
								SELECT COUNT (MaMH)
								FROM MonHoc
								)
INSERT INTO KetQuaThi VALUES ('K116', 'TH112', 1, 8.5)
--17
SELECT HoTen
FROM SinhVien
WHERE MaSV NOT IN (SELECT DISTINCT MaSV FROM KetQuaThi)
--18
UPDATE SinhVien
SET GhiChu = 'Hoản học'
WHERE MaSV NOT IN (SELECT DISTINCT MaSV FROM KetQuaThi)