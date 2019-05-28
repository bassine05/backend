class CreateFacturations < ActiveRecord::Migration[5.2]
  def change
    create_table :facturations do |t|
      t.integer :num
      t.decimal :account
      t.decimal :remise
      t.date :dateEnvoi
      t.date :dateLimite
      t.references :registrar, foreign_key: true

      t.timestamps
    end
  end
end
