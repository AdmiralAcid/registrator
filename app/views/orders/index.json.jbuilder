json.array!(@orders) do |order|
  json.extract! order, :orderNumber, :utuSendingDate, :uasDate, :performDate, :performer, :applyNumber, :contractNumber, :service_id, :orderType_id, :cost, :portsNumber, :phoneNumber, :nameOrFIO, :street, :house, :building, :apartmentOrOffice, :floor, :entrance, :responsiblePerson, :comments, :contactData, :clientType_id, :formingDate, :aoReturningDate
  json.url order_url(order, format: :json)
end