class AddContactStatusToContacts < ActiveRecord::Migration[5.2]
  def change
    add_column :contacts, :status, :integer
  end
end