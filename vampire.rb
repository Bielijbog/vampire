#Version 1.0
#Basic mode - enter 2 number per prompt
#Need to:
#Accept more input values
#Option to enter product and return fangs
#Accept all input on one line

def vampire fangs, product
  fangsort = fangs.to_s.split(//).sort
  productsort = product.to_s.split(//).sort

  if fangsort == productsort
    return vampire = true
  else
    return vampire = false
  end
end

puts("Vampires?")
puts("Enter your first number:")
fangone = gets.chomp
puts("Enter your second number:")
fangtwo = gets.chomp

fangs = fangone + fangtwo
product = fangone.to_i * fangtwo.to_i


puts("#{fangone} * #{fangtwo} = #{product}")
if vampire(fangs, product) == true
  puts("This is a clear Vampire!!")
elsif
  puts("No Vampire here!!")
end
