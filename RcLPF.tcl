#RC Low-Pass Filter Cutoff Frequency Calculator
#Resistance (R) in ohms
puts -nonewline "Enter Resistance (R) in ohms: "
flush stdout
gets stdin R

#Capacitance (C) in farads
puts -nonewline "Enter Capacitance (C) in farads (e.g., 0.000001 for 1uF): "
flush stdout
gets stdin C

# If inputs are empty or zero, showing error
if {$R <= 0 || $C <= 0} {
    puts "Error: R and C must be greater than zero!"
    exit
}

#cutoff frequency: fc = 1 / (2πRC)
set pi 3.14159265359
set fc [expr {1 / (2 * $pi * $R * $C)}]

#result
puts "\n--- RC Low-Pass Filter Result ---"
puts "Resistance (R): $R ohms"
puts "Capacitance (C): $C farads"
puts "Cutoff Frequency (fc): $fc Hz"
puts "---------------------------------"
