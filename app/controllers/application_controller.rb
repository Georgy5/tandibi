class ApplicationController < ActionController::Base
  layout :layout_by_resource

  private
    def member_controller?
      return false if controller_path == "home"
      true
    end

    def layout_by_resource
      case
      when devise_controller? then "session"
      when member_controller? then "member"
      else "application"
      end
    end

    def layout_by_resource
      devise_controller? ? "session" : "application"
    end
  
  protected
    def config_devise_params
      devise_parameter_sanitizer.permit(:sign_up, keys: [
        :first_name,
        :last_name,
        :username,
        :email,
        :password,
        :password_confirmation
      ])
    end
end
