class ChengeDataDeletedAtToEndusers < ActiveRecord::Migration[5.2]
  def change
    change_column :endusers, :deleted_at, :datetime, null: true
  end
end
