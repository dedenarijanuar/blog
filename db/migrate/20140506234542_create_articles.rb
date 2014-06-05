class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :user_id
      t.string :title_id
      t.string :title_en
      t.text :content_id
      t.text :content_en
      t.boolean :is_active
      t.integer :viewed
      t.string :slug
      t.string :category_id

      t.timestamps
    end
  end
end
