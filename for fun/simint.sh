read -p "Enter the principal amount: " principal
read -p "Enter the rate of interest (in percentage): " rate
read -p "Enter the time period (in years): " time
interest=$((principal * rate * time / 100))
echo "Simple Interest: $interest"
