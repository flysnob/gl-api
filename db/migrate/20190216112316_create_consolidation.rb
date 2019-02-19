class CreateConsolidation < ActiveRecord::Migration[5.2]
  def change
    create_table :consolidations do |t|
      t.string :name

      t.timestamps null: false
    end

    add_reference :entities, :consolidation, foreign_key: true
  end
end
