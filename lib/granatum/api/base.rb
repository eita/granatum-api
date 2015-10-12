module Granatum
  module Api
    class Base < ActiveResource::Base
      self.site = 'https://api.granatum.com.br/v1'
      self.include_root_in_json = false
      self.headers['Content-Type'] = 'application/x-www-form-urlencoded'

      cattr_accessor :_access_token

      def self.access_token
        self._access_token
      end

      def self.access_token=(token)
        self._access_token = token
      end

      def self.format
        ActiveResource::Formats::GranatumFormat
      end

      def self.include_format_in_path
        false
      end

      def self.element_path(id, prefix_options={}, query_option={})
        super(id, prefix_options, query_option.merge({access_token: access_token}))
      end

      def self.collection_path(prefix_options={}, query_option={})
        super(prefix_options, query_option.merge({access_token: access_token}))
      end

      def to_granatum(options)
        self.attributes.to_query
      end
    end
  end
end
