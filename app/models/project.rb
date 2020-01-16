class Project < ApplicationRecord
  has_and_belongs_to_many(:employees)

  before_save(:titleize_project)

  scope :search_term, -> (search_param) { where("project_name like ?", "%#{search_param}%") }

  validates :project_name, presence: true

  private
  def titleize_project
    self.project_name = self.project_name.titleize
  end
end
