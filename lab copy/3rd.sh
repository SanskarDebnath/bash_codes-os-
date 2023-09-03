display_menu() {
    echo "Menu:"
    echo "1. Date"
    echo "2. Who"
    echo "3. List files"
    echo "4. Print current directory"
    echo "0. Exit"
}
perform_action() {
    choice=$1
    case $choice in
        1)
            echo "Current date: $(date)"
            ;;
        2)
            echo "Users currently logged in:"
            who
            ;;
        3)
            echo "Files in the current directory:"
            ls
            ;;
        4)
            echo "Current directory: $(pwd)"
            ;;
        0)
            echo "Exiting..."
            exit
            ;;
        *)
            echo "Invalid choice. Please try again."
            ;;
    esac
}
while true; do
    display_menu
    read -p "Enter your choice (0-4): " choice
    perform_action "$choice"
    echo
done