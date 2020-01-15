require 'rails_helper'

describe Project do
  it { should have_and_belong_to_many(:employees) }
end
