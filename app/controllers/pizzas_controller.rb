class PizzasController < ApplicationController
    def index
        pizzas = Pizza.all
        render json: pizzas
    end
    def show
        pizza = find_by
        render json: pizza, status: :found
    end
    def create
        pizza = Pizza.create(pizza_params)
        if pizza.valid?
            render json: pizza, status: :created
        else
            render json: {error: "  Unable to create pizza"}, status: :unprocessable_entity
        end
    end
    def update
        pizza = find_by
        if pizza
            pizza.update(pizza_params)
            render json: pizza, status: :accepted
        else
        render json: {error: " Unable to update"}, status: :unprocess
        end
    end
    def destroy
        pizza = find_by
        pizza.destroy
        head :no_content
    end

    private
    def find_by
        Pizza.find(params[:id])
    end
    def pizza_params
        params.permit(:name, :ingredients[], :restaurant_id)
    end
end
