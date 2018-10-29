drop db if exists hostel_allocation;
create db hostel_allocation;
use hostel;
create table student(
  name varchar(50) not null,
  admission_no varchar(50) ,
  primary key(admission_no),
  year int not null,
  email varchar(50),
  distance int not null,
  mark int not null,
  caste varchar(50) not null,
  foreign key(caste) references reservation(caste),
  rank int,
  hostel_id int,
  foreign key(hostel_id) references hostel(id)
);
create table hostel(
  id int ,
  capacity int,
  warden_name varchar(50),
  primary key(id)
);
create table reservation(
  caste varchar(50),
  res_percentage int,
  primary key(caste)
);
insert into hostel(id , capacity ,warden_name) values ('1','120','sindhu miss');
insert into hostel(id , capacity ,warden_name) values ('2','120','shibli miss');
insert into reservation(caste,res_percentage) values('')
