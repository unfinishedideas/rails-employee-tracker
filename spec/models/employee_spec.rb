require 'rails_helper'

describe Employee do
  it { should have_and_belong_to_many(:projects) }
  it { should have_and_belong_to_many(:divisions) }
end

describe Employee do
  it("titleizes the name of an employee") do
    employee = Employee.create({employee_name: "giant steps"})
    expect(employee.employee_name()).to(eq("Giant Steps"))
  end
end


# describe Employee do
#   it { should belong_to(:division) }
# end
