class Project < ApplicationRecord
  has_and_belongs_to_many(:employees)

  before_save(:titleize_project)

  private
  def titleize_project
    self.project_name = self.project_name.titleize
  end
end
