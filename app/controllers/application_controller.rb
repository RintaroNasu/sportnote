class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        case resource
        when Teacher
            teacher_path(resource)
        when Student
            student_path(resource)
        end
    end
    def after_sign_up_path_for(resource)
        case resource
        when Teacher
            teacher_path(resource)
        when Student
            student_path(resource)
        end
    end
    before_action :configure_permitted_parameters, if: :devise_controller?
    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :team, :teacher_id, :email, :password, :password_confirmation])
        devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :team, :teacher_id, :email, :password, :password_confirmation])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :teacher_id])
    end
end
