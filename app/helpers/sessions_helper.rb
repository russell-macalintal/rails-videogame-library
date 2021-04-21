module SessionsHelper
    def logged_in?
        session[:user_id]
    end

    def current_user
        User.find(session[:user_id])
    end

    def is_admin?
        return true if current_user.username == "admin"
    end

end
