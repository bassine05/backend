class CreateOperations < ActiveRecord::Migration[5.2]
  def change
    create_table :operations do |t|
      t.string :name
      t.text :type
      t.references :tarification, foreign_key: true

      t.timestamps
    end
  end
end
