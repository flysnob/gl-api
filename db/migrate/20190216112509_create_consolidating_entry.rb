class CreateConsolidatingEntry < ActiveRecord::Migration[5.2]
  def change
    create_table :consolidating_entries do |t|
      t.string :description
      t.datetime :date

      t.timestamps null: false
    end

    add_reference :consolidating_entries, :entity, foreign_key: true
  end
end
