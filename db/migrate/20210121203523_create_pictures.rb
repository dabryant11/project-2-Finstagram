class CreatePictures < ActiveRecord::Migration[6.0]
  def change
    create_table :pictures do |t|
      t.integer :user_id
      t.string :image_url
      t.string :title

      t.timestamps
    end
  end
end
