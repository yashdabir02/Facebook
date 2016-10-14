class CreateRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :registrations do |t|

    	t.string :firstname
    	t.string :lastname
    	t.integer :age
    	t.string :gender
    	t.string :username
    	t.string :password
    	t.string :confirm_password
    	t.string :email


        t.timestamps
    end
  end
end
