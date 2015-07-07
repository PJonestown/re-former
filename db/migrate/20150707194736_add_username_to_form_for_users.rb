class AddUsernameToFormForUsers < ActiveRecord::Migration
  def change
    remove_column :form_for_users, :email, :string 
    add_column :form_for_users, :username, :string
  end
end
