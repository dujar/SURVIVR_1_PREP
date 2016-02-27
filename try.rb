
def String.colors
  colors = {
    :red => 31,
    :green => 32,
    :yellow => 33,
    :blue => 34,
    :pink => 35,
    :light_blue => 94,
    :white => 97,
    :light_grey => 37,
    :black => 30}
  return colors
  end

	def red
   puts "\e[31m#{self}\e[0m"
	end
	def red string
   puts "\e[31m#{string}\e[0m"
	end

#"hellllo".red
#ref("hello")


