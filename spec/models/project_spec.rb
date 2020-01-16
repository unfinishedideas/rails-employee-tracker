require 'rails_helper'

describe Project do
  it { should have_and_belong_to_many(:employees) }
end

describe Project do
  it("titleizes the name of an employee") do
    project = Project.create({project_name: "giant steps"})
    expect(project.project_name()).to(eq("Giant Steps"))
  end
end
