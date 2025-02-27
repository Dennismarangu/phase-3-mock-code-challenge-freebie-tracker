class CreateFreebies < ActiveRecord::Migration[6.0]
  def change
    create_table :freebies do |t|
      t.string :item_name
      t.integer :value
      t.belongs_to :dev, foreign_key: true
      t.belongs_to :company, foreign_key: true

      t.timestamps
    end
  end
end

