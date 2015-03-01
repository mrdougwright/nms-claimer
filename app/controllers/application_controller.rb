class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  # after_filter need to add devise

protected

  def json_saved(model, message=nil)
    if model.valid?
      render json: model, status: 200
    else
      render json: model.errors.full_messages, status: :unprocessable
    end
  end

end
