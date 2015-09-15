class ModelTypePricesController < ApplicationController
  def create
    result = PricingPolicyLogic.new(model_type_params).process
    render json: result[:prices], status: result[:status]
  end

private

  def model_type_params
    params.permit(:base_price, :id)
  end
end
