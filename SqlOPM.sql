
create table Employee(
EmpId int primary key,
Ename varchar(20),
Email  varchar(20),
Contact int,
Mgr int references Mgr(Mgrid),
Deptno int references Dept(Deptno),
Pid int references Project(Pid)
);

create table Mgr(
Mgrid int primary key,
Mname varchar(20),
Email  varchar(20),
Contact int,
Empid int references Employee(Empid),
Deptno int references Dept(Deptno),
Pid int references Project(Pid)
);

create table Dept(DeptNo int primary key, Dname varchar (20),Descr varchar(20));









 