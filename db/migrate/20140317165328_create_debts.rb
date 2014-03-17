class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.decimal :amount
      t.string :description
      t.integer :sender_id
      t.integer :receiver_id

      t.timestamps
    end
  end
end
