class Greeter

  def initialize(name)
    @name = name
  end

  def hello
    return "hello! " + @name
  end

  def good_bye
    return "good bye!"
  end
end 


class Person
  def initialize(first_name, surname)
    @first_name = first_name
    @surname = surname
  end

  def full_name
    @test_var = "Foo"
    return "#{@first_name} #{@surname}"
  end

  def Foo
    puts @test_var
  end
end

alan_turing = Person.new("Alan", "Turing")

puts alan_turing.full_name