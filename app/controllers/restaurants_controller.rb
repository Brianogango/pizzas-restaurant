class RestaurantsController < ApplicationController
   def index
  restaurants = Restaurant.all.includes(:reviews)
  render json: restaurants.as_json(include: {reviews: {only: [:rating, :comment]}})
end

    def show
        restaurant = Restaurant.find(params[:id])
        if restaurant.valid?
        render json: restaurant, status: :ok
        else
        render json: {error: 'not found'}, status: :not_found
        end
    end
    def create
        restaurant = Restaurant.create(restaurant_params)
        if
            restaurant.valid?
            render json: restaurant, status: :created
            
        else
            render json:{error: "unable to create restaurant"}, status: :unprocessable_entity
        end
    end
    def update
        restaurant = Restaurant.find(params[:id])
        if restaurant
        restaurant.update(restaurant_params)
        render json: restaurant, status: :accepted
        else
            render json:{error: "unable to update restaurant"}, status: :unprocess
        end
    end
    def destroy 
        restaurant = Restaurant.find(params[:id])
        restaurant.destroy
        head :no_content
    end


    private
    def restaurant_params
        params.permit(:name, :address, :cuisine)
    end
end
