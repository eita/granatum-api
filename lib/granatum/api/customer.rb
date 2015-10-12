module Granatum
  module Api
    class Customer < Granatum::Api::Base
      self.element_name = 'cliente'
      self.collection_name = 'clientes'
    end
  end
end
