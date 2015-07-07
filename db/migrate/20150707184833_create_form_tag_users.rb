class CreateFormTagUsers < ActiveRecord::Migration
  def change
    create_table :form_tag_users do |t|
      t.string :username
      t.string :password

      t.timestamps null: false
    end
  end
end
