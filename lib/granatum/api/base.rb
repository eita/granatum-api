module Granatum
  module Api
    class Base < ActiveResource::Base
      self.site = 'https://api.granatum.com.br/v1'
      self.include_root_in_json = true
    end
  end
end
