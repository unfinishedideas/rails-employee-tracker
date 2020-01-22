require 'rails_helper'

describe Division do
  it { should have_and_belong_to_many(:employees) }
  it { should validate_presence_of(:division_name) }

  it("titleizes the name of an employee") do
    division = FactoryBot.create(:division)
    expect(division.division_name()).to(eq("Blueberry Kush"))
  end

  it("Able to search for divisions") do
    division = FactoryBot.create(:division)
    expect(Division.search_term("Blueberry")).to(eq([division]))
  end
end
