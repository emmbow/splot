class Site < ApplicationRecord
  has_many :plots, dependent: :destroy
end
