use test;

select * from empy e,dept d where e.deptno in(select deptno from dept where loc='new york') and (grade between 3 and 5) and job!='president' and
sal>(select max(sal)from empy where deptno =(select deptno from dept where loc='chicago')and
 job  in('manager','salesman') and mgr not in(select empno from emp where ename='king'));
select *from empy e,dept d where grade between 3 and 5 and d.loc='new york' and job!='president' and 
sal>(select max(sal)from empy where deptno in(select deptno from dept where loc='chicago')and
 job  in('manager','salesman') and mgr not in(select empno from emp where ename='king'));
select deptno from dept where loc='chicago';
 
 select * from empy where job in(select job from empy where  hiredate in(select min(hiredate) from empy where year(hiredate)=1981));
 
 select * from empy where hiredate=(select min(sal) from empy where mgr in(select empno from empy where ename='king')) and grade>3;
 select * from empy where empno in(select mgr from empy)
 

 select *,sal*12 as annual from empy group by job having hiredate like '1981-__-__'
 Select *,sum(SAL) from empy where grade=3;
 
select * from empy where sal >(select avg(sal)from empy where deptno=10) and deptno=20
select *,count(job) from empy group by job,deptno;
select e.mgr,count(*) from empy e,empy e2 where e.empno=e1.mgr order by  mgr

