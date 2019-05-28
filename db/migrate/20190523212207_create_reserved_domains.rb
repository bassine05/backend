class CreateReservedDomains < ActiveRecord::Migration[5.2]
  def change
    create_table :reserved_domains do |t|
      t.string :code_auth
      t.text :motif
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
