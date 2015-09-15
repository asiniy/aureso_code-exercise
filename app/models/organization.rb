class Organization < ActiveRecord::Base
  belongs_to :country
  has_many :locations, dependent: :destroy
  has_ancestry

  enum type: [:show_room, :service, :dealer]
  enum pricing_policy: [:flexible, :fixed, :prestige]

  validates :name, :type, :pricing_policy, :country, presence: true

  self.inheritance_column = nil
end
