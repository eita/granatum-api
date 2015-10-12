module Granatum
  module Api
    class BankAccount < Granatum::Api::Base
      self.element_name = 'conta'
      self.collection_name = 'contas'

      belongs_to :bank, class_name: 'Granatum::Api::Bank', foreign_key: 'banco_id'
    end
  end
end
