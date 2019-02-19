class CreateYear < ActiveRecord::Migration[5.2]
  def change
    create_table :years do |t|
      t.integer :year, null: false
      t.string :yearend, null: false, default: '12/31'

      t.timestamps null: false
    end

    add_reference :years, :entity, foreign_key: true
  end
end
