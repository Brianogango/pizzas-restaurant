class OrdersController < ApplicationController
  def index
    orders = Order.all.includes(:user, :restaurant)
    render json: orders.as_json(include: {user: {only: [:username]},
        restaurant:{only: [:name]}})
  end

  def show
    order = Order.find(params[:id])
    render json: orderas_json(include: {user: {only: [:username]},
        restaurant:{only: [:name]}})
  end

  def create
    order = Order.create(order_params)
    if order.valid?
      render json: order, status: :created
    else
      render json: order.errors, status: :unprocessable_entity
    end
  end

  def update
    order = Order.find(params[:id])

    if order.update(order_params)
      render json: order,status: :accepted
    else
      render json: order.errors, status: :unprocessable_entity
    end
  end

  def destroy
    order = Order.find(params[:id])
    order.destroy
    head :no_content
  end

  private

  def order_params
    params.permit(:size, :toppings, :user_id, :restaurant_id )
  end

end
