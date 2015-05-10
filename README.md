##CS 3300 Software Engineering
###Homework 0

#####A Very Basic Intro to Ruby

Due Sunday, February 1, 2015 11:59pm
Points: 40

This assignment will help you to set up the programming environment that you will use for the semester and to remind yourself of basic RegEx and OOP techniques. You’ll apply these techniques in Ruby, a new language for most of you, and learn how to write and execute programs in a Ruby environment.

######Set up your environment:
http://beta.saasbook.info/bookware-vm-instructions

For most students, we recommend Option 1 for Book version 1.0.1 - 0.10.3.
If you work in Linux already, check out Option 3.
**Warning**: Option 1 includes a 1.9 GB download. Plan accordingly.
(While you could set up this environment in native Windows or Mac, we advise you not to do so for grading and debugging reasons. We are having you set up the environment on your own, rather than using a department-based VM, so that you have full control over the environment as you proceed through the semester.  This VM provides a basis of what you’ll need.)
If using Option 3, make sure to take note if any errors occur!  While the script is working now, web links like to change at the worst possible times…

Please note that you are using this VM to help avoid issues in the future with regard to grading and when working in your groups.  You will run this VM yourself rather than using a VM on campus so you don’t need to VPN in every time you want to work on assignments.

######The Assignment:

Submit 1 file for each of the four sections.  To get started writing and running programs in Ruby, check out: http://rubylearning.com/satishtalim/first_ruby_program.html

There are a number of other tutorials listed in Blackboard as well.  If you find something that you really like, please share your recommendations on Piazza!

1. **Getting Started**
  * Start by checking out the documentation on `Array`, `Hash` and `Enumerable`
    * Define a method `sum` which takes an array of integers as an argument and returns the sum of its elements. For an empty array it should return zero.
    * Define a method `max_2_sum` which takes an array of integers as an argument and returns the sum of its two largest elements. For an empty array it should return zero. For an array with just one element, it should return that element.
    * Define a method `sum_to_n?` which takes an array of integers and an additional integer, `n`, as arguments and returns true if exactly two elements in the array of integers sum to `n`. Assume an empty array sums to zero. (In other words, if the array is empty with `n==0`, you’d get `true`. If `n` is anything else, it’d be `false`.)
  * Put all three methods in a single file.
2. **Blocks & Iterators + Very Simple Metaprogramming**
  * Write a function called `frequency_string(chars)`, which given an array of single-character strings, returns a string of each character followed by its frequency.

    > frequency_string([‘a’,‘c’,‘#’,‘2’,‘a’,‘a’,‘#’])

    > “a3c1#221”

  * Write a function called `is_anagram_of?(string1, string2)` that returns `true` if `string2` is an anagram (same letters but maybe in different order) of `string1` and `false` otherwise.
    Then extend the `String` class with a method `is_anagram_of?(string)` that returns `true` if `string` is an anagram of the `String` instance.

3. **Strings & Regular Expressions**

  * Write a function called `glob_match(filenames, pattern)`, which takes an array of filename strings and a glob pattern string and returns an array of the filenames that match the following UNIX glob rules:
    * `*`: matches zero or more characters,
    * `?`: matches any 1 character,
    * `[abc]`: matches a, b, or c

    (Hint: use `gsub` to replace string subsequences)

    > glob_match([“part1.rb”, “part2.rb”, “part2.rb~”, “.part3.rb.un~”], “\*part\*rb?\*”)

    > [“part2.rb~”, “.part3.rb.un~”]

4. **Object-Oriented Programming**

  * Define a class `Car` with setters and getters for `make`, `model`, and `year`
  * Implement `self.num_cars_made`, which returns the total number of cars ever instantiated
  * Implement `self.most_popular_make`, which returns the most instantiated car maker
  * Implement `self.been_made?(car_make)`, which determines if a certain make has been instantiated

    Note: maintain your data structures efficiently!

    Here is the framework (you may define additional helper methods):

    ```Ruby
    class Car
      def initialize(params) // Assume that when Car object gets instantiated, it gets passed in a hash value called params
        <YOUR CODE HERE>
      end

      def self.num_cars_made
        <YOUR CODE HERE>
      end

      def self.most_popular_make
        <YOUR CODE HERE>
      end

      def self.been_made?(car_make)
        <YOUR CODE HERE>
      end
    end
    ```

######Submission

  On Blackboard, submit 4 files with the following naming scheme:
  `UCCSusername_part#.rb`  (for example: `kjustice_part1.rb`)
  You will be penalized if naming schemes are not followed!
