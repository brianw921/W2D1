class Employee
  attr_reader :salary
  def initialize(name,title,salary,boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
  end

  def bonus(multiplier)
    self.salary * multiplier
  end

end

class Manager < Employee

  def initalize(name, title, salary, boss)
    # @name = name
    # @title = title 
    # @salary = salary
    @employees = []
    super(name, title, salary, boss)
  end

  def bonus(multiplier) #recursively
    bonus = @employees.inject(0) { |acc,emp| acc + emp.salary}
  end
end