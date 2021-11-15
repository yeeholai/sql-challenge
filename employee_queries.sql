--List the following details of each employee: employee number, last name, first name, sex, and salary.
select emp_no, last_name, first_name, sex, salary from employees
join salaries
using(emp_no);

--List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date from employees
where hire_date::text like '1986%';

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dept_no, dept_name, emp_no, last_name, first_name from department_managers
join departments
using(dept_no)
join employees
using(emp_no);

--List the department of each employee with the following information: employee number, last name, first name, and department name.
select emp_no, last_name, first_name, dept_name from employees
join department_employees
using(emp_no)
join departments
using(dept_no)
order by emp_no ASC;

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex from employees
where first_name = 'Hercules' and last_name like 'B%'
order by emp_no ASC;

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
select emp_no, last_name, first_name, dept_name from employees
join department_employees
using(emp_no)
join departments
using(dept_no)
where dept_name = 'Sales'
order by emp_no ASC;

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select emp_no, last_name, first_name, dept_name from employees
join department_employees
using(emp_no)
join departments
using(dept_no)
where dept_name = 'Sales' or dept_name = 'Development'
order by emp_no ASC;

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(last_name) from employees
group by last_name;