class Membership < ApplicationRecord
  belongs_to :planning
  belongs_to :user
end
