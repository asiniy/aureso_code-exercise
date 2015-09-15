class ModelTypePricesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create
    result = PricingPolicyLogic.new(model_type_params).process
    render json: result[:prices], status: result[:status]
  end

private

  def model_type_params
    params.permit(:base_price, :id)
  end
end
