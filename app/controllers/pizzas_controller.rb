class PizzasController < ApplicationController

    def index 
        pizzas = Pizza.all
        render json: pizzas
    end

    def create
        pizza = Pizza.create(pizza_params)
        if pizza
            render json: pizza, status: :created
        else
            render json: {error: "Pizza not created"}, status: :not_acceptable
        end
    end

    private

    def pizza_params
        params.permit(:name, :ingredients)
    end
end
