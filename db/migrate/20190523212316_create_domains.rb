class CreateDomains < ActiveRecord::Migration[5.2]
  def change
    create_table :domains do |t|
      t.string :name
      t.datetime :expiration_date
      t.string :status
      t.references :registrar, foreign_key: true
      t.references :contact, foreign_key: true
      t.references :extension, foreign_key: true
      t.references :operation, foreign_key: true

      t.timestamps
    end
  end
end
