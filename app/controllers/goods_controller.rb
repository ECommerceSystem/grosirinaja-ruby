class GoodsController < ApplicationController
    def index
      @goods = Good.page params_page
    end
  
    def show
        @good = Good.find id
    end
  
    private
        def params_page
            return params[:page]
        end

        def id
            params[:id]
        end
end