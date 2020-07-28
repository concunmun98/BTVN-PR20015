color = "red"
def method1
	color = 192
	puts ("color in method:#{color}")
end	
def method2
	color = 255
	puts ("color in method: #{color}")
end	

method1
method2
puts "color value out methos: #{color}"
