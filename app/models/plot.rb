class Plot < ApplicationRecord
  belongs_to :site
  has_many :placings
  has_many :users, through: :placings
end
