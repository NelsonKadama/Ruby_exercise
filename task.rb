
direction_hash = Hash.new
direction_hash["X"] = 0
direction_hash["Y"] = 0

puts "Enter instructions in format 'DIRECTION STEPS' e.g 'DOWN 3' seperated by a comma then press enter"
movement = gets.chomp
movement_array = movement.split(",")

movement_array.each {|element|
  direction = element.split(" ")

  if direction[0].upcase == "UP"
    direction_hash["Y"] += direction[1].to_i

  elsif direction[0].upcase == "DOWN"
    direction_hash["Y"] -= direction[1].to_i

  elsif direction[0].upcase == "LEFT"
    direction_hash["X"] -= direction[1].to_i

  elsif direction[0].upcase == "RIGHT"
    direction_hash["X"] += direction[1].to_i

  else
    puts "#{element} is an Incorrect input"

  end

}

direction_hash.each { |key,value|
  puts "#{key} : #{value}"
}
puts "calculating distance"

sum_of_squares = direction_hash["Y"]**2 + direction_hash["X"]**2

distance = Math.sqrt(sum_of_squares).to_i

puts "distance is #{distance}"
