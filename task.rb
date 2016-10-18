
direction_hash = Hash.new
direction_hash["X"] = 0
direction_hash["Y"] = 0

puts "Enter instruction in format 'DIRECTION STEPS' e.g 'DOWN 3' and press enter"
puts "Type 'q' when complete"
movement = gets.chomp
while movement != "q"
  direction = movement.split(" ")

  if direction[0].upcase == "UP"
    direction_hash["Y"] += direction[1].to_i

  elsif direction[0].upcase == "DOWN"
    direction_hash["Y"] -= direction[1].to_i

  elsif direction[0].upcase == "LEFT"
    direction_hash["X"] -= direction[1].to_i

  elsif direction[0].upcase == "RIGHT"
    direction_hash["X"] += direction[1].to_i

  else
    puts "Incorrect input"

  end

  movement = gets.chomp
end

direction_hash.each { |key,value|
  puts "#{key} : #{value}"
}
puts "calculating distance"

sum_of_squares = direction_hash["Y"]**2 + direction_hash["X"]**2

distance = Math.sqrt(sum_of_squares).to_i

puts "distance is #{distance}"
