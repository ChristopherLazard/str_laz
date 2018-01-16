class CreatePhones < ActiveRecord::Migration[5.1]
  def change
    create_table :phones do |t|
      t.string :title
      t.float :price
      t.string :stars
      t.string :image_url

      t.timestamps
    end
  end
end
