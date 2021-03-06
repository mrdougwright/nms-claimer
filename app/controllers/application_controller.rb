class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  # after_filter need to add devise

protected

  # for Devise and Rails 4.1
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
  end


  def json_saved(model, message=nil)
    if model.valid?
      render json: model, status: 200
    else
      render json: model.errors.full_messages, status: :unprocessable
    end
  end

end
