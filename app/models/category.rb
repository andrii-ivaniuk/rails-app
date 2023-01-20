class Category < ApplicationRecord
  has_many :operations
  
  validates :name, presence: true
  validates :description, presence: true, uniqueness: { case_sensitive: false }
end
