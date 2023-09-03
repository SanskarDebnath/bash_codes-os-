read -p "Enter a number: " number
factorial=1
for (( i = 1; i <= number; i++ ))
do
    factorial=$((factorial * i))
done
echo "Factorial of $number is: "$factorial