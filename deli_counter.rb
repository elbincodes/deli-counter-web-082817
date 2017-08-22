# Write your code here.


# katz_deli = []

# def line(arr)
#   if arr.length == 0
#     puts "The line is currently empty."
#   else
#       myStr = "The line is currently: "
#       count = 0
#       while count < arr.length
#         myStr = myStr + (count + 1).to_s + ". " + arr[count].to_s
#         count += 1
#       end
#       myStr
#   end
# end

def line(katz_deli)
  deli = []
  counter = 1
  if katz_deli == []
    puts "The line is currently empty."
  else
    katz_deli.each do |n|
      deli.push("#{counter}. #{n}")
      counter += 1
    end
    deli = deli.join(", ")
    deli = deli.delete(",")
    puts "The line is currently: "+ deli
  end
end


# def take_a_number(arr,name)
#   arr.push(name)
#   return "Welcome, #{name}. You are number #{arr.length + 1} in line"
# end

def take_a_number(katz_deli, name)
  counter = katz_deli.length + 1
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{counter} in line."
end


def now_serving(arr)
  if arr.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{arr.shift}."
  end

end
