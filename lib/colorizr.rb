class String
  def self.colors
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



  def self.create_colors
    colors.select do |key,value|
        colorful_methods = %Q{
           def #{key}
             puts \"\e[#{value}m\#\{self\}\e[0m\"
           end
        }
        color_method = %Q{
           def #{key} string
             puts \"\e[#{value}m\#\{string\}\e[0m\"
           end
        }

        puts color_method
    class_eval(colorful_methods)
    #instance_eval(color_method)
    end
  end

  def self.sample_colors
    self.create_colors
    colors.select do |k,v|
      puts "This is " + "#{k}.#{k}"
      # module_eval("\"This is\" + \"#{k}\".#{k}")
      #class_eval("\"This is\" + \"#{k}\".#{k}")
      #instance_eval("\"This is\" + \"#{k}\".#{k}")
    end
  end
end

String.create_colors
puts String.methods.include?(:red)


#require 'colorizr'

puts String.colors
puts String.sample_colors
puts "John".red
puts "Paul".green
puts "George".blue
puts blue("hello blue")
puts "Ringo".yellow










