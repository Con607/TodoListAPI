class ApplicationController < ActionController::API

  # This 2 lines added to avoid devise flash messages
  include ActionController::MimeResponds
  respond_to :json

end
