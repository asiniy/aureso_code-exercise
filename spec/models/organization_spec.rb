require 'rails_helper'

RSpec.describe Organization, type: :model do
  it 'has a valid fabricator' do
    expect(Fabricate.build(:organization)).to be_valid
  end
end
