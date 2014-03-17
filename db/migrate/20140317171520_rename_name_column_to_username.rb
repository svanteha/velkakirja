class RenameNameColumnToUsername < ActiveRecord::Migration
  def change
    rename_column :debts, :sender_id, :user_id
  end
end
