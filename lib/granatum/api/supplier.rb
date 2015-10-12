module Granatum
  module Api
    class Supplier < Granatum::Api::Base
      self.element_name = 'fornecedor'
      self.collection_name = 'fornecedores'
    end
  end
end
