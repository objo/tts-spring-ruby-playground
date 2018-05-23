#
# save the name and hourly pay rate
# create a method that pays them for an amount of hours passed in
#
class Employee
  attr_reader :name

  def initialize(name, pay_rate)
    @name = name
    @pay_rate = pay_rate
  end
end

class HourlyEmployee < Employee
  def pay(hours)
    hours * @pay_rate
  end
end

class SalariedEmployee < Employee
  def pay
    @pay_rate / 12 / 2
  end
end

joe = HourlyEmployee.new("Joe", 10.04)
puts joe.name
puts joe.pay(32)


tim = SalariedEmployee.new("Tim", 92000)
puts tim.name
puts tim.pay()  # paid twice a month
