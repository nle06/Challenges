# Constants for tax rates
GST_RATE = 0.05
PST_RATE = 0.07

# Request user input for subtotal
puts "Please enter the subtotal:"
sub_total = gets.chomp.to_f

# Calculate tax amounts
gst = sub_total * GST_RATE
pst = sub_total * PST_RATE

# Calculate grand total
grand_total = sub_total + gst + pst

# Output results
puts "Subtotal: $#{'%.2f' % sub_total}"
puts "PST: $#{'%.2f' % pst} - #{(PST_RATE * 100).to_i}%"
puts "GST: $#{'%.2f' % gst} - #{(GST_RATE * 100).to_i}%"
puts "Grand Total: $#{'%.2f' % grand_total}"

# Determine and display the appropriate message based on the grand total
if grand_total <= 5
  puts "Pocket Change"
elsif grand_total > 5 && grand_total < 20
  puts "Wallet Time"
else
  puts "Charge It!"
end