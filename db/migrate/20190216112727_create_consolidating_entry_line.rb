class CreateConsolidatingEntryLine < ActiveRecord::Migration[5.2]
  def change
    create_table :consolidating_entry_lines do |t|
      t.decimal :amount, null: false, default: 0

      t.timestamps null: false
    end

    add_reference :consolidating_entry_lines, :consolidating_entry, foreign_key: true
  end
end
