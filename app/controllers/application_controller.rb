class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authorize

  private

  def authorize
    unless User.find_by_id(session[:user_id]) or User.count.zero?
      if request.format == Mime::HTML
        redirect_to login_url, notice: "Please log in"
      else
        authenticate_or_request_with_http_basic do |username, password|
          user = User.find_by_name(username)
          if user and user.authenticate(password)
            session[:user_id] = user.id
          else
            render status: 403, text: "login failed"
          end
        end
      end
    end
  end

  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end
end
