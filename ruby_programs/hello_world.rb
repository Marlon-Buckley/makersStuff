puts "How old are you?"
personsAge = gets.chomp

def howOld(age)
    if age.to_i > 25
        "You are #{age} years old!, that's pretty old!"
    else
        "You are #{age} years old!, that's pretty young!"
    end
end

puts howOld(personsAge)


