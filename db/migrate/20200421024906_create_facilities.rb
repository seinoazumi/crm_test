class CreateFacilities < ActiveRecord::Migration[6.0]
  def change
    create_table :facilities do |t|
      t.string :name, null: false
      t.text :description
      t.string :postal_code, null: false
      t.string :prefecture, null: false
      t.string :adress1, null: false
      t.string :adress2, null: false
      t.string :building
      t.string :tel
      t.string :fax
      t.string :url
      t.timestamps
    end
  end
end
