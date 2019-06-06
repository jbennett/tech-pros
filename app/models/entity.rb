class Entity < ApplicationRecord

  # scope
  scope :default_sorting, -> { order('profiles.name').left_joins(:profile) }

  # associations
  has_one :profile

end
