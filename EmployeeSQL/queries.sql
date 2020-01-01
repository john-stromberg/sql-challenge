-- 1. list employee number, last name, first name, gender, and salary for each employee
select employees.emp_no,
    employees.last_name,
    employees.first_name,
    employees.gender,
    salaries.salary
from employees
inner join salaries ON
employees.emp_no = salaries.emp_no;

-- 2. list employees hired in 1986
select * from employees where hire_date between '1986-01-01' and '1986-12-31';

-- 3. list department number, department name, the manager's employee number, last name, 
-- first name, and start and end employment dates for each department manager
select dept_manager.dept_no,
    departments.dept_name,
    dept_manager.emp_no,
    employees.last_name,
    employees.first_name,
    employees.hire_date,
    dept_manager.to_date
from dept_manager 
join departments on departments.dept_no = dept_manager.dept_no
join employees on employees.emp_no = dept_manager.emp_no;

-- 4. list department of each employee with the following information: 
-- employee number, last name, first name, and department name
select employees.emp_no,
    employees.last_name,
    employees.first_name,
    departments.dept_name
from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on departments.dept_no = dept_emp.dept_no;

-- 5. list all employees whose first name is "Hercules" and last names begin with "B."
select * from employees where first_name = 'Hercules' and last_name like 'B%';

-- 6. list all employees in the Sales department, including their 
-- employee number, last name, first name, and department name.
select employees.emp_no,
    employees.last_name,
    employees.first_name,
    departments.dept_name
from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales';

-- 7. list all employees in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.
select employees.emp_no,
    employees.last_name,
    employees.first_name,
    departments.dept_name
from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join departments on dept_emp.dept_no = departments.dept_no
where departments.dept_name = 'Sales' or departments.dept_name = 'Development';

-- 8. in descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name
select last_name, count(last_name) as name_count
from employees
group by last_name
order by name_count desc;
