# All Administrate controllers inherit from this `Admin::ApplicationController`,
# making it the ideal place to put authentication logic or other
# before_actions.
#
# If you want to add pagination or other controller-level concerns,
# you're free to overwrite the RESTful controller actions.
module Admin
  class ApplicationController < Administrate::ApplicationController
    include Clearance::Controller

    def authenticate_admin
      unless is_admin?
        return redirect_to root_path, flash: { error: 'Anda tidak memiliki hak akses' }
      end
    end

    def authenticate_seller
      unless is_seller?
        return redirect_to root_path, flash: { error: 'Anda tidak memiliki hak akses' }
      end
    end

    # Override this value to specify the number of elements to display at a time
    # on index pages. Defaults to 20.
    # def records_per_page
    #   params[:per_page] || 20
    # end
    private
      def is_admin?
        current_user.admin?
      end

      def is_seller?
        current_user.seller?
      end

      def is_buyer?
        current_user.buyer?
      end
  end
end