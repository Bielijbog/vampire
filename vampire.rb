#Version 2.0
#Option to enter product and return fangs
#error checking

def vampire fangs, product
  fangsort = fangs.join.to_s.split(//).sort
  productsort = product.to_s.split(//).sort

  if fangsort == productsort
    return vampire = true
  else
    return vampire = false
  end
end

#Start / Input
puts("Vampires? Here maybe?")
puts("Enter your fangs seperated by spaces:")

fangs = gets.chomp.split(" ").map{ |x| x.to_i}
product = fangs.inject{ |result, element| result * element }

#Result
if fangs[2] != nil
  puts("#{fangs[0]} * #{fangs[1]} * #{fangs[2]} = #{product}")
else
  puts("#{fangs[0]} * #{fangs[1]} = #{product}")
end

if vampire(fangs, product) == true
  puts("This is a clear Vampire!!")
else
  puts("No Vampire here!!")
end
