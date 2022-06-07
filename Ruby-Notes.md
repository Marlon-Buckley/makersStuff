# \\\RUBY NOTES///


## Ruby Foundations

Notes taken while following the chapters found here - [https://github.com/makersacademy/ruby_foundations/blob/main/chapter1/README.md](https://github.com/makersacademy/ruby_foundations/blob/main/chapter1/README.md)

Cheatsheet - [https://www.codecademy.com/learn/learn-ruby/modules/learn-ruby-introduction-to-ruby-u/cheatsheet](https://www.codecademy.com/learn/learn-ruby/modules/learn-ruby-introduction-to-ruby-u/cheatsheet)


## Learning Objectives 

Working towards 6 of the modules 10 objectives. 



* Execute Ruby code in two different ways 👈
* Make a plan using problem decomposition and experimentation 👈
* Describe and use variables 👈
* Describe and use conditionals 👈
* Describe and use arrays
* Describe and use hashes
* Describe and use methods 👈
* Describe and use classes


### Chapter 1 - Intro to Ruby

Ruby was created by Yukihiro Matsumoto (affectionately known as "Matz"), with the goal of being pleasant or, in his words, "natural" to use. If it's your first programming language, it might not feel very natural to begin with, but you'll get there and when you start to learn a second language you'll be able to make some interesting comparisons.


### Data Types


#### Strings



* Strings are one of Ruby's data types, they can store letters, numbers symbols/special characters so long as they are enclosed by double quote “ “. You can type a string into the Ruby interpreter and it will echo it back.
* Strings can be manipulated, you can join two strings together by “concatenating” them using the plus + symbol. Eg `"string1" + "string2"` outputs `"string1string2"`. The output is also called the “return value”.


#### Variables 



* Variables act as containers for information. We can give a variable a value by using the assignment operator =. Eg `greeting = "hello world"`. This is also sometimes called “declaring”. 
* Variables can be reassigned to different values, you do this by simply using the = operator to assign a new value to a variable that already exists, so we could change our greeting from “hello world” to “goodbye world” like so; greeting = “goodbye world”


#### Booleans



* Something that is true or false (lower case)
* Never use " or ' with Booleans, Ruby will think you're talking about a string!


#### Numbers



* There are different types of numbers in Ruby as in other languages.
    * Integers
    * Floating point numbers aka floats

Other Ruby data types are listed below. These include arrays, hashes, and symbols [https://www.codecademy.com/resources/docs/ruby/data-types](https://www.codecademy.com/resources/docs/ruby/data-types)


##### Return Values

A return value is the output from some Ruby code being executed. These values can be used with methods and more. 


##### String Manipulations


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



##### Error Messages

If you type a string without quotes surrounding it into the Ruby interpreter ruby will return an error like.


###### Undefined Variables Or Methods


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



###### Unsupported Operations (joining strings to integers)

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



##### String Interpolation

          "Stevie" => "cat",

         