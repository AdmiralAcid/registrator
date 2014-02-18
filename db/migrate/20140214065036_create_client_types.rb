class CreateClientTypes < ActiveRecord::Migration
  def change
    create_table :client_types do |t|
      t.text :client

      t.timestamps
    end
  end
end
