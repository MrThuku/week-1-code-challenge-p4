class RestaurantsController < ApplicationController

    #GET /restaurants
    def index
        restaurants = Restaurant.all
        render json: restaurants
    end
    
    #GET /restaurant/:id
    def show 
        restaurant = find_restaurant
        if restaurant
            render json: restaurant, include: :pizzas
        else
            render json: {error: "Restaurant not found"}, status: :not_found
        end
    end

    #POST /restaurant
    def create
        restaurant = Restaurant.create(restaurant_params)
        if restaurant
            render json: restaurant, status: :created
        else
            render json: {error: "Restaurant not found"}, status: :not_found
        end
    end

    #DELETE /restaurant/:id
    def destroy
        restaurant = find_restaurant
        if restaurant
            restaurant.destroy
            head :no_content
        else
            render json: {error: "Restaurant not found"}, status: :not_found
        end
    end

    private

    def find_restaurant
        Restaurant.find_by(id: params[:id])
    end

    def restaurant_params
        params.permit(:name, :address)
    end

end
