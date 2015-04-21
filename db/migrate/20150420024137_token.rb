class Token < ActiveRecord::Migration
  def change

  	add_column :usuarios,:authentication_token,:string
  end
end
