module HelperMethods
  def test_method
    puts "Call success!"
  end
end

class TestingInclude
  include HelperMethods
end

TestingInclude.new.test_method
begin
  TestingInclude.test_method
rescue Exception => e
  p 'No method error. As "include" will take the methods 
  in the module as instance methods. Calling it as class method 
  will result in no method error, whereas calling it as intance 
  method is working as the previous line shown.'  
end

class TestingExtend
  extend HelperMethods
end

TestingExtend.test_method
begin
  TestingExtend.new.test_method
rescue Exception => e
  p 'No method error. As "extend" will take the methods 
  in the module as class methods. Calling it as instance method 
  will result in no method error, whereas calling it as class 
  method is working as the previous line shown.' 
end

# Baz.foo # heyyyyoooo!
# Baz.new.foo # NoMethodError: undefined method ‘foo’ for #<Baz:0x1e708>