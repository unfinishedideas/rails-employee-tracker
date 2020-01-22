require 'rails_helper'

describe Employee do
  it { should have_and_belong_to_many(:projects) }
  it { should have_and_belong_to_many(:divisions) }
  it { should validate_presence_of(:employee_name) }
  it { should validate_length_of(:employee_name).is_at_least(2) }

  it("titleizes the name of an employee") do
    # employee = Employee.create({employee_name: "giant steps"})
    employee = FactoryBot.create(:employee)
    expect(employee.employee_name()).to(eq("Tim"))
  end

  it("Able to search for employees") do
    employee = FactoryBot.create(:employee)
    expect(Employee.search_term("Tim")).to(eq([employee]))
  end
end
