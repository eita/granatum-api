module Granatum
  module Api
    class City < Granatum::Api::Base
      self.element_name = 'cidade'
      self.collection_name = 'cidades'
    end
  end
end
