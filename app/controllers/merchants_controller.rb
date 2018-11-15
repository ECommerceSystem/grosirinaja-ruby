class MerchantsController < ApplicationController
    def index
      @merchants = User.page params_page
    end

    private
        def params_page
            return params[:page]
        end
end