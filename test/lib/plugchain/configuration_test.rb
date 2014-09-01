require 'helper'

describe 'configuration' do

  describe '.api_key' do
    it 'should return default key' do
      Plugchain.api_key.must_equal Plugchain::Configuration::DEFAULT_API_KEY
    end
  end

  describe '.format' do
    it 'should return default format' do
      Plugchain.format.must_equal Plugchain::Configuration::DEFAULT_FORMAT
    end
  end

  describe '.user_agent' do
    it 'should return default user_agent' do
      Plugchain.user_agent.must_equal Plugchain::Configuration::DEFAULT_USER_AGENT
    end
  end
  
  describe '.method' do
    it 'should return default user_agent' do
      Plugchain.method.must_equal Plugchain::Configuration::DEFAULT_METHOD
    end
  end

  describe '.api_version' do
    # it 'should return default api_version' do
    #   Plugchain.api_version.must_equal Plugchain::Configuration::DEFAULT_API_VERSION
    # end
  end

  describe '.endpoint' do   
    # it 'should return default endpoint' do
    #   Plugchain.endpoint.must_equal Plugchain::Configuration::DEFAULT_ENDPOINT
    # end

    it 'should be possible to change return default api_version' do
      Plugchain.api_version = 2 
      version_number        = Plugchain::Configuration::DEFAULT_ENDPOINT.length - 1 
      new_endpoint          = Plugchain::Configuration::DEFAULT_ENDPOINT.dup
      new_endpoint[version_number] = "2"
      Plugchain.endpoint.must_equal new_endpoint      
    end


    it 'should accept only numbers' do
      proc {Plugchain.api_version = "2"}.must_raise ArgumentError
    end
  end
end