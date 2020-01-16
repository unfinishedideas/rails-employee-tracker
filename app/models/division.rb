class Division < ApplicationRecord
  has_and_belongs_to_many(:employees)
end
