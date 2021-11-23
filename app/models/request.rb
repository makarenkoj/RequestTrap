class Request < ApplicationRecord
  # after_create_commit { RequestBroadcastJob.perform_later self }

  broadcasts_to ->(_request) { :requests }
end
