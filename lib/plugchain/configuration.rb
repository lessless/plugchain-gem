module Plugchain
  module Configuration
    VALID_CONNECTION_KEYS = %i(endpoint user_agent method).freeze
    VALID_OPTION_KEYS     = %i(api_key format api_version).freeze
    VALID_CONFIG_KEYS     = VALID_CONNECTION_KEYS + VALID_OPTION_KEYS

    DEFAULT_API_VERSION   = 1
    DEFAULT_ENDPOINT      = "http://plugchain.com/api/v#{DEFAULT_API_VERSION}"
    DEFAULT_METHOD        = :get
    DEFAULT_USER_AGENT    = "Plugchain API Ruby Gem #{Plugchain::VERSION}".freeze

    DEFAULT_API_KEY       = nil
    DEFAULT_FORMAT        = :json

    attr_accessor *VALID_CONFIG_KEYS

    def self.extended(base)
      base.reset
    end

    def reset 
        self.endpoint      = DEFAULT_ENDPOINT
        self.method        = DEFAULT_METHOD
        self.user_agent    = DEFAULT_USER_AGENT

        self.api_key       = DEFAULT_API_KEY
        self.format        = DEFAULT_FORMAT
        self.api_version   = DEFAULT_API_VERSION
    end

    def api_version=(version)
      raise ArgumentError, 'Argument is not numeric' unless version.is_a? Numeric  
      version_number        = DEFAULT_ENDPOINT.length - 1 
      new_endpoint          =  DEFAULT_ENDPOINT.dup
      new_endpoint[version_number] = version.to_s      
      self.endpoint = new_endpoint
    end

  end  
end