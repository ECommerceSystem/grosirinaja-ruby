class PaymentsController < ApplicationController
    def index
      @goods = Good.page params_page
    end

    private
        def params_page
            return params[:page]
        end
end