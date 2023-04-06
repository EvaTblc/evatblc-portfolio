class AddColumnToContacts < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :name, :string
    add_column :contacts, :email, :string
    add_column :contacts, :message, :text
    add_column :contacts, :nickname, :string
  end
end
