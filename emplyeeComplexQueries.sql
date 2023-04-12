USE employees;

SELECT 
    titles.title, SUM(employees.emp_no) AS 'TOTAL EMPLOYEES'
FROM
    titles
        JOIN
    employees ON employees.emp_no = titles.emp_no
GROUP BY titles.title;

SELECT 
    CONCAT(employees.last_name , employees.first_name) AS 'EMPLOYEE NAME',
    departments.dept_no,
    departments.dept_name,
    salaries.salary
FROM
    employees
        JOIN
    dept_emp ON dept_emp.emp_no = employees.emp_no
        JOIN
    departments ON dept_emp.dept_no = departments.dept_no
        JOIN
    salaries ON salaries.emp_no = employees.emp_no
GROUP BY employees.last_name;

SELECT 
    departments.dept_no,
    departments.dept_name,
    SUM(employees.emp_no) AS 'TOTAL EMPLOYEES'
FROM
    employees
        JOIN
    employees.dept_emp ON dept_emp.emp_no = employees.emp_no
        JOIN
    departments ON dept_emp.dept_no = departments.dept_no
GROUP BY departments.dept_name
ORDER BY departments.dept_name ASC; 

SELECT 
    employees.emp_no,
    CONCAT(employees.last_name,
            employees.first_name) AS 'EMPLOYEE NAME',
    salaries.salary
FROM
    employees
        JOIN
    salaries ON employees.emp_no = salaries.emp_no
WHERE
    salaries.salary >= 158220;
    
SELECT 
    employees.emp_no,
    CONCAT(employees.last_name,
            employees.first_name) AS 'EMPLOYEE NAME',
    salaries.salary
FROM
    employees
        JOIN
    salaries ON employees.emp_no = salaries.emp_no
WHERE
    salaries.to_date = '9999-01-01';
    
SELECT 
    employees.emp_no,
    CONCAT(employees.last_name,
            employees.first_name) AS 'EMPLOYEE NAME',
    departments.dept_name,
    titles.title
FROM
    employees
        JOIN
    employees.dept_emp ON dept_emp.emp_no = employees.emp_no
        JOIN
    departments ON dept_emp.dept_no = departments.dept_no
        JOIN
    titles ON titles.emp_no = employees.emp_no
WHERE
    titles.title = 'Senior Engineer';