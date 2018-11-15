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
  
        return redirect_to sign_in_path, flash: { success: 'Silahkan login menggunakan email dan password yang telah didaftarkan' }
      rescue
        return redirect_to new_register_path, flash: { error: 'Email, name, password, dan nik tidak boleh dikosongkan' }
      end
    end
  
    private
  
      def check_validity
        user = User.find_by email: user_params[:email]
        if user.present?
          return {
            response: false,
            message: 'Email sudah terpakai'
          }
        end
  
        {
          response: true
        }
    end
  
    def user_params
        params.require(:user).permit :email, :name, :password, :level
    end
end
  