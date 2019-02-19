class SubscriptionsController < ApplicationController
  skip_before_action :authenticate_user

  def index
    render json: Subscription.all
  end
end
