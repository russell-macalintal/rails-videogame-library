module UsersHelper
    def list_user_errors(err)        
        err_list = []
        err.each do |key, val|
            if key == "firstname"
                err_list << "First name #{val[0]}."
            elsif key == "lastname"
                err_list << "Last name #{val[0]}."
            elsif key == "age"
                err_list << "Age #{val[0]}."
            elsif key == "username"
                err_list << "Username #{val[0]}."
            elsif key == "password"
                err_list << "Password #{val[0]}."
            elsif key == "password_confirmation"
                err_list << "Passwords do not match."
            end
        end

        err_list
    end
end
