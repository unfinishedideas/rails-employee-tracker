require 'rails_helper'

describe Project do
  it { should have_and_belong_to_many(:employees) }
  it { should validate_presence_of(:project_name) }

  it("titleizes the name of an employee") do
    project = FactoryBot.create(:project)
    expect(project.project_name()).to(eq("Omega Project"))
  end
  it("Able to search for projects") do
    project = FactoryBot.create(:project)
    expect(Project.search_term("Omega")).to(eq([project]))
  end
end
