require 'rails_helper'

describe Employee do
  it { should have_and_belong_to_many(:projects) }
  it { should have_and_belong_to_many(:divisions) }
end

# describe Employee do
#   it { should belong_to(:division) }
# end
