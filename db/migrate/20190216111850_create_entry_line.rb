class CreateEntryLine < ActiveRecord::Migration[5.2]
  def change
    create_table :entry_lines do |t|
      t.decimal :amount, null: false

      t.timestamps null: false
    end

    add_reference :entry_lines, :entry, foreign_key: true
  end
end
