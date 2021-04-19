include ApplicationHelper
class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    include SessionsHelper

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
        rescue ActiveRecord::RecordNotFound
    end

    def top_two_tags
        @top_two_tags = Tag.all.order('view_counter DESC').first(2)
    end

    def set_last_active
        current_user.update_attribute(:last_active, Time.now)
    end

    helper_method :current_user
    helper_method :top_two_tags

    def authorize
        redirect_to login_path unless current_user
    end
end
