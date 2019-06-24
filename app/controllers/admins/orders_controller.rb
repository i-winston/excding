class Admins::OrdersController < ApplicationController
  before_action :authenticate_admin!
  def index
    @orders = Order.all
    @orders = Order.order("created_at DESC")
  end

  def update
    order = Order.find(params[:id])
    order.update(order_params)
    redirect_to admins_endusers_path
  end

  private

  def order_params
    params.require(:order).permit(:order_status)
  end
end
