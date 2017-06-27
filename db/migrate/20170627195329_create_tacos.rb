class CreateTacos < ActiveRecord::Migration[5.1]
  def change
    create_table :tacos do |t|
      t.integer :meat, default: 0, null: false
      t.text :notes
      t.boolean :rice, default: false
      t.boolean :salsa, default: false

      t.timestamps
    end
  end
end
