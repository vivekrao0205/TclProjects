# Password Generator in Tcl
# Created while learning Tcl scripting
# Procedure to generate a random password
proc generatePassword {length} {
    # Characters to use in password
    set chars "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()"

    set password ""
    set charCount [string length $chars]

    # Loop to generate password
    for {set i 0} {$i < $length} {incr i} {
        set randomIndex [expr {int(rand() * $charCount)}]
        append password [string index $chars $randomIndex]
    }

    return $password
}

# Ask user for password length
puts -nonewline "Enter password length: "
flush stdout
gets stdin length

# Check if input is a number
if {[string is integer -strict $length] && $length > 0} {
    set result [generatePassword $length]
    puts "Generated Password: $result"
} else {
    puts "Please enter a valid number!"
}