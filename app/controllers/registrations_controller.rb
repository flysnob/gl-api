class RegistrationsController < Devise::RegistrationsController
  skip_before_action :require_no_authentication

  clear_respond_to
  respond_to :json

  def create
    build_resource(sign_up_params)

    resource.save
    render_resource(resource)
  end

  def sign_up(_resource_name, _resource)
    true
  end
end
