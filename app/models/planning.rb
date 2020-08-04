class Planning < ApplicationRecord
  belongs_to :institution

  has_many :memberships
  has_many :users, through: :memberships

  scope :active, -> { where('activated_at <= ?', DateTime.current) }
  scope :real,   -> { where(real: true) }
end
