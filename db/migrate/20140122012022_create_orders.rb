class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :orderNumber
      t.date :utuSendingDate
      t.date :uasDate
      t.date :performDate
      t.text :performer
      t.integer :applyNumber
      t.integer :contractNumber
      t.text :service
      t.text :orderType
      t.decimal :cost, precision: 7, scale: 2
      t.text :portsNumber
      t.text :phoneNumber
      t.text :nameOrFIO
      t.text :street
      t.integer :house
      t.text :building
      t.text :apartmentOrOffice
      t.text :floor
      t.text :entrance
      t.text :responsiblePerson
      t.text :comments
      t.text :contactData
      t.text :personType
      t.date :formingDate
      t.date :aoReturningDate

      t.timestamps
    end
  end
end
