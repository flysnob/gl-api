class RegistrationsController < Devise::SessionsController
  skip_before_action :require_no_authentication

  clear_respond_to
  respond_to :json

  private

  def sign_up(_resource_name, _resource)
    true
  end
end
