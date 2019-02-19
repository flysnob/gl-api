class SessionsController < Devise::SessionsController
  # clear_respond_to
  respond_to :json

  # For security purposes, Devise just authenticates an user
  # from the params hash if we explicitly allow it to. That's
  # why we need to call the before filter below.
  # before_action :show_params
  # before_action :allow_params_authentication!, :only => :create

  def show_params
    Rails.logger.info(params)
  end
end
