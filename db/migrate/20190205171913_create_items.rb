class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name, uniqness: true
      t.text :description
      t.decimal :price

      t.timestamps
    end
  end
end
