require 'rails_helper'

RSpec.describe PricingPolicyLogic do
  let(:country) { Fabricate(:country) }
  let(:flexible_organization) { Fabricate(:organization, pricing_policy: :flexible) }
  let!(:fixed_organization) { Fabricate(:organization, pricing_policy: :fixed, parent: flexible_organization) }
  let!(:prestige_organization) { Fabricate(:organization, pricing_policy: :prestige, parent: flexible_organization) }

  before(:each) do
    stub_request(:get, 'http://reuters.com/')
      .to_return(status: 200, body: File.new(Rails.root.join('spec/assets/reuters.html')))

    stub_request(:get, 'https://developer.github.com/v3/')
      .to_return(status: 200, body: File.new(Rails.root.join('spec/assets/github.html')))

    stub_request(:get, 'http://www.yourlocalguardian.co.uk/sport/rugby/rss/')
      .to_return(status: 200, body: File.new(Rails.root.join('spec/assets/rugby.xhtml')))
  end

  it 'should return right prices' do
    result = PricingPolicyLogic.new(id: flexible_organization.id, base_price: 100).process
    expect(result[:status]).to eq(200)
    expect(result[:prices]).to eq({
      flexible_organization.id => 104,
      fixed_organization.id => 116,
      prestige_organization.id => 151
    })
  end

  it 'should return on wrong parameters' do
    result = PricingPolicyLogic.new(id: flexible_organization.id, base_price: nil).process
    expect(result[:status]).to eq(400)
    expect(result[:prices]).to eq({})
  end
end
