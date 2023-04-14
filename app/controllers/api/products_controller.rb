module Api
    class ProductsController < ActionController::Base
      skip_before_action :verify_authenticity_token

      # GET /api/products
      def index
        data = params[:restaurant]

        if data.nil?
          @products = Product.select(:id, :name, :cost)
          render json: @products, status: :ok

        elsif Restaurant.exists?(data)
          restaurant = Restaurant.find(data)
          @products = restaurant.products.select(:id, :name, :cost)
          render json: @products, status: :ok

        else
          render json: { error: "Invalid restaurant ID" }, status: 422
          
        end
      end
    end
  end