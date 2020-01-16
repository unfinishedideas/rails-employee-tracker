require 'rails_helper'

describe Division do
  # it { should have_many(:employees) }
  it { should have_and_belong_to_many(:employees) }
end

describe Division do
  it("titleizes the name of an employee") do
    division = Division.create({division_name: "giant steps"})
    expect(division.division_name()).to(eq("Giant Steps"))
  end
end
