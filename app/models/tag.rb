class Tag < ActiveRecord::Base
  validates :name, :presence => true
  validates :name, :uniqueness => true
  has_many :tagged_recipes
  has_many :recipes, through: :tagged_recipes
end
