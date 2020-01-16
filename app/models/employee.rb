class Employee < ApplicationRecord
  has_and_belongs_to_many(:divisions)
  has_and_belongs_to_many(:projects)

  before_save(:titleize_employee)

  private
  def titleize_employee
    self.employee_name = self.employee_name.titleize
  end
end
