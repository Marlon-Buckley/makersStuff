personHash = {
  'name' => 'alex',
  'pets' => [
    {'name' => 'arthur', 'animal' => 'cat'},
    {'name' => 'judith', 'animal' => 'dog'},
    {'name' => 'gwen', 'animal' => 'goldfish'}
  ],
  'addresses' => [
    {'name' => 'work', 'building' => '50', 'street' => 'Comercial Street'},
    {'name' => 'home', 'building' => '10', 'street' => 'South Street'}
  ]
}

personHash2 = {
  'name' => 'Jo',
  'pets' => [
    {'name' => 'Paulo', 'animal' => 'cat'},
    {'name' => 'Edith', 'animal' => 'dog'},
    {'name' => 'Pawel', 'animal' => 'goldfish'},
    {'name' => 'Dave', 'animal' => 'bear'}
  ],
  'addresses' => [
    {'name' => 'work', 'building' => '12', 'street' => 'Whitehall'},
    {'name' => 'home', 'building' => '1', 'street' => 'North Lane'}
  ]
}


class Person
  
  def initialize(complexHash)
    @complexHash = complexHash
    puts "-----------"
  end

  def work_adress
    workAddress = @complexHash["addresses"].find { |key| key["name"] == "work" }
    "#{workAddress["building"]} #{workAddress["street"]}"
  end

  def work_adress2
    @complexHash.each do |key, value|
      if key == "addresses"
        value.each do |hash_in_array|
          if hash_in_array["name"] == "work"
            return "#{hash_in_array["building"]} #{hash_in_array["street"]} " 
          end
        end
      end
    end
  end

  def home_address
    homeAddress = @complexHash["addresses"].find { |key| key["name"] == "home" }
    "#{homeAddress["building"]} #{homeAddress["street"]}" 
  end

#pets hould return
# Alex has 3 pets
# - a cat called Arthur
# - a dog called Judith
# - a goldfish called Gwen

  def pets 
    petList = ""
    for i in @complexHash["pets"] do
      petList += ("- a #{i["animal"]} called #{i["name"]}\n")
    end
    "#{@complexHash["name"]} has #{@complexHash["pets"].count} pets\n#{petList}"
  end
end

myPerson = Person.new(personHash2)

puts myPerson.pets



#puts "#{personHash2["name"]} has #{personHash2["pets"].count} pets"

petzList = ""

# for i in personHash2["pets"] do
#   petzList.concat("- a #{i["animal"]} called #{i["name"]}\n")
# end











