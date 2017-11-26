class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :full_name
      t.string :contact_title
      t.string :company
      t.string :phone
      t.string :email
      t.text :question
      t.text :other_topics
      t.string :best_method
      t.string :best_time

      t.timestamps null: false
    end
  end
end
