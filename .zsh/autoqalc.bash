if typeset -f command_not_found_handle > /dev/null; then
    eval original_"$(declare -f command_not_found_handle)"
else
    original_command_not_found_handle() {
        "$1: command not found"
    }
fi


command_not_found_handle() {
    if [[ $1 =~ ^[0-9] ]]; then
        echo "autoqalc: command not found, using qalc instead since input starts with a number..."
        qalc "$@"
    else
        original_command_not_found_handle "$@"
    fi
}

