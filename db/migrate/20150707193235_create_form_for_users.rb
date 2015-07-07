class CreateFormForUsers < ActiveRecord::Migration
  def change
    create_table :form_for_users do |t|
      t.string :email
      t.string :password

      t.timestamps null: false
    end
  end
end
