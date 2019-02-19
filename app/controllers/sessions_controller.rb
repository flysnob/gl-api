class SessionsController < Devise::SessionsController
  # clear_respond_to
  respond_to :json

  # For security purposes, Devise just authenticates an user
  # from the params hash if we explicitly allow it to. That's
  # why we need to call the before filter below.
  before_action :allow_params_authentication!, :only => :create

  def new
    @user = User.new(params[:user])
  end

  def create
    # Since the authentication happens in the rack layer,
    # we need to tell Devise to call the action "sessions#new"
    # in case something goes bad. Feel free to change it.
    user = authenticate_user!(:recall => "sessions#new")
    sign_in user
    render json: { user: user }, status: :ok
  end

  def destroy
    sign_out
    render json: { user: user }, status: :ok
  end
end
