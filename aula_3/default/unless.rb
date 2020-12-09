product_status = 'closed'

unless product_status == 'open'
    check_change = 'can'
else 
    check_change = 'can\'t'
end

puts "You #{check_change} change this product!"