class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.text :service

      t.timestamps
    end
  end
end
