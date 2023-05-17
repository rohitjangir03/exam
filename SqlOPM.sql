
create table Employee(
EmpId int primary key,
Ename varchar(20),
Email  varchar(20),
Contact int,
Mgr int references PMgr(Mgrid),
Deptno int references Dept(Deptno),
Pid int references Project(Pid)
);

create table PMgr(
Mgrid int primary key,
Mname varchar(20),
Email  varchar(20),
Contact int,
Empid int references Employee(Empid),
Deptno int references Dept(Deptno),
Pid int references Project(Pid)
);

create table Dept(DeptNo int primary key, Dename varchar (20),Mgr int references PMgr(Mgrid));


 /*
3: StakeHolder
 Sid - Stakeholders Id  (PK)
 Sname - Stakeholder's Name
 Mgr - Alloted Manager   (FK)
 */
 create table StakeHolder(Sid int primary key, Sname varchar (20),Descr varchar(20));
 
 /*

4: Delivery Manager
 Did - Delvery Manager Id (PK)
 Dname - Delvery Manager Name
 Mgr - Manger's Id (FK)
 Location - location of Delvery Manager 
 Pid - ProjectId (FK)*/


 create table DMgr(Did int primary key, Dname 
 varchar (20),Location varchar(20),Pid int references Project(Pid),Mgr int references PMgr(Mgrid));
 
 /*
 Project 
 Pid - ProjectId (PK)
 Pname - Project Name
 Pdsc - Project Description
 userName - User / Company / Organization's Name
 status - Handled or Unhandled*/
 
 create table DMgr(Pid int primary key, Pname 
 varchar (20),Pdsc varchar(20),userName varchar(20),status varchar(20));
 
 