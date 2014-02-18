class ChangeOrders < ActiveRecord::Migration
  def change
  	change_table :orders do |t|
  		t.remove :service, :orderType, :personType
  		t.integer :service_id, :orderType_id, :clientType_id
  	end
  end
end
