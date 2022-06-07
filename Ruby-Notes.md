
<p style="color: red; font-weight: bold">>>>>>  gd2md-html alert:  ERRORs: 0; WARNINGs: 0; ALERTS: 5.</p>
<ul style="color: red; font-weight: bold"><li>See top comment block for details on ERRORs and WARNINGs. <li>In the converted Markdown or HTML, search for inline alerts that start with >>>>>  gd2md-html alert:  for specific instances that need correction.</ul>

<p style="color: red; font-weight: bold">Links to alert messages:</p><a href="#gdcalert1">alert1</a>
<a href="#gdcalert2">alert2</a>
<a href="#gdcalert3">alert3</a>
<a href="#gdcalert4">alert4</a>
<a href="#gdcalert5">alert5</a>

<p style="color: red; font-weight: bold">>>>>> PLEASE check and correct alert issues and delete this message and the inline alerts.<hr></p>


Cheet sheet - https://www.codecademy.com/learn/learn-ruby/modules/learn-ruby-introduction-to-ruby-u/cheatsheet


# \\\RUBY NOTES///


## Everything is an object!

Everything in Ruby is an object! This means everything in ruby has built-in abilities called "methods' !



* High-level, meaning reading and writing Ruby is really easy—it looks a lot like regular English!
* Interpreted, meaning you don’t need a compiler to write and run Ruby. You can write it here at  Codecademy or even on your own computer (many are shipped with the Ruby interpreter built in—we’ll get to the interpreter later in this lesson).
* Object-oriented, meaning it allows users to manipulate data structures called objects in order to build and execute programs. We’ll learn more about objects later, but for now, all you need to know is everything in Ruby is an object.
* Easy to use. Ruby was designed by Yukihiro Matsumoto (often just called “Matz”) in 1995. Matz set out to design a language that emphasized human needs over those of the computer, which is why Ruby is so easy to pick up.


#### DATA TYPES


##### Numbers

Any number.


##### Strings

Text eg "I'm learning ruby"


##### Booleans

Something that is true or false (lower case) - Never use " or ' with Booleans, Ruby will think you're talking about a string!

-#- VARIABLES

Declaring a varible is done with = in Ruby. Just like Python. Varibales are used to store information that can be used later on. 

-#- MATH

Addition (+)

Subtraction (-)

Multiplication (*)

Division (/)

Exponentiation (**)

    Exponentiation raises one number (the base) to the power of the other (the exponent). 2**3 is the same as 2 * 2 * 2 = 8 

Modulo (%)

    Modulo returns the remainder of devision, 25 % 7 would be 4, since 7 goes into 25 three times with 4 as a remainder. 

-#- PUTS & PRINT

Puts prints thing to the screen adding a blank line aftewards

Print just prints whatever you give it to the screen. 

-#- THE INTERPRETER

This is the program that takes your code and runs it. 

-#- STRING METHODS

Methods are used by adding a . after the thing. If this is for a string, to calculate the length of it, do something like "i love espresso".length

    .length

    .reverse

    .upcase

    .downcase

    .capitalize "Capitalizes the first letter of a string, makes other letters"

    .capitalize! "By adding the ! this will modify the value contained in the variable"

    .gsub!(/s/, "th") "This will find any 's' and replace with 'th'in given string"

    .to_s this convers a value from number to string, useful when concatinating strings. 

    .sort sorts something alphebtically or numerically. 

    .upto & .downto can be used to return a range of numbers or letters eg my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each { |x| puts x if x.even? }

You can chain together methods like this name.downcase.reverse.upcase

-#- SINGLE LINE COMMENTS

We use a # for single line comments. 

-#- MULTI-LINE COMMENTS

Start the comment with =begin and end it with =end eg:

=begin

This 

Is a 

Multi-line 

Comment

=end

-#- NAMING CONVENTIONS / LOCAL VARIABLES

Local variables must start with a lowercase letter, words should be separated with an underscore eg my_words = 

You can start a variable with symbols like £$ or @ but its best not to, this will avoid 

confusion. 

-#- GETTING USER INPUT

We can get user input with the .gets method. The .gets method adds a black line after each bit of input. You can add chomp like gets.chomp to the gets method to remove this extra line. 

-#- STRING INTERPOLATION aka JOINING STRINGS

You can add the value of a variable buy using #{}, say you had a variable called monkey which = 'George'

You could then do something like puts "Your name is #{monkey}" the #{monkey} pulls the string value out of the monkey varible!

-#- CONTROL FLOW

    \\if// - takes an expression, which means something that evaluates to true or false. 

    if that result of the expression is true, ruby will execute the code below it

    if not, ruby skips this block of code

    Example = 

    if 1 &lt; 2 

        print "1 is indeed less than 2, hence this is being printed!"

    end

    Ruby doesn't care about whitespace, but people are encourged to indent code following an if by 2 spaces!

    end YOU MUST INCLUDE THIS at the end of an if statement!

    \\else//

    When the if statement is skipped, the 'else' can be run instead. 

    \\elseif//

    elsif allows you to add any number of else statements. 

    \\unless//

    To check if something is false rather than true, you could reverse an if/else but instead in Ruby you can use unless. Its like "if no

        Unless number.even?

          # runs if `number` is NOT even

        else

          # runs if `number` is even

        end    

        if not number.even?

          # runs if `number` is NOT even

        else

          # runs if `number` is even

        end

        /////\\\\\

        hungry = false

        unless hungry

          puts "I'm writing Ruby programs!"

        else

          puts "Time to eat!"

        end       

    \\\comparator aka equal to///

    == 

        We use = to assign values to varibales, so if we want to check if something is equal to something else we must instead use the comparator operator ==. Will evalute to true if two values are equal.

    !=

        This checks if two values are NOT equal. Will evalute to true if indeed the values are not equal. 

    &lt; 

        Checks if value is less than other

    &lt;=

        Checks if value is less than OR equal to

    >

        Checks if value is greater than

    >=

        Checks if greate than or equal to

    \\\And aka &&///

    && is one of the three boolean operators in Ruby (&&), (||), (!)

    && only reults in true when both expressions on either side of && are true.

        true && true # => true

        true && false # => false

        false && true # => false

        false && false # => false

    \\\or aka ||///

    The or operator || is called an Inclusive OR because it evalutes to true when one OR the other OR both expressions are true. 

        true || true # => true

        true || false # => true

        false || true # => true

        false || false # => false

    \\\not aka !///

    The final boolean operator is the not (!). ! makes true values valse and vice-versa. 

        !true # => false

        !false # => true

    \\\Combining boolean operators///

    When combining boolean opeators the operator within () is always evaluated BEFORE the stuff outise the ().

   \\\While Loops////

   A while loop checks to see if a certain confition is true, while it is, the loop keeps running. 

   \\\Until Loop///

   The until look is sort of like a backward while, for example:

        counter = 1

        until counter == 11

          puts counter

          

          counter = counter + 1

          

        end

    \\\More Assignment Operators +=///

    We don't have to use counter = counter + 1 to update a varibales value. We can instead user the += operator.

    \\\The For Loop///

    When you know how many times you want to loop. You will likely use a 'For' loop! Example:

            for num in 1...10

              puts num

            end

    \\\Inclusive and Exclusive Ranges///

        Exclusive range: 

            An example range would be 1...10 NOTE! that in this range we go up to but NOT including 10!

        Inclusive range:

            An example of thie would be using 2 periods eg, 1..10 this would include 10!

    \\\The Loop Method///

    There is another way to loop in Ruby, you can use an iterator. This is just a Ruby method that repeatedly invokes a block of code. A simple example of an infite loop using the loop method is:

            loop { print "Hello, world!" }

    In Ruby {} are interchangeable with the keyword DO to open a block and END to close a block. Eg:

            i = 0

            loop do

              i += 1

              print "#{i}"

              break if i > 5

            end

    

    

        Break keyword:

            The break keyword is our Get Out of Jail Free card: it breaks a loop as soon as its condition is met.

        Next keyword:

            This keyword can be used to skip over certain step in the loop. If we wanted to print out all the even numbers between 20 - 0 we could do:

                i = 20

                loop do

                  i -= 1

                  next if i % 2 != 0

                  puts "#{i}"

                  break if i &lt;= 0

                end

-#- ARRAYS

In Ruby, an array is just a list of items between [] [1, 2, 3, 4] the items don't have to be in order.

You can also make arrays of arrays! eg multi_arrays = [[0,0,0

0 1 2,[0,0,0]]

These are called MULTIDIMENSIONAL arrays

Arrays are INDEXED with numbers. Starting from 0, just like in Python!

    Eg:

      Arrary-->  0,0,0

      Index -->  0 1 2

-#- THE .each ITERATOR

The .each iterator can apply an expression to each elemnt of an object, one at a time. The syntax looks like:

    object.each { |item| 

      # Do something 

    }

You can also use the do keyword instead of {}

You can use .each in different ways eg:

    odds.each { |item| print item * 2}

    

    #one way

    odds.each do |item|

      print item * 2

    end

    #or another way

-#- THE .times Iterator

The .times method is like a compact 'for' loop. It can enact a task on each item in an object a defined amount of times. 

Eg to print this 10 times:

    10.times { print "Chunky bacon!" }

Using times to iterate over a multidimentional array:

    

    s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

    for i in s do

      i.each { |element| puts element}

    end

-#-text.split() METHOD

.split() takes a string and returns an array, if we pass in some text within the () .split will divide the string wherever it sees that text. 

-#- HASHES 

Is like a python dictionary, its a collection of key-value pairs. Hash syntax looks like this:

    hash = {

      key1 => value1,

      key2 => value2,

      key3 => value3

    }

Values are assigned using => You can use any Ruby object for a key or value. 

Creating a hash and giving it keys/values is called literal notation.

We can also create a hash like so:

    my_hash = Hash.new    - the 'H' must be a capital

This creates a new empty hash. To add key/values to the empty hash we can use bracket notation:

    my_hash = Hash.new

    my_hash["Test"] = "cat"

This adds the key "Test" with the value "cat"

    \\\Accessing VALUES///

    You can access values in a hash just like with an array. We call the key and print the value like:

        pets = {

          "Stevie" => "cat",

          "Bowser" => "hamster",

          "Kevin Sorbo" => "fish"

        }

         

        puts pets["Stevie"]#

    

-#- Deafult HASH values

A default hash value can be assiged like so:

    h = Hash.new("Nothing here")

If you try to access a non-existent key in the hash, this default value will be returned instead of an error!

-#- Methods aka Functions

Ruby calls a function a method, to define a method you do something like:

    def my_method

      #do something

    end

Methods can take arugemnts, for example:

    

    def square(n)

      puts n ** 2

    end

We would then call the 'square' method like so:

    square(12)

The arguemnts is what you put between () when you call the method.

The parameter is what you put between the () when you define the method. 

Splat arguments allow you to provide one or more arguemnts to your program. Like so:

    def what_up(greeting, *friends)

      friends.each { |friend| puts "#{greeting}, #{friend}!" }

    end

    what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")

Return values allow you to store the result of a method for later use. Eg:

    def some_method(n1, n2)

      return n1 + n2

    end

    n3 = some_method(1, 4) # this will store the reuslt of some_method in the n3 variable. 

~#~ Blocks 

Blocks are like nameless methods, these are similar to anonymouse functions in JavaScript or lambdas in Python.

Blocks can be define with either keywords 'do' and 'end' or with ().

Difference between a block and a method:

    def capitalize(string) 

      puts "#{string[0].upcase}#{string[1..-1]}"

    end

    capitalize("ryan") # prints "Ryan"

    capitalize("jane") # prints "Jane"

    # block that capitalizes each string in the array

    ["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"} # prints "Ryan", then "Jane"

    The code between the pipes | | is called the 'block parameter'. Or method argument. Though in methods they are enclosed in (). 

-#- COMBINED COMPARISON OPERATOR &lt;=>

You can also user &lt;=> to compare values. A block that is passed into the sort method must return either1, 0, or -1. It should return -1 if the first block parameter should come before the second, 1 if vice versa, and 0 if they are of equal weight, meaning one does not come before the other (i.e. if two values are equal)

eg:

    book_1 = "A Wrinkle in Time"

    book_2 = "A Brief History of Time"

    book_1 &lt;=> book_2

    https://www.youtube.com/watch?v=tpsdxtf01po

=#= Nil

"Nil" is one of the two non-true values in ruby. The other being "false". Every object in Ruby is considered to be "truthy". This means that if you type if 2 or if "bacon" the code in the if statement would run. 

false and nil are NOT the same thing, false means NOT TRUE where ars nil is NOTHIN AT ALL.

With a hash, the default value returned when you try to access a key that doesn't exist is nil. 

You can modify this when suing the Hash.new syntax to create your hash. Eg.

    my_hash = Hash.new("Default value") if I then tried to access a key that didn't exists, this default value would be the value returned. 

-#- SYMBOL

Symbols can be used instead of keys in a hash. Symbols are sort of names, they are NOT STRINGS. Eg:

    menagerie = { :foxes => 2,


<p id="gdcalert1" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: Definition &darr;&darr; outside of definition list. Missing preceding term(s)? </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert2">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


      :giraffe => 1,


<p id="gdcalert2" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: Definition &darr;&darr; outside of definition list. Missing preceding term(s)? </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert3">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


      :weezards => 17,


<p id="gdcalert3" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: Definition &darr;&darr; outside of definition list. Missing preceding term(s)? </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert4">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


      :elves => 1,


<p id="gdcalert4" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: Definition &darr;&darr; outside of definition list. Missing preceding term(s)? </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert5">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


      :canaries => 4,


<p id="gdcalert5" ><span style="color: red; font-weight: bold">>>>>>  gd2md-html alert: Definition &darr;&darr; outside of definition list. Missing preceding term(s)? </span><br>(<a href="#">Back to top</a>)(<a href="#gdcalert6">Next alert</a>)<br><span style="color: red; font-weight: bold">>>>>> </span></p>


      :ham => 1

    }

With symbols you cannot have more than one copy of a symbol/value pair. 

They are immutable, meaning you can't change them once created

Only one copy of a symbol exists at a given time, so they save memory

Symbol-as-keys are faster than strings-as-keys beacuse of the above. 

Converting strings to symbosl

    "hello".to_sym:

    "hello".intern

-#- .select HASH METHOD

We can use the select method to pull a specific value or values from a hash. Eg:

    movie_ratings = {

      memento: 3,

      primer: 3.5,

      the_matrix: 5,

      truman_show: 4,

      red_dawn: 1.5,

      skyfall: 4,

      alex_cross: 2,

      uhf: 1,

      lion_king: 3.5

    }

    # Add your code below!

    good_movies = movie_ratings.select { |name, rating| rating > 3}

    Iterate over just KEYS or just VALUES in a hash

        .each_key & .each_value methods can be used for just this!

        movie_ratings.each_key { |K| print k, " "}

        or

        movie_ratings.each_value { |v| print v, " "}

    The v and k can be anything, they are just variable used by the methods. What is important is the _key or _value. 

-#- case STATEMENT

Sometimes we can end up using too many if and elifs. This is where the 'case' statment comes in handy. Eg:

    case language

      when "JS"

        puts "Websites!"

      when "Python"

        puts "Science!"

      when "Ruby"

        puts "Web apps!"

      else

        puts "I don't know!"

    end

-#- Simpler if STATEMENTS

instead of a if like:

    if condition 

        #do somthing!

    end

You can instead include all of this on a single line like:

        expression if boolean 

    aka

 

        puts "It's true" if true

    You CANNOT so it this way around:

        

        if true puts "It's true!"

Another example, here we return the even numbers from an array using a single line if:

    my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

    my_array.each { |x| puts x if x.even? }

-#- TERNARY expressions

This is an even more concise version of an if/else, if the first expression is true it does whateve is to the left of the : else it does whatever is to the right of the :

    puts true == true ? "True is indeed true" : "True is not true?"

    aka 

    bollean ? something to do if true: something to do if false

-#- Conditional Assignment

We know that the = is the operator used to assign a value to a variable. But what if we only wanted to assign a value to a varible if it doesn't already exist?

We use ||= for this:

        

    favorite_book = nil

    puts favorite_book

    favorite_book ||= "Cat's Cradle"

    puts favorite_book

    favorite_book ||= "Why's (Poignant) Guide to Ruby"

    puts favorite_book

    favorite_book = "Why's (Poignant) Guide to Ruby"

    puts favorite_book

This prints:

    Cat's Cradleet’s get a little inventive. Write a loop that only puts the even values of my_array. (Bonus points if you use a one-line if!)

    Cat's Cradle

    Why's (Poignant) Guide to Ruby

-#- Implicit Return

We can return values from methods in ruby with "return" and these values can be used in other parts of our programs.

What happens if we don't put a return in our method?

Ruby unlike other languages will return the result of the last evaluate expression

Instead of something like:

def add(a,b)

  return a + b

end

    You can simply write:

def add(a,b)

  a + b

end

-#- .respond_to? method

The .respond_to? method takes a symbol eg :push and returns ture if an object (eg anything in Ruby) can recevive aka use that method and false otherwise.

KEY POINT! Symbols eg :next can be used to refer to methods by the same name so..

    next: == .next

    upcase: == upcase

    etc

-#- .push method shortcut using &lt;<

.push is used to add values to arrays but you can instead use the concatenation operator aka the shovel &lt;< like so:

    [1, 2, 3, 4] &lt;< 5

    # == > [1, 2, 3, 4, 5]

    "Yukihiro " &lt;< "Matsumoto"

    # ==> "Yukihiro Matsumoto"

-#- String INTERPOLATION 

Because you need to convert intergers into strings before add thing to other strings, instead of using:

    "string " + int.to_s + " string 2"

You can do:

    

    "string #{some_varibale}"

THis passes in the value of a variable into the string. All you need to do is place the variable name inside #{}

-#- Refactoring code

This is just lingo for improving the structure or appearance of pre-existing working code without changing the result.

Here we have some code;

    if 1 &lt; 2

      puts "One is less than two!"

    end

And here is the refactored version

    puts "One is less than two!" if 1 &lt; 2
