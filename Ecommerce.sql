create database ecommerce;
use ecommerce ;
create table `product`(
id int auto_increment primary key,
name varchar(100),
title varchar(50),
image varchar(1000),
price float ,
description varchar(1000),
quantity int , 
categoryId int
);

create table `category`(
id int auto_increment primary key,
name varchar(1000)
);
create table `user`(
`id` int not null auto_increment primary key,
`username` varchar(255),
`password` varchar(255),
`enable` int 
);
/*insert to user table*/
insert into `user` values(1,'customer1','12345','1');
insert into `user` values(4,'admin','12345','1');
/*----------------------------------------------*/
create table `role`(
`id` int not null auto_increment primary key,
`name` varchar(200)
);
/*insert to user table*/
insert into `role` values (1 ,'USER');
insert into `role` values (2 ,'ADMIN');
/*----------------------------------------------*/
create table `user_role`(
`user_id` int not null default '0' ,
`role_id` int not null default '0',
primary key(`user_id`, `role_id`),
key `Fk_user_role_role` (`role_id`),
constraint `FK_user_role_user` foreign key(`user_id`) references `user`(`id`),
constraint `FK_user_role_role` foreign key(`role_id`) references `role`(`id`)
 );
 /*insert to user table*/
insert into `user_role` values (1,1);
insert into `user_role` values (4 ,2);
/*----------------------------------------------*/
 create table `customer`(
 `id` int auto_increment primary key not null,
 `user_id` int ,
 `full_name` varchar(255) ,
 `email` varchar(255),
 `birthday` date,
 `phone_number` varchar(255),
 `gender` varchar(255),
 `address` varchar(255),
 `brand_logo` varchar(255),
 key `FK_Customer_id` (`user_id`),
 constraint `Fk_user_id` foreign key(`user_id`) references `user`(`id`)
 );
 /*insert to user table*/
insert into `customer` values(1001 , 1 ,"Nguyen Van An" ,"an@gamil.com","1999-12-02" ,"092212223" ,"men" ,"92 Quang Trung" ,"a.png");
insert into `customer` values(1004 , 4 ,"Nguyen Van Cam" ,"camnguyen2603@gmail.com","1999-12-02" ,"092212223" ,"Quang Ngai","men"  ,"c.png");
/*----------------------------------------------*/