create table mem (
	id varchar2(10),
	name varchar2(15),
	pwd  varchar2(20),
	phone  varchar2(15)
);

insert into mem values('SOMI', '�̼ҹ�', '1234', '010-1234-1234');
insert into mem values('SANG', '�����', '4321', '010-1234-1234');
insert into mem values('LINE', '�����', '1122', '010-1234-1234');

select * from mem;

commit

alter table mem add constraint pk_mem primary key(id);