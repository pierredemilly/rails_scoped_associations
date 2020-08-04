class Institution < ApplicationRecord
  # UNSCOPED ASSOCIATIONS
  has_many :plannings
  has_many :users, through: :plannings

  # SCOPED ASSOCIATIONS
  has_many :active_plannings, -> { active.real }, class_name: 'Planning', foreign_key: :institution_id
  has_many :members, through: :active_plannings, source: :users
end
