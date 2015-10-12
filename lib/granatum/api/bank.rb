module Granatum
  module Api
    class Bank < Granatum::Api::Base
      self.element_name = 'banco'
      self.collection_name = 'bancos'
    end
  end
end
