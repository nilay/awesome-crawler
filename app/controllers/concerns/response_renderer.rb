module ResponseRenderer

  ERRORS_LINK = "https://github.com/nilay/error"

  extend ActiveSupport::Concern

  included do ;  end

  module ClassMethods ;  end

  # Common method to render success response inside this module
  def render_success success: true, message: nil, data: nil, status: 200
    render json: { success: success, message: message, data: data }, status: status
  end

  # Common method to render error response inside this module
  def render_fail message: nill, status: 400
    render json: { success: false, error: message, status_code: status, link: ERRORS_LINK }, status: status
  end

 end
