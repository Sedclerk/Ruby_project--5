#Project 5: 

#1. Create a loop that implements “while” and “until
#Firstly , Ruby has an extensive collection of loops
#we have the flexibility to choose the one that is best for us
#    - While and until
#    - for and in
#    - iterators
#    - enumerables in objects
# Ok so first we need to understand this when using while & Until , these are repetition expressions

#while c do # inhere "c" represents condition, also here while it evaluates a condition, if the condition is true? then it would execute the expression and starts over it will evaluates the condition again, if its tru it will go back on the body of the loop
#    e # and here "e" represents expression
#end
# the same as until

#until c do
#    e
#end

# here is an example

line = 10
while line > 0  # in here no need "do" because of "\n"
    puts "line #{line}"
    line -= 1 # the same as Line = Line - 1
end
# this is how it looks like :
#line 10
#line 9
#line 8
#line 7
#line 6
#line 5
#line 4
#line 3
#line 2
#line 1
#=> nil

until line == 10
    puts "line #{line}"
    line += 1 # it means Line = Line + 1
end

# this is how it looks like :
#line 0
#line 1
#line 2
#line 3
#line 4
#line 5
#line 6
#line 7
#line 8
#line 9
#=> nil


# 2. Create a loop that is “nested” inside another loop

# Let seee how does nested loop work? :
# the nested loop takes a string of words and produces
# a slice that consists of the first word, then the first
# word plus the second word, then the first word plus
# the second word plus the third word, and so forth,
# until the full list of words is produced . Then the
# loop knocks off the first word and repeats the process,
# procuding the second word, then the second word plus the third word, and so forth
# The output from each iteration continues through the nested iterators.


# Microsoft Windows [Version 6.2.9200]
# (c) 2012 Microsoft Corporation. All rights reserved.

# C:\Users\Sedinirina>irb
 apple = ['Ipad1', 'Ipad2', 'Ipad3', 'Ipad4']
# => ["Ipad1", "Ipad2", "Ipad3", "Ipad4"]
 size = ["16GB", "32GB", "64GB"]
# => ["16GB", "32GB", "64GB"]
    apple.each do |apple|
        puts apple
        size.each do |size|
            puts size
            1.upto(4) do |num|
                puts "This is how many Ipad's we have sold : " + num.to_s
            end
        end
    end
# Ipad1
# 16GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# This is how many Ipad's we have sold : 4
# 32GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# This is how many Ipad's we have sold : 4
# 64GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# This is how many Ipad's we have sold : 4
# Ipad2
# 16GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# This is how many Ipad's we have sold : 4
# 32GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# This is how many Ipad's we have sold : 4
# 64GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# This is how many Ipad's we have sold : 4
# Ipad3
# 16GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# This is how many Ipad's we have sold : 4
# 32GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# This is how many Ipad's we have sold : 4
# 64GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# This is how many Ipad's we have sold : 4
# Ipad4
# 16GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# This is how many Ipad's we have sold : 4
# 32GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# This is how many Ipad's we have sold : 4
# 64GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# This is how many Ipad's we have sold : 4
# => ["Ipad1", "Ipad2", "Ipad3", "Ipad4"]
# irb(main):012:0>

# 3. Implement “next” in your nested inner loop. What does this do?


# C:\Users\Sedinirina>irb
 apple = ['Ipad1', 'Ipad2', 'Ipad3', 'Ipad4']
# => ["Ipad1", "Ipad2", "Ipad3", "Ipad4"]
 size = ["16GB", "32GB", "64GB"]
# => ["16GB", "32GB", "64GB"]
apple.each do |apple|
    puts apple
    size.each do |size|
       puts size
        1.upto(4) do |num|
            next if num == 4
            puts "This is how many Ipad's we have sold : " + num.to_s
        end
    end
end
# Ipad1
# 16GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# 32GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# 64GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# Ipad2
# 16GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# 32GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# 64GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# Ipad3
# 16GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# 32GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# 64GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# Ipad4
# 16GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# 32GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# 64GB
# This is how many Ipad's we have sold : 1
# This is how many Ipad's we have sold : 2
# This is how many Ipad's we have sold : 3
# => ["Ipad1", "Ipad2", "Ipad3", "Ipad4"]
# irb(main):013:0>

# As you see the code above, first we use NEXT in a loop if we want to jump to the next loop so in here "next if num == 4" , as the loop goes and get to number 4 then it will skip it. then the number 4 won t show to the result.

# 4. Raise an exception in our script

# C:\Users\Sedinirina>irb --simple-prompt
>> apple = ['Ipad1', 'Ipad2', 'Ipad3', 'Ipad4']
# => ["Ipad1", "Ipad2", "Ipad3", "Ipad4"]
>> size = ["16GB", "32GB", "64GB"]
# => ["16GB", "32GB", "64GB"]
>> begin
?> Apple.each do |apple|
?>   puts apple
>>   size.each do |size|
?>     puts size
>>     1.upto(4) do |num|
?>       next if num == 4
>>       puts "This is how many Ipad's we have sold : " + num.to_s
>>     end
>>   end
>> end
>> rescue
<    puts "Hey it says Error, change this 'Apple' to 'apple' if you want your code to run. Thanks"
>> end
#  Hey it says Error, change this 'Apple' to 'apple' if you want your code to run. Thanks
# => nil
# >>

# 5. Show an example of using “begin/rescue”, why would you use this in your code?

# C:\Users\Sedinirina>irb
# irb(main):001:0> 1/0
# ZeroDivisionError: divided by 0
#         from (irb):1:in `/'
#         from (irb):1
#         from C:/Ruby193/bin/irb:12:in `<main>'
# irb(main):002:0>

# let s use Begin and rescue using this simple example
# OK so from that error above this is where the rescue clause comes in.
# If we wrap some code in a "begin .. end" block and put a rescue clause
# in the middle of that, control will go to the rescue clause
# if any exception is thrown by the code.

# Let us see now and demonstrate:

# C:\Users\Sedinirina>irb --simple-prompt
>> begin
?>   2/0
>>   puts "I should never get executed"
>> rescue
<    puts "I am rescuing an exception and so whatever i want i can do it here!"
>> end

# This produces the following output:

# I am rescuing an exception and so whatever i want i can do it here!
# => nil
# >>

# As we can see the first string does not get printed since
# the division by zero will throw an exception and control will
# pass to the rescue clause, which will print out the second string for us.

# 6. Show an example of using 1 “begin” statement with multiple “rescue” statements, why would you do this?
    
#  here are some information on the mechanism for exception handling


# OK so when an exception occurs
#   - object of class Exception or one of it s children
#     ,created.
#   - Exception is associated to message string&a stack backtrace
#   - All information about the exception is packaged in this object
  
# IOError, ZeroDivisionError, TypeError, SystemCallError,Errno::ENOENT,etc...
# these are examples of exceptions derived from class Exception.


# C:\Users\Sedinirina>irb
# irb(main):001:0> begin
# irb(main):002:1*   f = File.open "doesntexist.txt", "r"
# irb(main):003:1>   f.write "test"
# irb(main):004:1> rescue Errno::ENOENT => e
# irb(main):005:1>   puts "Could not open file"
# irb(main):006:1> rescue IOError => e
# irb(main):007:1>   puts "Could not write to file"
# irb(main):008:1> end
# Could not open file
# => nil
# irb(main):009:0>

# the reason why i would do this is sometimes
# when times when more than one type
# of exception can be thrown. Each exception
# thrown is an object just like any other object
# you would assign to a variable. It has a type,
# it has methods you can call and it has attributes
# you can access. The exception will often contain
# information about exactly what went wrong in
# addition to information about the type of exception.
# In the previous example, an attempt was made to
# open doesntexist.txt in write mode. If that succeeded,
# an attempt was made to read from the file.
# Each of these throws a different type of exception
# , and each one will be handled differently.

# 7. Show an example of using “ensure” with “begin/rescue”, why would you use this?

# Microsoft Windows [Version 6.2.9200]
# (c) 2012 Microsoft Corporation. All rights reserved.

# C:\Users\Sedinirina>irb
 begin
 file = open("test.txt", "w")
  file << "#{content} \n"
 rescue
    puts "error"
 ensure
   file.close
 end
# error
# => nil
# irb(main):009:0>

# Some processes need to be finished up.
# For example, we should close an
# opened file, flush data which is stored
# in the buffers, etc. If there is only one
# exit for each method, we may put anything
# to be done there, however, a method returns
# from various conditions and we must consider
# the alternative way to ensure finishing the process.
# Ruby also has `exception', which increases the way
# to return.
