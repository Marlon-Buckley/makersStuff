# RUBY NOTES


## Ruby Foundations

Notes taken while following the chapters found here - [https://github.com/makersacademy/ruby_foundations/blob/main/chapter1/README.md](https://github.com/makersacademy/ruby_foundations/blob/main/chapter1/README.md)

Cheatsheet - [https://www.codecademy.com/learn/learn-ruby/modules/learn-ruby-introduction-to-ruby-u/cheatsheet](https://www.codecademy.com/learn/learn-ruby/modules/learn-ruby-introduction-to-ruby-u/cheatsheet)


[TOC]



### Chapter 1 - Intro to Ruby {#chapter-1-intro-to-ruby}

Ruby was created by Yukihiro Matsumoto (affectionately known as "Matz"), with the goal of being pleasant or, in his words, "natural" to use. If it's your first programming language, it might not feel very natural to begin with, but you'll get there and when you start to learn a second language you'll be able to make some interesting comparisons.


### Data Types {#data-types}


#### Strings {#strings}



* Strings are one of Ruby's data types, they can store letters, numbers symbols/special characters so long as they are enclosed by double quote “ “. You can type a string into the Ruby interpreter and it will echo it back.
* Strings can be manipulated, you can join two strings together by “concatenating” them using the plus + symbol. Eg `"string1" + "string2"` outputs `"string1string2"`. The output is also called the “return value”.


#### Variables  {#variables}



* Variables act as containers for information. We can give a variable a value by using the assignment operator =. Eg `greeting = "hello world"`. This is also sometimes called “declaring”. 
* Variables can be reassigned to different values, you do this by simply using the = operator to assign a new value to a variable that already exists, so we could change our greeting from “hello world” to “goodbye world” like so; greeting = “goodbye world”


#### Booleans {#booleans}



* Something that is true or false (lower case)
* Never use " or ' with Booleans, Ruby will think you're talking about a string!


#### Numbers {#numbers}



* There are different types of numbers in Ruby as in other languages.
    * Integers
    * Floating point numbers aka floats

Other Ruby data types are listed below. These include arrays, hashes, and symbols [https://www.codecademy.com/resources/docs/ruby/data-types](https://www.codecademy.com/resources/docs/ruby/data-types)


##### Return Values {#return-values}

A return value is the output from some Ruby code being executed. These values can be used with methods and more. 


##### String Manipulations {#string-manipulations}


```
> "hello, " + "world!"
=> "hello, world!"
```


We can do this by using the + operator. The “hello, world!” output is the return value. If we want to reference this later we could store it within a variable eg 


```
greeting = "hello, " + "world!"

#or like this 

firstWord = "hello, "
secondWord = "world!"

greeting = firstWord + secondWord
```



##### Error Messages {#error-messages}

If you type a string without quotes surrounding it into the Ruby interpreter ruby will return an error like.


###### Undefined Variables Or Methods {#undefined-variables-or-methods}


```
3.0.0 :028 > hello
Traceback (most recent call last):
    	5: from /Users/marlon.buckley/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `<main>'
    	4: from /Users/marlon.buckley/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `load'
    	3: from /Users/marlon.buckley/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/irb-1.3.0/exe/irb:11:in `<top (required)>'
    	2: from (irb):9:in `<main>'
    	1: from (irb):10:in `rescue in <main>'
NameError (undefined local variable or method `hello' for main:Object)
Did you mean?  help
```


In this case ruby thinks you are referring to a variable called hello. But because you’ve never defined/declared that variable before, it's returning the error (undefined local variable or method ‘hello’).

In the above example the following indicates that the error in the code is on line 10, this is because I’d entered a few lines prior to running this code.


```
1: from (irb):10:in
```



###### Unsupported Operations (joining strings to integers) {#unsupported-operations-joining-strings-to-integers}

Sometimes Ruby will return an error when attempting to perform an unsupported operation. For example when trying to concatenate a string to a number you’ll get a TypeError like so;


```
3.0.0 :031 > 1 + 'a'
Traceback (most recent call last):
    	6: from /Users/marlon.buckley/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `<main>'
    	5: from /Users/marlon.buckley/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `load'
    	4: from /Users/marlon.buckley/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/irb-1.3.0/exe/irb:11:in `<top (required)>'
    	3: from (irb):28:in `<main>'
    	2: from (irb):29:in `rescue in <main>'
    	1: from (irb):29:in `+'
TypeError (String can't be coerced into Integer)
```



##### String Interpolation {#string-interpolation}

We've already covered how you can join strings together with concatenation by using the `+` operator. We can also join strings together by storing them in variables and then concatinating the variables likes so;


```
> first_name + surname
> => "Yukihiro Matsumoto"
```


Another way to do this is to use 'interpolation' to insert the contents of a variable into a string. Eg;


```
> name = 'Mina'
=> 'Mina'

> "Hello #{name}, how are you today?"
> => "Hello Mina, how are you today?"
```


So where as I could do this like so; 


```
> "Hello " + "my name is " + name + " I am " + age + "years old."
 => "Hello my name is Marlon I am 26years old."
```


I could insert use interpolation to make that a bit easier like this;


```
"Hello my name is #{name} I am #{age} years old."
 => "Hello my name is Marlon I am 26 years old."
```


That’s a lot less plus signs and a bit easier to read too! A similar thing can be done in Python with f strings. 


#### Methods {#methods}

Methods do things to objects in Ruby. Later on we’ll learn about how to define methods. 


##### String Methods {#string-methods}

String methods like .length .upcase, .swapcase etc can be used to change strings. You can use these individually like so;


```
> name
 => "Marlon"
> name.upcase
 => "MARLON"
> name.reverse
 => "nolraM"
```


There are 183 string methods in ruby 3.01, you only need to remember a few of them. You can google and find lists of them to reference in future.

https://ruby-doc.org/core-3.1.1/String.html


###### Method Chaining {#method-chaining}

As in the above example you can also chain together methods to do more things with less code. Eg;


```
> name.upcase.reverse
 => "NOLRAM"
```


In this example, one line of code first converts the string to uppercase and then reverse the order of the characters. 


###### Errors To Be Aware Of {#errors-to-be-aware-of}

Be aware, some methods cannot be chained together and will return errors. For example the below code block will return an error. 


```
> name = "Marlon"
 => "Marlon"
3.0.0 :018 > name.length.upcase
Traceback (most recent call last):
    	4: from /Users/marlon.buckley/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `<main>'
    	3: from /Users/marlon.buckley/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `load'
    	2: from /Users/marlon.buckley/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/irb-1.3.0/exe/irb:11:in `<top (required)>'
    	1: from (irb):18:in `<main>'
NoMethodError (undefined method `upcase' for 6:Integer)
```


This error is appearing because you cannot call the `.upcase` method on the return value of `name.length `the `.upcase` method can only be called on strings. The return value is an integer, `5`, the length of the string `"Marlon"` !


#### Other Data Types & Methods

You can use methods on the other data types in Ruby. Arrays/Hashes will be covered later on.



* Integers
* Floats
* Symbols
* Booleans
* Arrays
* Hashes


###### Integers 

These are whole numbers, not decimals. You can perform standard math operations such as +, / *, - etc.

There are also some other useful functions that can be performed on numbers like;


```
> 1.odd?
=> true
> 3.even?
=> false
> 10.next
=> 11
```


See more Integer methods in the Ruby docs - [https://ruby-doc.org/core-3.0.0/Integer.html](https://ruby-doc.org/core-3.0.0/Integer.html)

Keep in mind when dividing an integer by another integer the return value will always be an integer. 


###### Floats

Floats are decimal values. Numbers with decimal points in them! Floats are called as such because the decimal point can ‘float’ to any position in a number. All the basic math operators can be used on floats too. 


```
> 10 / 3.0
=> 3.3333333333333335
> 10.0 / 3
=> 3.3333333333333335
```


Floats have their own methods too - [https://ruby-doc.org/core-3.0.0/Float.html](https://ruby-doc.org/core-3.0.0/Float.html)


###### Symbols

These are like strings but used mainly by programmers. Symbols are a sequence of characters without spaces and with a colon at the start. If you want to start a symbol with a digit, you need to enclose it in quotes see - [https://stackoverflow.com/a/38904016](https://stackoverflow.com/a/38904016)


```
# these are valid symbols
> :hello
=> :hello
> :RUBY
=> :RUBY

# you can assign symbols to variables
> greeting = :hello

# and call methods on them
> greeting.upcase
=> :HELLO
> greeting.length
=> 5
> greeting.to_s
=> "hello"
```



###### Booleans {#booleans}

These are a special data type, they are named after George Boole. Booleans can only have two values, `true` and `false`.

A ruby method ending with ? usually is boolean. Eg `1.odd?` And “this is not empty”.empty?

[https://docs.ruby-lang.org/en/2.0.0/syntax/methods_rdoc.html#label-Method+Names](https://docs.ruby-lang.org/en/2.0.0/syntax/methods_rdoc.html#label-Method+Names) - “Methods that end with a question mark do not always return just true or false. Often they will may return an object to indicate a true value (or “truthy” value).” 

You can combine booleans with logical operations. Some examples are;


```
> # to return true, both sides must be true
> true && true
=> true
> true && false
=> false
> false && true
=> false
> # to return true, only one side needs to be true
> true || false
=> true
> false || true
=> true
> true || true
=> true
```



##### Arguments

Arguments are used with methods to provide extra information to the method on what you would like to do. For example if I wanted to remove a specific character from a string using the `.delete` method. I’d need to specify that character within an argument! Eg;


```
> name = "Marlon"
 => "Marlon"
> name.delete("M")
 => "arlon"
```


Arguments in ruby don’t need to be surrounded by parentheses but it's a good habit to get into because other languages rely on them. 


###### Multiple Arguments

Some methods will require or accept multiple arguments. For example if I wanted to replace all the a’s in my name with o’s I would do so like this;


```
> name = "Marlon"
 => "Marlon"
> name.gsub("a", "o")
 => "Morlon"
```


The arguments need to be within quotes and separated by commas. You can use gsub to replace a sequence of letters with another sequence. Eg;


```
> name = "Marlon"
> name.gsub("arl", "orp")
 => "Morpon"
```



###### Argument Errors

Some methods require a specific amount of arguments or at least one. If you don’t provide the correct amount of arguments you’ll be presented with an error. Eg;


```
> name.gsub
Traceback (most recent call last):
    	5: from /Users/marlon.buckley/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `<main>'
    	4: from /Users/marlon.buckley/.rvm/rubies/ruby-3.0.0/bin/irb:23:in `load'
    	3: from /Users/marlon.buckley/.rvm/rubies/ruby-3.0.0/lib/ruby/gems/3.0.0/gems/irb-1.3.0/exe/irb:11:in `<top (required)>'
    	2: from (irb):78:in `<main>'
    	1: from (irb):78:in `gsub'
ArgumentError (wrong number of arguments (given 0, expected 1..2))
```


This error is coming up because the .gsub method expects 2 arguments, the character to replace and the character to replace with!


## Learning Reflections 07/06/2022

Finished up at [https://github.com/makersacademy/ruby_foundations/blob/main/chapter1/06_conditionals.md](https://github.com/makersacademy/ruby_foundations/blob/main/chapter1/06_conditionals.md) 



* Covered the basics of Ruby data types, defining variables, manipulating strings using methods.
* Chaining methods together to do multiple things at once. 
* Used basic arguments with different methods like .gsub and .delete. 
* Basics of troubleshooting error messages, type errors, argument errors, undefined variables etc. 


#### Conditionals

Sometimes you want your code to execute only if a specific thing happens, or doesn’t happen, or say a piece of text includes a specific letter or string. This is where control flow/conditionals comes into play. 


##### If / Else Statements

In the below example, our if else statement is checking whether the string stored in the `name` variable is greater than 25 ( `> 25` ) . If it is greater, the string beneath it will be returned. Else, the second string will be returned. 


```
> name = "Marlon Buckley"
> if(name.length > 25)
>   "that's a very long name"
> else
>   "that's not a very long name"
> end
```


If else will execute either or side of the if/else. In this case because the if is false, the else is what is returned. These statements must always finish with an `end`!\


##### Elsif Statements

Sometimes you’ll have more than one condition you’d like to check. This is where an `elsif` statement comes in handy. In this case, the code will check each condition until one of them is true, in the below example this means that the code returns `"That's not a particularly long name"`.


```
name = "Marlon Buckley"
> if(name.length > 25)
>   return "That's very a long name"
> elsif(name.length > 20)
>   return "That's a long name"
> else
>   return "That's not a particularly long name"
> end
```



#### Defining Methods

Methods are like Functions in other languages. They allow you to store a block of code that can do something. This block aka Method aka Function can then be called later on in your program. 

You can create your own method with the `def` keyword like so;


```
def howOld(age)
	puts "You are #{age} years old!"
end
```


This won’t actually do anything (ie output to terminal) because we’ve not given age a value and we’ve not called the method! We first need to provide a value for the age argument. 


```
puts "How old are you?"
personsAge = gets.chomp

def howOld(age)
	puts "You are #{age} years old!"
end

howOld(personsAge)
```


In the above example we prompt the user with a question using puts we then define a variable for `personsAge` and use the `gets.chomp` methods chained together to prompt the user and take input. This input is stored in the variable. It is this variable which we include in the call to the `howOld` function on the last line. 

If we wanted to add some checking into this, for example, based on whether the persons age is greater than a certain number we could return two different strings like so;


```
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
```


We have to make sure we use `end` to finish of both the `if, else` and the method!
