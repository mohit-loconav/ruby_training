# Introduction

Ruby is an object oriented programming knowledge. 

> Codeacademy Ruby [cheatsheet](https://www.codecademy.com/learn/learn-ruby/modules/learn-ruby-introduction-to-ruby-u/cheatsheet)


# Comments

* We can have single line comments with `#` symbol, content comes right side to `#` will be commented
* For multi line comments there are `=begin` and `=end` by placing them at the beginning and ending of desired block.


# Variables and I/O

* Don't need to mention data type or any keyword before declaring variables.
* Input from terminal with `gets()`
* `gets()` also returns single line at the end of input, to avoid this we can use `gets.chomp()`
* Output to terminal with `puts()` or `print()`
* `puts()` adds a new line with output, `print` simply logs to the terminal.
* Every variable in ruby is an object.
* There are mainly three types that a variable will have(Numeric, String, Boolean).


# Arrays and Hashes

* Ruby hashes are similar to arrays. A hash literal uses braces rather than square brackets.
* With arrays, the key is an integer, whereas hashes support any object as a key. Both arrays and hashes grow as needed to hold new elements.
* Hashes are like { key => value }
* Arrays are like { index(key) => value }

> The `.inject` method uses `.each` method for internal iteration.

# Control Structures

* `if`, `else`, `elsif`, `for`, `while` are some control structures in ruby.
* Block scope in ruby is maintained by `{}` or `do`-`end` keywords.
* It uses `end` keyword to specifies closing scope in every control structure. 


# Class and Objects
* class names should be in PascalCase by convention
* We can use classes with `.new()` to create objects
* Instance vairables naming convention begins with'@' and are not accessible outside class
* `initialize` method is the constructor function, it is always public
* Instance variables can only be read/update by some methods called as attributes
* Instance methods can be of 3 types: 
1. `public`: can be accessible from anywhere, default type.
2. `protected`: can be invoked only by objects of the defining class and its subclasses.
3. `private`: only accessible within the class by it's other methods.
Access is kept within the family. 


> Class syntax: 
``` 
class ClassName
  attr_reader :instance_variable1, :instance_variable2....
  attr_accessor :instance_variable1, :instance_variable2....
  
  def initialize(value1, value2)
    @instance_variable1 = value1
    @instance_variable2 = value2
  end

  def getter_attribute()
    @instance_variable
  end

  def setter_attribute=(value)
    @instance_variable = value
  end

  def instance_method1() 
    statement1
    statement2
  end
```

# Modules and Mixins
* Their naming convetion is same as class i.e. Pascal Case
* Modules can be defined just like classes but they don't have instances, they just provide a namespace to group functionalities.
* When modules are included(with `include`) in classes then they known as mixins.
* `include` doesn't copy module's methods to class instead it creates a reference from class to that module.


# Strings
* It can be constructed with both '' and "" literals
* escape sequences(`\n`, `\'` ....) can be placed in strings
* some methods are: `split`, `chomp`, `squeeze`, `succ`

# Expressions
* In boolean expressions:
  * `&&`(`and`) operation returns first falsy value if evaluates to false and returns last truthy value if evaluates to true
  * `||`(`or`) operation returns last falsy value if evaluates to false and returns last first truthy value if evalautes to true
* `if` checks for the truthness of the expression and then executes it's block, unlike `if` `unless` executes it's block when expression evaluates to false