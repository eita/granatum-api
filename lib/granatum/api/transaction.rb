module Granatum
  module Api
    class Transaction < Granatum::Api::Base
      self.element_name = 'lancamento'
      self.collection_name = 'lancamentos'
    end
  end
end
