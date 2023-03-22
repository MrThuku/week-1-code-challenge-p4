class RestaurantPizzasController < ApplicationController
    
    # GET /restaurants_pizzas
    def index
        restaurant_pizzas = RestaurantPizza.all
        render json: restaurant_pizzas
    end

    # POST /restaurant_pizza
    def create
        restaurant_pizza = RestaurantPizza.create(restaurant_pizza_params)
        if restaurant_pizza.valid?
            render json: restaurant_pizza, status: :created
        else
            render json: {errors: restaurant_pizza.errors }, status: :unprocessable_entity
        end
    end

    def destroy
        restaurant_pizza = find_restaurant_pizza
        if restaurant_pizza
            restaurant_pizza.destroy
            head :no_content
        else
            render json: {error: "Restaurant_pizza does not exist"}, status: :not_found
        end
    end

    private

    def find_restaurant_pizza
        RestaurantPizza.find_by(id: params[:id])
    end

    def restaurant_pizza_params
        params.permit(:price, :restaurant_id, :pizza_id)
    end
end
