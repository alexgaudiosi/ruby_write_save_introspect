
# def creator
# file = File.new('./hello_from_ruby.txt' 'w')
# puts file.read
# file.close
# end

def input_to_file
	File.open('./hello_from_ruby.txt', 'a') do |file|
		puts 'Enter text'
		user_input = gets.chomp.to_s
		puts 'Save/read/introspect'
		save = gets.chomp.to_s
		if save == "save"
			file.puts user_input

	end
	return save
end

end


def read_file(save)
	File.open('./hello_from_ruby.txt', 'r') do |file_read|
		if save == "read"
			puts file_read.read 
		end
	end
end

def print_file(save)
	File.open('./creator', 'r') do |read_file|
		if save == "introspect"
			puts read_file.read
		end
	end
end



save = input_to_file
read_file(save)
print_file(save)
