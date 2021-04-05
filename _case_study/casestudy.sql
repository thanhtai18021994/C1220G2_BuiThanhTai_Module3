create database case_study;
use case_study;
create table vi_tri (
    id_vi_tri int primary key,
    ten_vi_tri varchar(45)
);
create table trinh_do (
    id_trinh_do int primary key,
    trinh_do varchar(45)
);
create table bo_phan (
    id_bo_phan int primary key,
    ten_bo_phan varchar(45)
);
create table nhan_vien (
    id_nhan_vien int primary key,
    ho_va_ten varchar(50),
    id_vi_tri int,
    id_trinh_do int,
    id_bo_phan int,
    ngay_sinh date,
    so_cmnd varchar(45),
    luong double,
    sdt int,
    email varchar(50),
    dia_chi varchar(45),
    foreign key (id_vi_tri)
        references vi_tri (id_vi_tri),
    foreign key (id_trinh_do)
        references trinh_do (id_trinh_do),
    foreign key (id_bo_phan)
        references bo_phan (id_bo_phan)
);
alter table nhan_vien
modify column sdt varchar(50);
create table hop_dong_chi_tiet (
    id_hop_dong_chi_tiet int primary key,
    id_hop_dong int,
    id_dich_vu_di_kem int,
    so_luong int,
    foreign key (id_dich_vu_di_kem)
        references dich_vu_di_kem (id_dich_vu_di_kem),
	foreign key (id_dich_vu_di_kem)
        references hop_dong(id_hop_dong)
);
drop table hop_dong_chi_tiet;
create table dich_vu_di_kem (
    id_dich_vu_di_kem int primary key,
    ten_dich_vu_di_kem varchar(45),
    gia int,
    don_vi int,
    trang_thai_kha_dung varchar(45)
);
create table hop_dong (
    id_hop_dong int ,
    id_nhan_vien int,
    id_khach_hang int,
    id_dich_vu int,
    ngay_hop_dong date,
    ngay_ket_thuc date,
    tien_dat_coc int,
    tong_tien int
);
alter table hop_dong
add primary key(id_hop_dong);
alter table hop_dong
add foreign key(id_nhan_vien) references nhan_vien(id_nhan_vien),
add foreign key(id_khach_hang) references khach_hang(id_khach_hang);
-- add foreign key(id_dich_vu) references dich_vu(id_dich_vu);-- 
drop table hop_dong;
alter table hop_dong
drop constraint hop_dong_ibfk_3,
drop constraint hop_dong_ibfk_2;
create table khach_hang (
    id_khach_hang int primary key,
    id_loai_khach int,
    ho_va_ten varchar(50),
    ngay_sinh varchar(50),
    so_cmtnd varchar(50),
    email varchar(50),
    dia_chi varchar(50)
);
alter table khach_hang
add foreign key (id_loai_khach)
 references loai_khach(id_loai_khach);
create table dich_vu (
    id_dich_vu int primary key,
    ten_dich_vu varchar(45),
    dien_tich int,
    so_tang int,
    so_nguoi_toi_Da varchar(50),
    chi_phi_thue varchar(50),
    id_kieu_thue int,
    id_loai_dich_vu int,
    trang_thai varchar(50)
);
alter table dich_vu
add foreign key (id_kieu_thue) references loai_dich_vu(id_loai_dich_vu),
add foreign key (id_kieu_thue) references kieu_thue(id_kieu_thue) ;
create table loai_khach (
    id_loai_khach int primary key,
    ten_loai_khach varchar(50)
);
create table kieu_thue (
    id_kieu_thue int primary key,
    ten_kieu_thue varchar(45),
    gia int
);
create table loai_dich_vu (
    id_loai_dich_vu int primary key,
    ten_dich_vu varchar(50)
);
insert into nhan_vien(id_nhan_vien,ho_va_ten,ngay_sinh,so_cmnd,luong,email,dia_chi)
values
(1,'Hui thanh tai','2019/02/12','191830369',3000,'tabui18021994@gmail.com','18 nguyen luong bang'),
(2,'Tui thanh tai','2019/02/12','198891234',3000,'tabui18021994@gmail.com','18 nguyen luong bang'),
(3,'Kui thanh tai','2019/02/12','191830364',3000,'tabui18021994@gmail.com','18 nguyen luong bang'),
(4,'bui thanh tai','2019/02/12','191830363',3000,'tabui18021994@gmail.com','18 nguyen luong bang')
;
select * from nhan_vien
where ho_va_ten like 'K%'
having length(ho_va_ten)<15;
insert into khach_hang(id_khach_hang,ho_va_ten,ngay_sinh,so_cmtnd,email,dia_chi)
values
(5,'Khai','2019/04/12','09897812','taibuo1801994@gmail.com','Ha Noi'),
(6,'Dang','2020/04/12','09897812','khaibuo1801994@gmail.com','Hoa Cam'),
(7,'Thuc','2012/04/12','09897812','duongbuo1801994@gmail.com','Cam Duong'),
(8,'Chan','2010/04/12','09897812','taibuo1801994@gmail.com','Hue');
select *,ceil(datediff(curdate(),ngay_sinh)/365) as age from khach_hang
having age<50 and age>18;
insert into loai_khach(id_loai_khach,ten_loai_khach)
values
(1,'Diamond'),
(2,'Member'),
(3,'Gold'),
(4,'Platinium');
insert into dich_vu(id_dich_vu,ten_dich_vu,dien_tich,so_tang,so_nguoi_toi_Da,chi_phi_thue,trang_thai)
value
(1,'Villa',100,2,2,50,'OK'),
(2,'House',100,2,2,50,'OK'),
(3,'Room',100,2,2,50,'OK');
insert into hop_dong(id_hop_dong,ngay_hop_dong,ngay_ket_thuc,tien_dat_coc)
value
(1,'2000-12-30','2001-12-30',50),
(2,'2000-12-30','2001-12-30',50),
(3,'2000-12-30','2001-12-30',50),
(4,'2000-12-30','2001-12-30',50),
(5,'2000-12-30','2001-12-30',50);
insert into dich_vu_di_kem(id_dich_vu_di_kem,ten_dich_vu_di_kem,gia,don_vi,trang_thai_kha_dung)
value
(1,'massage',10,1,'OK'),
(2,'karaoke',10,1,'OK'),
(3,'thức ăn',10,1,'OK'),
(4,'nước uống',10,1,'OK'),
(5,'thuê xe di chuyển tham quan resort',10,1,'OK');
insert into hop_dong_chi_tiet(id_hop_dong_chi_tiet,id_hop_dong,id_dich_vu_di_kem,so_luong)
values
(1,1,2,1),
(2,3,2,1),
(3,1,2,1),
(4,2,2,1);
insert into loai_dich_vu(id_loai_dich_vu,ten_dich_vu)
value
(1,'Villa'),
(2,'House'),
(3,'Room');
SET sql_mode=’NO_AUTO_VALUE_ON_ZERO’;
drop table hop_dong;
select ho_va_ten,so_cmtnd,count(so_cmtnd)
from khach_hang inner join loai_khach on khach_hang.id_loai_khach=loai_khach.id_loai_khach
where loai_khach.ten_loai_khach='Diamond'
group by so_cmtnd;
select cus.id_khach_hang,cus.ho_va_ten,typ.ten_loai_khach,cont.id_hop_dong,ser.ten_dich_vu,cont.ngay_hop_dong,cont.ngay_ket_thuc,(ser.chi_phi_thue+(b.gia)*(a.so_luong)) as tong_tien
from((((khach_hang cus inner join hop_dong cont on cus. id_khach_hang=cont.id_khach_hang)
left join dich_vu ser on ser.id_dich_vu=cont.id_dich_vu)
left join loai_khach typ on typ.id_loai_khach=cus.id_loai_khach)
left join hop_dong_chi_tiet a on a.id_hop_dong=cont.id_hop_dong )
left join dich_vu_di_kem b on b.id_dich_vu_di_kem=a.id_dich_vu_di_kem;

select ser.id_dich_vu,ser.ten_dich_vu,ser.dien_tich,ser.chi_phi_thue,typ.ten_dich_vu
from(dich_vu ser inner join hop_dong cont on ser.id_dich_vu=cont.id_dich_vu)
inner join loai_dich_vu typ on ser.id_loai_dich_vu=typ.id_loai_dich_vu
where year(cont.ngay_hop_dong)<2019;

select *
from ((dich_vu ser inner join loai_dich_vu typ on ser.id_loai_dich_vu=typ.id_loai_dich_vu)
inner join hop_dong cont on ser.id_dich_vu=cont.id_dich_vu)
where year(cont.ngay_hop_dong)=2018 and  not exists(
select *
from hop_dong
where year(cont.ngay_hop_dong)=2019); 
select distinct ten_khach_hang
from khach_hang;
select *
from khach_hang
group by ten_khach_hang;
select ho_va_ten
from khach_hang
union
select ho_va_ten
from khach_hang;

select month(ngay_hop_dong),count(ngay_hop_dong)
from hop_dong
where year(ngay_hop_dong)=2019
group by month(ngay_hop_dong);
 select *
 from dich_vu_di_kem
 where exists(
 select *
 from khach_hang inner join loai_khach on khach_hang.id_loai_khach=loai_khach.id_loai_khach
 where loai_khach.ten_loai_khach='Diamond' and (khach_hang.dia_chi='Vinh' or khach_hang.dia_chi='Quang ngai'));











