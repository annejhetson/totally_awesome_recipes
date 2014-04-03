class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.column :name, :string
      t.column :description, :text
      t.column :picture, :string
      t.timestamps
    end

    create_table :tags do |t|
      t.column :name, :string
    end

    create_table :tagged_recipes do |t|
      t.column :recipe_id, :integer
      t.column :tag_id, :integer
    end
  end
end
