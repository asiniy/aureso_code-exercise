require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a valid fabricator' do
    expect(Fabricate.build(:user)).to be_valid
  end
end
