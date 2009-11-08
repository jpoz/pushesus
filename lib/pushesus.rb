require 'rubygems'
require 'httparty'

class PushesUs
  include HTTParty
  
  base_uri 'pushes.us'
  # base_uri 'localhost:3000'

  format :json
  
  class Notification
    
    attr_accessor :network_key, :device_identity, :alert, :sound
    attr_reader :errors
    
    class << self
      def send(network_key, device_identity, alert, sound='default')
        p = self.new(network_key, device_identity, alert, sound)
        p.send
        return p
      end
    end
    
    def initialize(network_key, device_identity, alert, sound='default')
      @network_key, @device_identity, @alert, @sound = network_key, device_identity, alert, sound
    end
    
    def send
      result = PushesUs.post('/notifications.json', :query => { :notification => { 
                                                  :device_identity => device_identity,
                                                  :network_key => network_key,
                                                  :alert => alert,
                                                  :sound => sound
                                                 }})
      if result['success']
        return true
      else
        @errors = result['errors']
        return false
      end
    end
    
  end
end