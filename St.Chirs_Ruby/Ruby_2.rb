$global = 0
class C
	puts "in class : #{$global}"
	def my_method
		puts "in a method: #{$global}"

		$global = $global + 1
		$other_golbal = 3
	end
end		
C.new.my_method
puts "at top-level $global: #{$global}, $other_golbal: #{$other_golbal} "
