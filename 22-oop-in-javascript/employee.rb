class Employee
  def initialize
    self.name = ''
    self.dept = 'general'
  end
end

# new_employee = Employee.new


class Manager < Employee
  def initialize
    super
    self.reports = []
  end
end


class WorkerBee < Employee
  def initialize
    super
    self.projects = []
  end
end



class Sales < WorkerBee
  def initialize
    super
    self.dept = 'sales'
    self.quota = 100
  end
end
