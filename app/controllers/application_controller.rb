class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :layout_by_resource

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end
  
  private 
  def layout_by_resource
    if devise_controller? && resource_name == :user
      "account"
    else
      "application"
    end
  end
  
end
