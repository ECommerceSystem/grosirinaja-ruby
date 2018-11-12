module CacheControl

    def cache_control_public
      # 10 mins
      response.header['Cache-Control'] = "public, max-age=600, must-revalidate"
    end
  
    def cache_control_private
      response.header['Cache-Control'] = "private, max-age=0, must-revalidate"
    end
end  