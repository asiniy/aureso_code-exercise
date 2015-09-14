require 'rails_helper'

RSpec.describe Country, type: :model do
  it 'has a valid fabricator' do
    expect(Fabricate.build(:country)).to be_valid
  end
end
