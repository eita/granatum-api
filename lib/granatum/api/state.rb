module Granatum
  module Api
    class State < Granatum::Api::Base
      self.element_name = 'estado'
      self.collection_name = 'estados'

      has_many :cities, class_name: 'Granatum::Api::City'
    end
  end
end
