json.array!(@applies) do |apply|
  json.extract! apply, :applyNumber, :phoneApplyDate, :internetApplyDate, :iptvApplyDate, :nameOrFIO, :street, :house, :building, :apartmentOrOffice, :floor, :entrance, :phoneApplyStatus, :internetApplyStatus, :iptvApplyStatus, :applyTreatedBy, :plannedPhoneInstallDate, :plannedInternetInstallDate, :phoneComments, :internetComments, :phoneContractNumber, :phoneContractDate, :phonePorts, :phoneContractConcludedBy, :phonePaymentDate, :phoneDocsPassDate, :phoneInstallDate, :internetContractNumber, :internetContractDate, :internetPorts, :internetContractConcludedBy, :internetPaymentDate, :internetDocsPassDate, :internetInstallDate, :iptvContractNumber, :iptvContractDate, :iptvPorts, :iptvContractConcludedBy, :iptvPaymentDate, :iptvInstallDate, :setToBox, :clientType, :insertionDate
  json.url apply_url(apply, format: :json)
end