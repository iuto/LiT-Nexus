class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :mail, null: false
      t.string :password_digest, null: false
    end
  end
end
