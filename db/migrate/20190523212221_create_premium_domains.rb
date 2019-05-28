class CreatePremiumDomains < ActiveRecord::Migration[5.2]
  def change
    create_table :premium_domains do |t|
      t.text :offre
      t.date :date_debut
      t.date :date_fin
      t.references :categorie, foreign_key: true

      t.timestamps
    end
  end
end
