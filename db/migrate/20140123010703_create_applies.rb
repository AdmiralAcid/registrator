class CreateApplies < ActiveRecord::Migration
  def change
    create_table :applies do |t|
      t.integer :applyNumber
      t.date :phoneApplyDate
      t.date :internetApplyDate
      t.date :iptvApplyDate
      t.text :nameOrFIO
      t.text :street
      t.integer :house
      t.text :building
      t.text :apartmentOrOffice
      t.text :floor
      t.text :entrance
      t.text :phoneApplyStatus
      t.text :internetApplyStatus
      t.text :iptvApplyStatus
      t.text :applyTreatedBy
      t.date :plannedPhoneInstallDate
      t.date :plannedInternetInstallDate
      t.text :phoneComments
      t.text :internetComments
      t.integer :phoneContractNumber
      t.date :phoneContractDate
      t.text :phonePorts
      t.text :phoneContractConcludedBy
      t.date :phonePaymentDate
      t.date :phoneDocsPassDate
      t.date :phoneInstallDate
      t.integer :internetContractNumber
      t.date :internetContractDate
      t.text :internetPorts
      t.text :internetContractConcludedBy
      t.date :internetPaymentDate
      t.date :internetDocsPassDate
      t.date :internetInstallDate
      t.integer :iptvContractNumber
      t.date :iptvContractDate
      t.text :iptvPorts
      t.text :iptvContractConcludedBy
      t.date :iptvPaymentDate
      t.date :iptvInstallDate
      t.boolean :setToBox
      t.text :clientType
      t.date :insertionDate

      t.timestamps
    end
  end
end
