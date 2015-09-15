class Country < ActiveRecord::Base
  has_many :organizations, dependent: :destroy
end
