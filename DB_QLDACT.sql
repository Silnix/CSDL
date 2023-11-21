CREATE DATABASE QLDACT
USE QLDACT

CREATE TABLE NhanVien (
    MaNV varchar(10) not null,
    HoNV nvarchar(50),
    TenLot nvarchar(50),
    TenNV nvarchar(50),
    NgSinh date,
    Phai nvarchar(50),
    Dchi nvarchar(50),
    MaNQL varchar(10),
    Phong nvarchar(50),
    Luong float
)

CREATE TABLE PhongBan (
    MaPB varchar(10) not null,
    TenPB nvarchar(50),
    TrPHG nvarchar(50),
    NgayNhanChuc date,
    QL nvarchar(50)
)

CREATE TABLE DeAn (
    MaDA varchar(10) not null,
    TenDA nvarchar(50),
    DiaDiemDA nvarchar(50),
    Phong nvarchar(50),
    NgayBD_DK date,
    NgayKT_DK date
)

CREATE TABLE ThanNhan (
    MaNV varchar(10) not null,
    MaTN varchar(10) not null,
    TenTN nvarchar(50),
    Phai nvarchar(50),
    NgSinh date,
    QuanHe nvarchar(50)
)

CREATE TABLE PhanCong (
    MaNV varchar(10) not null,
    MaDA varchar(10) not null,
    ThoiGian float
)

ALTER TABLE NhanVien ADD CONSTRAINT PK_NhanVien PRIMARY KEY (MaNV)
ALTER TABLE PhongBan ADD CONSTRAINT PK_PhongBan PRIMARY KEY (MaPB)
ALTER TABLE DeAn ADD CONSTRAINT PK_DeAn PRIMARY KEY (MaDA)
ALTER TABLE ThanNhan ADD CONSTRAINT PK_ThanNhan PRIMARY KEY (MaNV,MaTN)
ALTER TABLE PhanCong ADD CONSTRAINT PK_PhanCong PRIMARY KEY (MaNV,MaDA)

SP_PKEYS NhanVien
SP_PKEYS PhongBan
SP_PKEYS DeAn
SP_PKEYS ThanNhan
SP_PKEYS PhanCong

AlTER TABLE ThanNhan ADD CONSTRAINT FK_ThanNhan_MaNV FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV) 
AlTER TABLE PhanCong ADD CONSTRAINT FK_PhanCong_MaNV FOREIGN KEY (MaNV) REFERENCES NhanVien(MaNV) 
AlTER TABLE PhanCong ADD CONSTRAINT FK_PhanCong_MaDA FOREIGN KEY (MaDA) REFERENCES DeAn(MaDA) 

DELETE NhanVien
DELETE PhongBan
DELETE DeAn
DELETE ThanNhan
DELETE PhanCong

INSERT INTO NhanVien VALUES ('001', N'Vuong', N'Ngoc Quyen', N'Ha Noi', '1957-10-22', N'Nu', N'Ha Noi', null, N'QL', 3000000)
INSERT INTO NhanVien VALUES ('002', N'Nguyen', N'Thanh Tung', N'TPHCM', '1955-1-9', N'Nam', N'TPHCM', '001', N'NC', 2500000)
INSERT INTO NhanVien VALUES ('003', N'Le', N'Thi Nhan', N'TPHCM', '1960-12-18', N'Nu', N'TPHCM', '001', N'NC', 2500000)
INSERT INTO NhanVien VALUES ('004', N'Dinh', N'Ba Tien', N'Dong Thap', '1968-1-9', N'Nam', N'Dong Thap', '002',N'NC', 2200000)
INSERT INTO NhanVien VALUES ('005', N'Bui', N'Thuy Vu', N'Tra Vinh', '1973-6-8', N'Nu', N'Tra Vinh', '003', N'DH', 2200000)
INSERT INTO NhanVien VALUES ('006', N'Nguyen', N'Manh Hung', N'Dong Nai', '1981-8-30', N'Nam', N'Dong Nai', '002', N'NC', 2000000)
INSERT INTO NhanVien VALUES ('007', N'Tran', N'Hong Van', N'Vinh Long', '1976-8-2', N'Nu', N'Vinh Long', '004', N'NC', 1800000)

INSERT INTO PhongBan VALUES ('001', N'Dieu Hanh', N'QL', '2000-5-22', N'DH')
INSERT INTO PhongBan VALUES ('002', N'Nghien Cuu', N'NC', '2002-3-15', N'NC')
INSERT INTO PhongBan VALUES ('003', N'Quan Ly', N'QL', '2002-10-10', N'DH')

INSERT INTO DeAn VALUES ('TH001', N'Tin hoc hoa 1', N'Ha Noi', N'NC', '2003-2-1', '2004-2-1')
INSERT INTO DeAn VALUES ('TH002', N'Tin hoc hoa 2', N'TPHCM', N'NC', '2003-6-4', '2004-2-4')
INSERT INTO DeAn VALUES ('DT001', N'Dao tao 1', N'Nha Trang', N'DH', '2002-2-4', '2006-2-4')
INSERT INTO DeAn VALUES ('DT002', N'Dao tao 2', N'Da Nang', N'DH', '2006-2-1', '2006-12-12')

INSERT INTO ThanNhan VALUES ('003', '1', N'Tran Minh Tien', N'Nam', '1990-12-11', N'Con')
INSERT INTO ThanNhan VALUES ('003', '2', N'Tran Ngoc Linh', N'Nu', '1993-3-10', N'Con')
INSERT INTO ThanNhan VALUES ('003', '3', N'Tran Minh Long', N'Nam', '1957-10-10', N'Vo Chong')
INSERT INTO ThanNhan VALUES ('001', '1', N'Le Nhat Minh', N'Nam', '1955-4-27', N'Vo Chong')
INSERT INTO ThanNhan VALUES ('002', '1', N'Le Hoai Thuong', N'Nu', '1960-12-5', N'Vo Chong')
INSERT INTO ThanNhan VALUES ('004', '1', N'Le Phi Phung', N'Nu', '1960-12-24', N'Vo Chong')
INSERT INTO ThanNhan VALUES ('005', '1', N'Tran Thu Hong', N'Nu', '1978-4-11', N'Vo Chong')
INSERT INTO ThanNhan VALUES ('005', '2', N'Nguyen Manh Tam', N'Nam', '2003-3-12', N'Con')

INSERT INTO PhanCong VALUES ('001', 'TH001', 30)
INSERT INTO PhanCong VALUES ('001', 'TH002', 12.5)
INSERT INTO PhanCong VALUES ('002', 'TH001', 10)
INSERT INTO PhanCong VALUES ('002', 'TH002', 10)
INSERT INTO PhanCong VALUES ('002', 'DT001', 10)
INSERT INTO PhanCong VALUES ('002', 'DT002', 10)
INSERT INTO PhanCong VALUES ('003', 'TH001', 37.5)
INSERT INTO PhanCong VALUES ('004', 'DT001', 22.5)
INSERT INTO PhanCong VALUES ('004', 'DT002', 10)
INSERT INTO PhanCong VALUES ('006', 'DT001', 30.5)
INSERT INTO PhanCong VALUES ('007', 'DT001', 20)
INSERT INTO PhanCong VALUES ('007', 'DT002', 10)


SELECT *
FROM NhanVien
SELECT *
FROM PhongBan
SELECT *
FROM DeAn
SELECT *
FROM ThanNhan
SELECT *
FROM PhanCong
----------------------------------------------------------------------
--