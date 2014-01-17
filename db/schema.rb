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

ActiveRecord::Schema.define(version: 20140117044223) do

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

end
