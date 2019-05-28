class CreateServers < ActiveRecord::Migration[5.2]
  def change
    create_table :servers do |t|
      t.string :name
      t.string :ip_adress
      t.references :domain, foreign_key: true

      t.timestamps
    end
  end
end
