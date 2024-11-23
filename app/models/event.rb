class Event < ApplicationRecord
  validates :name, :slug, :starts_at, :ends_at, presence: true
end
