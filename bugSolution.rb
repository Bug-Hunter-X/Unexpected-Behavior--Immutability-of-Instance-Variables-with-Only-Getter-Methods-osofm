```ruby
class MyClass
  attr_accessor :value # Use attr_accessor for both getter and setter
  # Or:
  # def value
  #   @value
  # end
  # def value=(new_value)
  #   @value = new_value
  # end

  def initialize(value)
    @value = value
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10
my_object.value = 20 # This will now correctly change the object's value
puts my_object.value # Output: 20
```