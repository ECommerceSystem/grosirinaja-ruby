class RegistersController < ApplicationController
    def new
      return redirect_to root_path if signed_in?
    end
  
    def create
      begin
        validity = check_validity
        unless validity[:response]
          return redirect_to new_register_path, flash: { error: "#{validity[:message]}" }
        end
  
        user = User.new
        user.assign_attributes user_params
        user.level = :user
        user.save!
  
        return redirect_to sign_in_path, flash: { success: 'You can now log in with your newly created account' }
      rescue
        return redirect_to new_register_path, flash: { error: 'Name, email, password, and level cant be blank' }
      end
    end
  
    private
  
      def check_validity
        user = User.find_by email: user_params[:email]
        if user.present?
          return {
            response: false,
            message: 'Email already booked'
          }
        end
  
        {
          response: true
        }
    end
  
    def user_params
        params.require(:user).permit :email
    end
end
  