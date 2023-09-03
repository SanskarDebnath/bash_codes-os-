read -p "Enter the first number: " num1
read -p "Enter the second number: " num2
read -p "Enter the operator (+, -, *, /): " operator
result=0
case $operator in
    "+")
        result=$((num1 + num2))
        ;;
    "-")
        result=$((num1 - num2))
        ;;
    "*")
        result=$((num1 * num2))
        ;;
    "/")
        result=$(echo "scale=2; $num1 / $num2" | bc)
        ;;
    *)
        echo "Invalid operator!"
        exit 1
        ;;
esac
echo "Result: $result"