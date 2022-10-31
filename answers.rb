require 'pry'
# Week 1, Day 2 Morning Discussion Questions
# Instructions
# Take 30 minutes and answer the following questions together with your group. Take turns playing around with the code provided in Pry or IRB.

# Questions
# 1 . What does the below method return?

def greet(name)
  puts "Hello, #{name}"
end
# greet("Steven") #=> nil

# nil. just prints to console, but returns nothing


# 2 . What does this method return?
def love_this_veggie?(vegetable)
  if vegetable == "broccoli"
    "Nah, thanks"
  else
    "I love it!"
  end
end

# the string itself, implicit return


# 3 . How would you select all of the words that start with the letter "a" from the below array?
words = ["apple", "pear", "face", "champagne", "palm tree", "aardvark", "pineapple"]
words.length.times do |i|
  if words[i][0] == 'a'
    puts words[i]
  end  
end 

# or:
words.select { |word| word.start_with?("a") }   # or, use .filter


# 4 . Write a method that takes in an argument of a sentence and returns the number of words in the sentence
# word_count("Hi, isn't this a great and interesting sentence??")
# => 8

def word_count(sentence) do
  sentence.split.count
end

# 5 . What will the following method return?

def friendly_greeting(name=nil)
  name ||= "friend"
  "Hey there, #{name}"
end
# => "Hey there, bob"
# => "Hey there, friend"


# 6 . What will the following puts?

best_animal = "cat"
favorite_animal = best_animal
puts favorite_animal
# => "cat"


# 7 . What will the following puts?

def my_favorite_animal
  "cat"
end

best_animal = my_favorite_animal

puts best_animal

# "cats"

# 8 . What error, if any, will the following code raise?

"Blink" + 182
# TypeError: no implicit conversion of Integer into String

# 9 . How would you puts out any and all foods that are delicious?

foods = {
  "pie" => "delicious",
  "broccoli" => "not delicious",
  "carrots" => "not delicious",
  "apples" => "delicious",
  "peanut butter" => "delicious"
}

foods.select { |k, v| v == "delicious" }
# or, equivalently:
foods.filter { |k, v| v == "delicious" }

# Just an array of the keys
foods.filter { |k, v| v == "delicious" }.keys
# => ["pie", "apples", "peanut butter"]

# 10 . Delete all elements of the foods hash that are not delicious.
foods.each do | key, value |
  if value == "not delicious"
    foods.delete(key)
  end
end

# 11 . What is the return value of this method?
character_names = ["Daenerys Targaryen", "Jon Snow" ,"Arya Stark", "Tyrion Lannister", "Sansa Stark", "Cersei Lannister", "Margaery Tyrell"]

def downcase_all(array_of_strings)
  array_of_strings.each do |one_string|
    one_string.downcase
  end
end

# Nothing!
# Create new array and push downcased one_string to it each iteration, or
# Change .each to .map


# 12 . Write a method that puts out a random Agent Cooper quote.
cooper = {
  "name": "Dale Bartholomew Cooper",
  "co-workers": ["Diane", "Sheriff Harry S. Truman"],
  "favorite_drink": "Coffee",
  "quotes": ["Damn fine cup of coffee", "Diane...", "This must be where pies go when they die", "That's what you do in a town where a yellow light still means slow down, not go faster.", "Every day, once a day, give yourself a present", "I have no idea where this will lead us, but I have a definite feeling it will be a place both wonderful and strange."]
}

# we want to access the quotes array within
# grab a random element from quotes

20.times do
  puts cooper[:quotes].sample  
end 

binding.pry