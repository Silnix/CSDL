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
(Al
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