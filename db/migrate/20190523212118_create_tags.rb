class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :name
      t.text :description
      t.string :motif

      t.timestamps
    end
  end
end
