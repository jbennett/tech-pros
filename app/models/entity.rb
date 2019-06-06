class Entity < ApplicationRecord

  # scope
  scope :default_sorting, -> { order('profiles.name').left_joins(:profile) }
  scope :search, ->(search) do
    lower = search.downcase

    searches = [
      'lower(profiles.name) LIKE :f',
      'lower(profiles.short_description) LIKE :f',
      'lower(profiles.long_description) LIKE :f',
      ':s = ANY(profiles.tags)',
    ]

    where(searches.join(' OR '), s: search, f: "%#{search}%")
  end

  # associations
  has_one :profile

end
