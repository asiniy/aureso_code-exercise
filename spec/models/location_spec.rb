require 'rails_helper'

RSpec.describe Location, type: :model do
  it 'has a valid fabricator' do
    expect(Fabricate.build(:location)).to be_valid
  end
end
