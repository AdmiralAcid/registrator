class CreateApplyStatuses < ActiveRecord::Migration
  def change
    create_table :apply_statuses do |t|
      t.text :status

      t.timestamps
    end
  end
end
