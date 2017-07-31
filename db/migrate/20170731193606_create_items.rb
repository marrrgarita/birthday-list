class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :title
      t.string :description
      t.string :image
      t.string :url
      t.integer :price
      
      t.timestamps
    end
  end
end
