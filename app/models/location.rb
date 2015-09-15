class Location < ActiveRecord::Base
  belongs_to :organization

  validates :name, :address, :organization, presence: true
end
