class Calculator
  # initialize class variable
  @@count = 0
  # define class method
  def self.printCount
      puts "Calculator count is #@@count"
  end

  # constructor method
  def initialize(n1, n2)
    @operand1, @operand2 = n1, n2
    @@count += 1
  end

  # accessor methods
  def getOperand1
    @operand1
  end

  def getOperand2
    @operand2
  end

  # setter methods
  def setOperand1=(value)
    @operand1 = value
  end

  def setOperand2=(value)
    @operand2 = value
  end

  # define to_s method
  def to_s
    "(operand1: #@operand1, operand2: #@operand2)"  # string formatting of the Calculator
  end

  #main methods
  def add
    @operand1 + @operand2
  end

  def subtract
    @operand1 - @operand2
  end

  def multiply
    @operand1 * @operand2
  end

  def divide
    @operand1 / @operand2
  end
end

# example 1
cal = Calculator.new(4, 3)
Calculator.printCount
puts "String representation of cal is #{cal}"
cal.setOperand1 = 20
cal.setOperand2 = 50
puts "operand1 of the calculator is #{cal.getOperand1}"
puts "operand2 of the calculator is #{cal.getOperand2}"

puts "------------------------------------------------"

# example 2
cal1 = Calculator.new(10, 5)
Calculator.printCount
puts "String representation of cal is #{cal1}"
puts "Add: #{cal1.add}"
puts "Subtract: #{cal1.subtract}"
puts "Multiply: #{cal1.multiply}"
puts "Divide: #{cal1.divide}"
