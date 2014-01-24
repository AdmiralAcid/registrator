class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.text :nameOrFIO
      t.text :personType
      t.integer :phoneContractNumber
      t.integer :internetContractNumber
      t.text :phoneNumber
      t.text :faxNumber
      t.text :email
      t.text :representPosition
      t.text :representFIO
      t.text :contactPerson
      t.text :inn
      t.text :kpp
      t.text :ogrn
      t.text :okpo
      t.text :okonkh
      t.text :okwed
      t.text :passportData
      t.text :legalAddress
      t.text :postAddress
      t.text :connectionPointAddress
      t.text :bankName
      t.text :bankBIK
      t.text :bankCorrAccount
      t.text :currentAccount
      t.text :additionalInfo
      t.text :placeOfBirth
      t.date :dateOfBirth
      t.text :persCabPhoneLogin
      t.text :persCabPhonePasswd
      t.text :persCabInternetLogin
      t.text :persCabInternetPasswd
      t.text :benefitDocument
      t.date :phoneContractDate
      t.date :internetContractDate
      t.text :contractAcceptor

      t.timestamps
    end
  end
end
