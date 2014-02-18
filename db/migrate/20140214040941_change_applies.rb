class ChangeApplies < ActiveRecord::Migration
  def change
  	change_table :applies do |t|
  		t.remove :phoneApplyStatus, :internetApplyStatus, :iptvApplyStatus, :clientType
  		t.integer :phoneApplyStatus, :internetApplyStatus, :iptvApplyStatus, :clientType_id
  	end 
  end
end