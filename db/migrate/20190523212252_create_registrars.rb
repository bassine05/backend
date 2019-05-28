class CreateRegistrars < ActiveRecord::Migration[5.2]
  def change
    create_table :registrars do |t|
      t.string :name
      t.string :phone
      t.string :fax
      t.string :mail
      t.string :url
      t.string :adresse
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
