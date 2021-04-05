create database furama_resort;
use furama_resort;
create table vi_tri(
id_vitri int primary key auto_increment,
ten_vitri varchar(50) not null);
create table trinh_do(
id_trinhdo int primary key auto_increment,
trinhdo varchar(50));
create table bo_phan(
id_bophan int primary key auto_increment,
ten_bophan varchar(50) not null);
create table nhan_vien(
id_nhanvien int primary key auto_increment,
ten_nhanvien varchar(50) not null,
id_vitri int not null,
id_trinhdo int not null,
id_bophan int not null,
ngay_sinh date,
cmnd varchar(12) not null unique,
luong int not null,
sdt varchar(10) not null,
email varchar(50) not null,
dich_vu varchar(50) not null);
alter table nhan_vien change dich_vu dia_chi varchar(50);
create table hop_dong_chi_tiet(
id_hopdongchitiet int primary key auto_increment,
id_hopdong int not null,
id_dichvudikem int not null,
so_luong int not null
);
create table dich_vu_di_kem(
id_dichvudikem int primary key auto_increment,
ten_dichvudikem varchar(50)  not null,
gia int not null,
don_vi varchar(10) not null,
trang_thai varchar(50));
create table hop_dong (
id_hopdong int primary key auto_increment,
id_nhanvien int not null,
id_khachhang int not null,
id_dichvu int not null,
ngay_hopdong date not null,
ngay_ketthuc date not null,
tien_dat_coc int not null);
create table khach_hang(
id_khachhang int primary key auto_increment,
id_loaikhach int not null,
ten_khachhang varchar(50) not null,
ngaysinh date not null,
cmnd varchar(10) not null,
sdt_khachhang varchar(50),
email varchar(50) not null,
diachi varchar(50) not null);
create table dich_vu(
id_dichvu int primary key auto_increment,
ten_dichvu varchar(50) not null,
dientich double not null,
sotang int not null,
songuoi_toida int not null,
chiphithue int not null,
id_kieuthue int not null,
id_loaidichvu int not null,
trang_thai varchar(50) not null);
create table loai_khach(
id_loaikhach int primary key auto_increment,
ten_loaikhach varchar(50) not null
);
create table kieu_thue(
id_kieuthue int primary key auto_increment,
ten_kieuthue varchar(50)  not null
);
create table loai_dich_vu(
id_loaidichvu int primary key auto_increment,
ten_loaidichvu varchar(50)  not null
);
alter table nhan_vien
add foreign key(id_vitri) references vi_tri(id_vitri),
add foreign key(id_trinhdo) references trinh_do(id_trinhdo),
add foreign key(id_bophan) references bo_phan(id_bophan);
alter table hop_dong_chi_tiet
add foreign key(id_hopdong) references hop_dong(id_hopdong),
add foreign key(id_dichvudikem) references dich_vu_di_kem(id_dichvudikem);
alter table hop_dong 
add foreign key(id_nhanvien) references nhan_vien(id_nhanvien),
add foreign key(id_khachhang) references khach_hang(id_khachhang),
add foreign key(id_dichvu) references dich_vu(id_dichvu);
alter table khach_hang
drop foreign key khach_hang_ibfk_1;
alter table khach_hang
add foreign key(id_loaikhach) references loai_khach(id_loaikhach) ON DELETE CASCADE ON update CASCADE ;
alter table dich_vu
add foreign key (id_kieuthue) references kieu_thue(id_kieuthue),
add foreign key (id_loaidichvu) references loai_dich_vu(id_loaidichvu); 
-- ------------------------------------------------task1--------------------------------------------------------- 
insert into khach_hang(id_loaikhach,ten_khachhang,ngaysinh,cmnd,sdt_khachhang,email,diachi)
values
(1,'Kenvin','1998-02-12','191830363','0775562914','taibui18021994@gmail.com','297 nguyen tat thanh'),
(1,'Ronadol','1988-04-12','191830363','0775562914','taibui18021994@gmail.com','297 nguyen tat thanh'),
(1,'Bill Gate','1968-02-12','191830363','0775562914','taibui18021994@gmail.com','297 nguyen tat thanh');
insert into bo_phan(ten_bophan)
values
('Sale – Marketing'),
('Hành Chính'),
('Phục vụ'),
('Quản lý');
insert into dich_vu(ten_dichvu,dientich,sotang,songuoi_toida,chiphithue,id_kieuthue,id_loaidichvu,trang_thai)
values
('A',30,3,12,50,1,1,'empty'),
('B',20,4,12,100,2,3,'empty'),
('C',12,4,14,200,1,3,'full');
insert into dich_vu_di_kem(ten_dichvudikem,gia,don_vi,trang_thai)
values
('massage',100,'$','full'),
('karaoke',200,'$','empty'),
('food',50,'$','empty'),
('water',20,'$','empty');
insert into hop_dong(id_nhanvien,id_khachhang,id_dichvu,ngay_hopdong,ngay_ketthuc,tien_dat_coc)
values
(1,2,3,'2019-02-18','2019-04-01',50),
(2,3,1,'2018-02-18','2018-03-01',50),
(4,2,1,'2020-02-18','2020-03-01',50),
(2,1,2,'2019-04-12','2019-05-01',50);
insert into hop_dong_chi_tiet(id_hopdong,id_dichvudikem,so_luong)
values
(1,2,3),
(2,3,1),
(2,1,1),
(3,1,1);
insert into kieu_thue(ten_kieuthue)
values
('ngay'),
('thang'),
('gio');
insert into loai_dich_vu(ten_loaidichvu)
values
('villa'),
('house'),
('room');
insert into loai_khach(ten_loaikhach)
values
('Diamond'),
('Platinium'),
('Gold'),
('Silver'),
('Member');
insert into trinh_do(trinhdo)
values
('dai hoc'),
('cao dang'),
('trung cap'),
('sau dai hoc');
insert into nhan_vien(ten_nhanvien,id_vitri,id_trinhdo,id_bophan,ngay_sinh,cmnd,luong,sdt,email,dia_chi)
values
('Kha',1,1,1,'1998-02-04','191830364',1000,'0775562914','taibu18021994@gmail.com','297 ton duc thang'),
('Tuan',2,3,1,'1998-02-04','191830363',1000,'0775562914','taibu18021994@gmail.com','277 dang dung'),
('Dong',3,2,3,'1998-02-04','191830362',1000,'0775562914','taibu18021994@gmail.com','267 nguyen tat thanh'),
('Tai',1,3,2,'1998-02-04','191830361',1000,'0775562914','taibu18021994@gmail.com','257 nguyen tat thanh');
insert into vi_tri(ten_vitri)
values
('Lễ tân'),
('phục vụ'),
('chuyên viên'),
('giám sát'),
('quản lý'),
('giám đốc');
-- ---------------------------------------------task2---------------------------------------------------
select *
from nhan_vien
where (ten_nhanvien like 'H%' or ten_nhanvien like 'T%' or ten_nhanvien like 'K%') and length(ten_nhanvien)<=15;
-- ---------------------------------------------task3---------------------------------------------------
select * ,ceil(datediff(curdate(),ngaysinh)/365) as age
from khach_hang
where ceil(datediff(curdate(),ngaysinh)/365)<50 and ceil(datediff(curdate(),ngaysinh)/365)>18 and ( diachi='Quang tri'or diachi='Vinh');
-- ------------------------------------------- task4 ---------------------------------------------------
select khach_hang.ten_khachhang,count(hop_dong.id_khachhang)
from khach_hang inner join loai_khach on khach_hang.id_loaikhach=loai_khach.id_loaikhach
inner join hop_dong on hop_dong.id_khachhang=khach_hang.id_khachhang
where loai_khach.ten_loaikhach='Diamond'
group by hop_dong.id_khachhang;
-- --------------------------------------------task5-----------------------------------------------------
select k.id_khachhang,k.ten_khachhang,h.id_hopdong,ser.ten_dichvu,h.ngay_hopdong,h.ngay_ketthuc,(ser.chiphithue+e.gia*d.so_luong) as gia
from khach_hang k left join hop_dong h on k.id_khachhang=h.id_khachhang
left join loai_khach l on k.id_loaikhach=l.id_loaikhach
left join dich_vu ser on ser.id_dichvu=h.id_hopdong
left join hop_dong_chi_tiet d on d.id_hopdong=h.id_hopdong
left join dich_vu_di_kem e on e.id_dichvudikem=d.id_dichvudikem;
-- ----------------------------------task6---------------------------------------------
select ser.id_dichvu,ser.ten_dichvu,ser.dientich,ser.songuoi_toida,ser.chiphithue,typ.ten_loaidichvu
from dich_vu ser inner join loai_dich_vu typ on typ.id_loaidichvu=ser.id_loaidichvu
inner join hop_dong h on h.id_dichvu=ser.id_dichvu
where not 
((month(h.ngay_hopdong)>=1 and month(h.ngay_hopdong) <=3) and year(h.ngay_hopdong)=2019);
-- ---------------------------------task7----------------------------------------------
select ser.id_dichvu,ser.ten_dichvu,ser.dientich,ser.songuoi_toida,ser.chiphithue,typ.ten_loaidichvu
from dich_vu ser inner join loai_dich_vu typ on ser.id_loaidichvu=typ.id_loaidichvu
inner join hop_dong h on h.id_dichvu=ser.id_dichvu;
-- ????????????????????????????????????
-- ----------------------------------task8---------------------------------------------
select distinct ten_khachhang
from khach_hang;
select *
from khach_hang
group by ten_khachhang;
select ten_khachhang
from khach_hang
union
select ten_khachhang
from khach_hang;
-- --------------------------------task9------------------------------------------
select year(h.ngay_hopdong),month(h.ngay_hopdong),count(h.ngay_hopdong)
from hop_dong h
where year(h.ngay_hopdong)=2019
group by month(h.ngay_hopdong);
-- --------------------------------task10--------------------------------------
select h.id_hopdong,h.ngay_hopdong,h.ngay_ketthuc,h.tien_dat_coc,count(d.id_hopdong)
from hop_dong h inner join hop_dong_chi_tiet d on d.id_hopdong=h.id_hopdong
group by d.id_hopdong ;
-- --------------------------------task11---------------------------------------
select *
from dich_vu_di_kem
where id_dichvudikem in(
select d.id_hopdong
from khach_hang k inner join loai_khach typ on k.id_loaikhach=typ.id_loaikhach
inner join hop_dong h on k.id_khachhang=h.id_khachhang
inner join hop_dong_chi_tiet d on d.id_hopdong=h.id_hopdong 
where typ.ten_loaikhach='Diamond' and k.diachi='Vinh' or k.diachi='Quang ngai');
-- -------------------------- task13---------------------------------------------
select ser.id_dichvudikem,ser.ten_dichvudikem,ser.gia,ser.don_vi,ser.trang_thai,count(d.id_hopdong)
from hop_dong_chi_tiet d inner join hop_dong h on h.id_hopdong=d.id_hopdong
inner join dich_vu_di_kem ser on  ser.id_dichvudikem=d.id_dichvudikem
group by d.id_dichvudikem
having count(d.id_dichvudikem)=(select
max(sodichvudikem)
from myView);
-- (select count(id_dichvudikem) as sodichvudikem
-- from hop_dong_chi_tiet
-- group by id_dichvudikem) as solandichvudikem)
-- ;
create view myView as
select count(id_dichvudikem) as sodichvudikem
from hop_dong_chi_tiet
group by id_dichvudikem;
-- -------------------------task14-----------------------------------------------
select d.id_dichvudikem,d.ten_dichvudikem,d.gia,d.don_vi
from hop_dong_chi_tiet h inner join dich_vu_di_kem d on d.id_dichvudikem=h.id_dichvudikem
group by h.id_dichvudikem
having count(h.id_dichvudikem)=1;
-- ------------------------task15-----------------------------------------------
select *
from nhan_vien
where id_nhanvien in(
select id_nhanvien
from hop_dong
where year(ngay_hopdong)=2018 or year(ngay_hopdong)=2019
group by id_nhanvien
having count(id_nhanvien)<=3);
 -- ----------------------------- task16-------------------------------------
create view danhsach as
select id_nhanvien
from hop_dong 
where  year(ngay_hopdong) between 2017 and 2019;

delete
from nhan_vien n 
where id_nhanvien not in (select id_nhanvien from danhsach);
-- -------------------------------task17--------------------------------------
 delete 
 from khach_hang
 where id_khachhang in(
 select id_khachhang
 from hop_dong
 where year(hop_dong.ngay_hopdong)<=2016);
-- -------------------------------task18-------------------------------------
drop view danhsach2;
create view danhsach2 as
select cus.id_khachhang,sum(ser.chiphithue)
from hop_dong cont left join dich_vu ser on cont.id_dichvu=ser.id_dichvu
left join hop_dong_chi_tiet d on d.id_hopdong=cont.id_hopdong
left join dich_vu_di_kem k on  k.id_dichvudikem=d.id_hopdongchitiet
left join khach_hang cus on cont.id_khachhang=cus.id_khachhang
where year(cont.ngay_hopdong)=2019 and cus.id_loaikhach=2
group by cont.id_khachhang
having sum(ser.chiphithue)>100;
 
update khach_hang
set id_loaikhach=1
where id_khachhang in (
	select id_khachhang
    from danhsach2
);
-- ----------------------------task19-------------------------------------
update dich_vu_di_kem
set gia=gia*10
where id_dichvudikem in(
select a.id_dichvudikem
from hop_dong_chi_tiet a inner join hop_dong cont on  cont.id_hopdong=a.id_hopdong
where year(cont.ngay_hopdong)=2019
group by a.id_dichvudikem
having count(a.id_dichvudikem)>10
);
-- ------------------------task20-----------------------------------------
select id_khachhang,ten_khachhang,email,sdt_khachhang,ngaysinh,diachi
from khach_hang
union all
select id_nhanvien,ten_nhanvien,email,sdt,ngay_sinh,dia_chi
from nhan_vien;
 -- --------------------- bonus-----------------------------------------
 create table mytable2(
 id_hopdong int, 
 tong_tien int,
 foreign key (id_hopdong) references hop_dong(id_hopdong));
  drop trigger update_tong_tien;
 delimiter //
create trigger update_tong_tien	
after insert
on hop_dong  for each row
begin
 set @tong_tien= (
 select  (dv.chiphithue+ifnull(k.gia*d.so_luong),0) as tong_tien
 from hop_dong  
 inner join dich_vu dv on dv.id_dichvu = new.id_dichvu
 left join hop_dong_chi_tiet d on d.id_hopdong=new.id_hopdong
 left join dich_vu_di_kem k on k.id_dichvudikem=d.id_dichvudikem
where hop_dong.id_hopdong = new.id_hopdong
 );
 insert into mytable2
    values
    (new.id_hopdong,@tong_tien);
 end;
 // delimiter ;
 
 select * from mytable2;
 -- -------------------- task21-----------------------------------
 drop view v_nhanvien;
create view v_nhanvien as
select nv.id_nhanvien,nv.ten_nhanvien,nv.dia_chi
from nhan_vien nv inner join hop_dong hd on nv.id_nhanvien=hd.id_nhanvien
where nv.dia_chi='Hai chau' and hd.ngay_hopdong='2019-12-12';
-- -------------------task22--------------------------------------
update nhan_vien
set dia_chi='Lien chieu'
where id_nhanvien in (select id_nhanvien from v_nhanvien);
-- --------------------task23--------------------------------------
delimiter //
create  procedure delete_custumer(id int)
begin
delete from khach_hang
where id_khachhang=id;
end;
delimiter ;
-- ----------------- task 24-------------------------------------
delimiter //
create procedure insert_hopdong(id_nhanvien int,id_khachhang int,id_dichvu int,ngay_hopdong date,ngay_ketthuc date,tien_dat_coc int)
begin
insert into hop_dong(id_nhanvien,id_khachhang,id_dichvu,ngay_hopdong,ngay_ketthuc,tien_dat_coc)
values
(id_nhanvien,id_khachhang,id_dichvu,ngay_hopdong,ngay_ketthuc,tien_dat_coc);
end;
delimeter ;
-- ------------------------task26-------------------------------------
drop
delimiter //
create trigger update_ngay_ketthuc
after update
on hop_dong for each row
begin
set @ngay_ketthuc=(
select if(daydiff(new.ngay_ketthuc-ngay_hopdong)>=2,new.ngay_ketthuc,"Ngày kết thúc hợp đồng phải lớn hơn ngày làm hợp đồng ít nhất là 2 ngày")
from hop_dong);

  update hop_dong
  set ngay_ketthuc=@ngay_ketthuc;
  end;
    // delimiter ;
