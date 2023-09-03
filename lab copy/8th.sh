is_prime() {
    number=$1
    if [ $number -lt 2 ]; then
        return 1
    fi
    for ((i=2; i*i<=number; i++)); do
        if [ $((number % i)) -eq 0 ]; then
            return 1
        fi
    done
    return 0
}
read -p "Enter a number: " input
if is_prime "$input"; then
    echo "$input is a prime number."
else
    echo "$input is not a prime number."
fi