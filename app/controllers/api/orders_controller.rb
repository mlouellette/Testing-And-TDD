module Api
    class OrdersController < ActionController::Base
      skip_before_action :verify_authenticity_token

      # POST /api/order/:id/status
      def set_status
        status = params[:status]
        id = params[:id]
  
        unless status.present? && status.in?(["pending", "in progress", "delivered"])
          return render json: { error: "Invalid status" }, status: 422
        end
  
        order = Order.find_by(id: id)
        unless order
          return render json: { error: "Invalid order" }, status: 422
        end
  
        order.update(order_status_id: OrderStatus.find_by(name: status)&.id)
        render json: { status: order.order_status.name }, status: :ok
      end
  
    end
  end