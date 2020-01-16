require 'rails_helper'

describe Division do
  # it { should have_many(:employees) }
  it { should have_and_belong_to_many(:employees) }
end
