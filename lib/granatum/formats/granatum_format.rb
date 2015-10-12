require 'active_support/core_ext/hash/conversions'
require 'active_support/json'

module ActiveResource
  module Formats
    module GranatumFormat
      extend self

      def extension
        "granatum"
      end

      def mime_type
        "application/json"
      end

      def encode(hash, options = nil)
      end

      def decode(json)
        Formats.remove_root(ActiveSupport::JSON.decode(json))
      end
    end
  end
end
