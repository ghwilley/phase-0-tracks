#METHOD CODE
def calculate(int1,op_str,int2)
  op_str = op_str.to_s
  result = int1.send(op_str, int2)
end


#DRIVER CODE
calc_array = []

def calc_store
    puts "Please enter a calculation, type \'done\' to exit"
    calculation = nil
      while calculation != 'done'
      calculation = gets.chomp
        if calculation.length != 3
        puts'error'
        elsif calculation != 'done'
          calculation.split('')
          int1 = calculation[0].to_i
          op_str = calculation[1].to_s
          int2 = calculation[2].to_i

          calculate(int1,op_str,int2)
          yield(int1,op_str,int2,calculate(int1,op_str,int2))
        end
      end

end

calc_store { |int1,op_str,int2,result| 
    calc_array.push("#{int1} #{op_str} #{int2} = #{result}")
  }

puts "calculations performed:"

p calc_array