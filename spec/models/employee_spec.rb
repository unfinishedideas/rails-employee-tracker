require 'rails_helper'

describe Employee do
  it { should have_and_belong_to_many(:projects) }
  it { should have_and_belong_to_many(:divisions) }
end

describe Employee do
  it("titleizes the name of an employee") do
    # employee = Employee.create({employee_name: "giant steps"})
    employee = FactoryBot.create(:employee)
    expect(employee.employee_name()).to(eq("Tim"))
  end
end

describe Employee do
  it { should validate_presence_of(:employee_name) }
end

describe Employee do
  it { should validate_length_of(:employee_name).is_at_least(2) }
end
