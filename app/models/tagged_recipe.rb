class Tagged_recipe < ActiveRecord::Base
  validates :recipe_id, :presence => true
  validates :tag_id, :presence => true
  belongs_to :recipe
  belongs_to :tag
end
