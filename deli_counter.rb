def line(deli)
  if deli.length == 0
    puts "The line is currently empty."
  elsif deli.length >= 1
    deli.each_with_index do |customer, position|
      line_string = "The line is currently:"
      line_string += " #{position + 1}. #{customer}"
    end
    puts line_string 
  end
end

# def take_a_number(deli, new_customer)
#   puts "Welcome #{new_customer}. You are number #{(katz_deli.length + 1).to_s} in line."
# end

# def now_serving()
#   puts "Currently serving #{katz_deli[0]}"
#   deli.pop
#   puts "There is nobody waiting to be served!" if katz_deli.length == 0
# end
