class CreateTarifications < ActiveRecord::Migration[5.2]
  def change
    create_table :tarifications do |t|
      t.decimal :price
      t.string :type
      t.date :year

      t.timestamps
    end
  end
end
