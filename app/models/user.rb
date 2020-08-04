class User < ApplicationRecord
  has_many :memberships
  has_many :plannings, through: :memberships
end
