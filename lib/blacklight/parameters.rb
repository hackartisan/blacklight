# frozen_string_literal: true

module Blacklight
  module Parameters
    ##
    # Sanitize the search parameters by removing unnecessary parameters
    # from the provided parameters.
    # @param [Hash] params parameters
    # rubocop:disable Style/CollectionCompact can be removed when we drop Rails 6.0 support
    def self.sanitize params
      params.reject { |_k, v| v.nil? }
            .except(:action, :controller, :id, :commit, :utf8)
    end
    # rubocop:enable Style/CollectionCompact
  end
end
