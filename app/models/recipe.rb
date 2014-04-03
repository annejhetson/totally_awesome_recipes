class Recipe < ActiveRecord::Base
  validates :name, :presence => true
  validates :picture, :presence => true
  validates :description, :uniqueness => true
  has_many :tagged_recipes
  has_many :tags, through: :tagged_recipes
end
