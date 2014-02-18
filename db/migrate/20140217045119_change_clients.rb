class ChangeClients < ActiveRecord::Migration
  def change
  	change_table :clients do |t|
  		t.remove :personType
  		t.integer :clientType_id
  	end
  end
end
