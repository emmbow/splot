class Plot < ApplicationRecord
  belongs_to :site
  has_many :placings
  has_many :users, through: :placings
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:plot_number],
    associated_against: {
      site: [:name, :address]
    },
    using: {
      tsearch: { prefix: true }
    }
end
