class Employee < ApplicationRecord
  has_and_belongs_to_many(:divisions)
  has_and_belongs_to_many(:projects)

  before_save(:titleize_employee)

  scope :search_term, -> (search_param) { where("employee_name like ?", "%#{search_param}%") }

  validates :employee_name, presence: true

  validates_length_of :employee_name, minimum: 2


  private
  def titleize_employee
    self.employee_name = self.employee_name.titleize
  end
end
