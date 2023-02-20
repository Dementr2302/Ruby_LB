puts "Hi, #{username}, favorite language?"
case STDIN.gets.chomp
	when "ruby"
		puts "Podliza"
	when "c++"
		puts "low"
	when "f#"
		puts "short and difficult"
	when "Prolog"
		puts "old"
	when "PYTHON"
		puts "GOOD BOY"			
	else
		puts "what's this?"
end
