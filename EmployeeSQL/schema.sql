-- create tables and constraints 
create table departments(
	dept_no varchar(10) not null,
	dept_name varchar(30) not null, 
	primary key(dept_no)
);

create table dept_emp(
	emp_no integer not null,
	dept_no varchar(10) not null,
	from_date date not null,
	to_date date not null,
	foreign key (dept_no) references departments(dept_no)
);

create table dept_manager(
	dept_no varchar(10) not null,
	emp_no integer not null,
	from_date date not null,
	to_date date not null,
	foreign key (dept_no) references departments(dept_no)
);

create table employees(
	emp_no integer not null,
    birth_date date not null,
	first_name varchar(30) not null,
	last_name varchar(30) not null,
	gender varchar(1) not null,
	hire_date date not null,
	primary key (emp_no)
    
);

create table salaries(
	emp_no integer not null,
	salary integer not null,
	from_date date not null,
	to_date date not null,
	foreign key (emp_no) references employees(emp_no)
);

create table titles(
	emp_no integer not null,
	title varchar(30) not null,
	from_date date not null,
	to_date date not null,
	foreign key (emp_no) references employees(emp_no)
);	