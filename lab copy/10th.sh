echo "Enter the basic salary:"
read basic_salary
da=$((basic_salary * 60 / 100))
hra=$((basic_salary * 30 / 100))
gross_salary=$((basic_salary + da + hra))
echo "Gross salary is: $gross_salary"