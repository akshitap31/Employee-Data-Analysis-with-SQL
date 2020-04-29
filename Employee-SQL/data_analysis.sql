--1. List the following details of each employee: employee number, last name, first name, sex, and salary.
Select e.employee_id, e.last_name, e.first_name, e.sex, s.salary
from employees as e
inner join salary as s
on e.employee_id=s.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where date_part('year', hire_date)=1986;

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select d.dept_no, ds.dept_name, e.employee_id, e.last_name, e.first_name
from dept_manager as d
inner join departments as ds on ds.dept_id=d.dept_no
inner join employees as e on d.emp_no=e.employee_id

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
Select e.employee_id, e.last_name, e.first_name, ds.dept_name
from employees as e
inner join dept_employee as d on d.emp_id=e.employee_id
inner join departments as ds on ds.dept_id= d.dept_id;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex
from employees
where first_name='Hercules'
and last_name like 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
Select e.employee_id, e.last_name, e.first_name, ds.dept_name
from employees as e
inner join dept_employee as d on d.emp_id=e.employee_id
inner join departments as ds on ds.dept_id= d.dept_id
where ds.dept_name='Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
Select e.employee_id, e.last_name, e.first_name, ds.dept_name
from employees as e
inner join dept_employee as d on d.emp_id=e.employee_id
inner join departments as ds on ds.dept_id= d.dept_id
where ds.dept_name='Sales' or ds.dept_name='Development' ;

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) DESC;