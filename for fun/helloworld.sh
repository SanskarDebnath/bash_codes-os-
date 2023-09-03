read -p "Enter the basic salary: " basic_salary
da=$((basic_salary * 40 / 100))
hra=$((basic_salary * 20 / 100))
gross_salary=$((basic_salary + da + hra))
echo "Gross Salary: $gross_salary"