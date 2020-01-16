class Division < ApplicationRecord
  has_and_belongs_to_many(:employees)

  before_save(:titleize_division)

  private
  def titleize_division
    self.division_name = self.division_name.titleize
  end
end
