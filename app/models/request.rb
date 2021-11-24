class Request < ApplicationRecord
  broadcasts_to ->(_request) { :requests }
end
