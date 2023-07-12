class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :First_Name, :string
    add_column :users, :Last_Name, :string 
    add_column :users, :City, :string 
    add_column :users, :Country, :string  
    add_column :users, :Phone_number, :bigint  
  end
end
