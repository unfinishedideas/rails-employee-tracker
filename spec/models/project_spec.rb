require 'rails_helper'

describe Project do
  it { should have_and_belong_to_many(:employees) }
end

describe Project do
  it("titleizes the name of an employee") do
    # project = Project.create({project_name: "giant steps"})
    project = FactoryBot.create(:project)
    expect(project.project_name()).to(eq("Omega Project"))
  end
end
