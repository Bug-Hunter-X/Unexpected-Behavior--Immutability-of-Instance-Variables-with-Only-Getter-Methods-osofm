# Unexpected Behavior: Immutability of Instance Variables with Only Getter Methods

This example demonstrates a common pitfall in Ruby when dealing with instance variables and getter methods.  If you only define a getter method (using `attr_reader` or explicitly defining a `value` method without a setter), you can read the variable's value, but you cannot directly modify it from outside the class.  The following code illustrates this.

## How to Reproduce

1. Run `bug.rb`.
2. Observe that assigning a new value using `my_object.value = 20` does not change the internal state of the `MyClass` object.

## Solution

The solution requires defining a `setter` method (using `attr_accessor`, `attr_writer`, or explicitly defining a `value=` method) to allow modification of the instance variable from outside the class.  See `bugSolution.rb` for the corrected implementation.

This repository aims to highlight this subtle yet important aspect of Ruby's object model and provide a clear solution.