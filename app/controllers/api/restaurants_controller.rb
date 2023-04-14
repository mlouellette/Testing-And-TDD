class Api::RestaurantsController < ApplicationController
    def index
      @restaurants = Restaurant.all
      price_range = params[:price_range]
      rating = params[:rating]
      if price_range.present? || rating.present?
        range1 = 1..5
        range2 = 1..3
        if rating.present? && !range1.cover?(rating.to_i)
          render json: { error: "Invalid rating or price range" }, status: 422
          return
        end
        if price_range.present? && !range2.cover?(price_range.to_i)
          render json: { error: "Invalid rating or price range" }, status: 422
          return
        end
        @restaurants = @restaurants.where(price_range: price_range) if price_range.present?
        @restaurants = @restaurants.joins(:orders).where(orders: { restaurant_rating: rating }) if rating.present?
      end
      result = @restaurants.map do |restaurant|
        {
          id: restaurant.id,
          name: restaurant.name,
          price_range: restaurant.price_range,
          rating: restaurant.orders.average(:restaurant_rating).to_i
        }
      end
      render json: result, status: :ok
    end
  end