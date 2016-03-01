class String 


  def self.create_colors
    Object.create_more_colors
    colors.select do |key,value|
        class_methods = %Q{
           def #{key}
               puts \"\e[#{value}m\#\{self\}\e[0m\"
           end
        }
      class_eval(class_methods)
    end
  end

  def self.sample_colors
    colors.select do |k,v|
      puts "this is \e[#{v}m#{k}\e[0m"
    end
  end
end

class Object

  def colors
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
  def create_more_colors
    colors.select do |key,value|
        instance_methods = %Q{
           def #{key}(string)
               puts \"\e[#{value}m\#\{string\}\e[0m\"
           end
        }
      class_eval(instance_methods)
    end
  end
end

String.create_colors
#require 'colorizr'
puts String.colors
puts String.sample_colors
puts "John".red
puts "Paul".green
puts "George".blue
puts "Ringo".yellow
puts red("hellothere")




#puts blue("hello blue")










