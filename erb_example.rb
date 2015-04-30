require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

template_2 = ERB.new "The value of 2x is: <%= x*2 %>"
puts template_2.result(binding)

template_sqr = ERB.new "The squared value of x is: <%= x**2 %>"
puts template_sqr.result(binding)

template_even = ERB.new "x is an <%= x % 2 == 0 ? 'even' : 'odd' %> number" 
puts template_even.result(binding)

guitars = ["Fender", "Gibson", "Rickenbaker", "Thorndal"]
template_guitars = ERB.new "My favourite guitars are: <%= guitars.join(', ') %>"
puts template_guitars.result(binding)

