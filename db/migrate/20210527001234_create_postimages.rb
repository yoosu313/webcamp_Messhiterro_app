class CreatePostimages < ActiveRecord::Migration[5.2]
  def change
    create_table :postimages do |t|
      t.text :shop_name
      t.string :image_id
      t.text :caption
      t.integer :user_id

      t.timestamps
    end
  end
end
