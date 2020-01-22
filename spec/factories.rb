FactoryBot.define do
  factory(:division) do
    division_name {'blueberry kush'}
  end
  factory(:employee) do
    employee_name { 'Tim' }
  end
  factory(:project) do
    project_name { "Omega Project" }
  end
end
