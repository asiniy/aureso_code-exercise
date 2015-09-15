class User < ActiveRecord::Base
  devise :database_authenticatable,  :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :username, presence: true, uniqueness: true
  validates :admin, inclusion: [true, false]
end
