calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3
    interest=$((principal * rate * time / 100))
    echo $interest
}
read -p "Enter the principal amount: " principal
read -p "Enter the interest rate: " rate
read -p "Enter the time period (in years): " time
simple_interest=$(calculate_simple_interest $principal $rate $time)
echo "The simple interest is: $simple_interest"
