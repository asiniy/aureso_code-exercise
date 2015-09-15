class Organization < ActiveRecord::Base
  has_ancestry
  belongs_to :country

  enum type: [:show_room, :service, :dealer]
  enum pricing_policy: [:flexible, :fixed, :prestige]

  validates :name, :type, :pricing_policy, :country, presence: true

  self.inheritance_column = nil
end
