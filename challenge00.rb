# Ruby program to calculate the after tax value of a specific dollar amount

# Constants
GST_RATE = 0.05
PST_RATE = 0.07

# Ask the user to input the subtotal
print "Enter the subtotal: "
sub_total = gets.chomp.to_f

# Calculate the taxes
gst = sub_total * GST_RATE
pst = sub_total * PST_RATE

# Calculate the grand total
grand_total = sub_total + gst + pst

# Output the results
puts "Subtotal: $#{'%.2f' % sub_total}"
puts "PST: $#{'%.2f' % pst} - 7%"
puts "GST: $#{'%.2f' % gst} - 5%"
puts "Grand Total: $#{'%.2f' % grand_total}"

# Print a message based on the grand total
if grand_total <= 5.00
  puts "Pocket Change"
elsif grand_total > 5.00 && grand_total < 20.00
  puts "Wallet Time"
else
  puts "Charge It!"
end