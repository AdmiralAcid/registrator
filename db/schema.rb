# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140122053512) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applies", force: true do |t|
    t.integer  "applyNumber"
    t.date     "phoneApplyDate"
    t.date     "internetApplyDate"
    t.date     "iptvApplyDate"
    t.text     "nameOrFIO"
    t.text     "street"
    t.integer  "house"
    t.text     "building"
    t.integer  "apartmentOrOffice"
    t.integer  "floor"
    t.integer  "entrance"
    t.text     "phoneApplyStatus"
    t.text     "internetApplyStatus"
    t.text     "iptvApplyStatus"
    t.text     "applyTreatedBy"
    t.date     "plannedPhoneInstallDate"
    t.date     "plannedInternetInstallDate"
    t.text     "phoneComments"
    t.text     "internetComments"
    t.integer  "phoneContractNumber"
    t.date     "phoneContractDate"
    t.integer  "phonePorts"
    t.text     "phoneContractConcludedBy"
    t.date     "phonePaymentDate"
    t.date     "phoneDocsPassDate"
    t.date     "phoneInstallDate"
    t.integer  "internetContractNumber"
    t.date     "internetContractDate"
    t.integer  "internetPorts"
    t.text     "internetContractConcludedBy"
    t.date     "internetPaymentDate"
    t.date     "internetDocsPassDate"
    t.date     "internetInstallDate"
    t.integer  "iptvContractNumber"
    t.date     "iptvContractDate"
    t.integer  "iptvPorts"
    t.text     "iptvContractConcludedBy"
    t.date     "iptvPaymentDate"
    t.date     "iptvInstallDate"
    t.boolean  "setToBox"
    t.text     "clientType"
    t.date     "insertionDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", force: true do |t|
    t.text     "nameOrFIO"
    t.text     "personType"
    t.integer  "phoneContractNumber"
    t.integer  "internetContractNumber"
    t.text     "phoneNumber"
    t.text     "faxNumber"
    t.text     "email"
    t.text     "representPosition"
    t.text     "representFIO"
    t.text     "contactPerson"
    t.text     "inn"
    t.text     "kpp"
    t.text     "ogrn"
    t.text     "okpo"
    t.text     "okonkh"
    t.text     "okwed"
    t.text     "passportData"
    t.text     "legalAddress"
    t.text     "postAddress"
    t.text     "connectionPointAddress"
    t.text     "bankName"
    t.text     "bankBIK"
    t.text     "bankCorrAccount"
    t.text     "currentAccount"
    t.text     "additionalInfo"
    t.text     "placeOfBirth"
    t.date     "dateOfBirth"
    t.text     "persCabPhoneLogin"
    t.text     "persCabPhonePasswd"
    t.text     "persCabInternetLogin"
    t.text     "persCabInternetPasswd"
    t.text     "benefitDocument"
    t.date     "phoneContractDate"
    t.date     "internetContractDate"
    t.text     "contractAcceptor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.integer  "orderNumber"
    t.date     "utuSendingDate"
    t.date     "uasDate"
    t.date     "performDate"
    t.text     "performer"
    t.integer  "applyNumber"
    t.integer  "contractNumber"
    t.text     "service"
    t.text     "orderType"
    t.decimal  "cost",              precision: 7, scale: 2
    t.text     "portsNumber"
    t.text     "phoneNumber"
    t.text     "nameOrFIO"
    t.text     "street"
    t.integer  "house"
    t.text     "building"
    t.integer  "apartmentOrOffice"
    t.integer  "floor"
    t.integer  "entrance"
    t.text     "responsiblePerson"
    t.text     "comments"
    t.text     "contactData"
    t.text     "personType"
    t.date     "formingDate"
    t.date     "aoReturningDate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
