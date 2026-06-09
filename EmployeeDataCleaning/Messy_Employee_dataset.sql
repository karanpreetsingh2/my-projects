SELECT * FROM new_schemahgf.messy_employee_dataset;
describe new_schemahgf.messy_employee_dataset;
select * from new_schemahgf.messy_employee_dataset
limit 20;
select count(distinct Employee_ID)
from new_schemahgf.messy_employee_dataset;
select Employee_ID, count(*)
from new_schemahgf.messy_employee_dataset
group by Employee_ID
having count(*)>1;


select count(distinct First_Name,Last_Name , Department_Region ,Salary)
from new_schemahgf.messy_employee_dataset;

select count(distinct Email)
from new_schemahgf.messy_employee_dataset; 
select email, count(*)
from new_schemahgf.messy_employee_dataset
group by email
having count(*)>1;
select * from new_schemahgf.messy_employee_dataset where Email= '' ;

select distinct Join_Date
from new_schemahgf.messy_employee_dataset; 
select *
from new_schemahgf.messy_employee_dataset
where Join_Date regexp'[#$*&@]'; 
select count(*)
from new_schemahgf.messy_employee_dataset
where str_to_date(Join_Date ,'%m,/%d,/%y') is null;

select count(*)
from new_schemahgf.messy_employee_dataset;
select count(distinct First_Name)
from new_schemahgf.messy_employee_dataset;
select * from new_schemahgf.messy_employee_dataset where First_Name is null;
select * from new_schemahgf.messy_employee_dataset where trim(First_Name)='';
select distinct First_Name from new_schemahgf.messy_employee_dataset;


select count(distinct Last_Name)
from new_schemahgf.messy_employee_dataset;
select * from new_schemahgf.messy_employee_dataset where Last_Name is null;
select * from new_schemahgf.messy_employee_dataset where trim(Last_Name)='';
select distinct Last_Name from new_schemahgf.messy_employee_dataset;


SELECT * FROM new_schemahgf.messy_employee_dataset;
select * from new_schemahgf.messy_employee_dataset where Age= '' ;
update new_schemahgf.messy_employee_dataset set Age = 25 where Age='0';
update new_schemahgf.messy_employee_dataset set Age = 0 where Age='';
select * from new_schemahgf.messy_employee_dataset where Age= '25' ;


update new_schemahgf.messy_employee_dataset set Phone = 0 where char_length(Phone)<10;
select count(*)
from new_schemahgf.messy_employee_dataset;

select distinct Performance_Score
from new_schemahgf.messy_employee_dataset;

select distinct Remote_Work
from new_schemahgf.messy_employee_dataset;