require 'crypt-isaac'

# Misc utility function used throughout by the RubyCAS-Server.
module CASServer
  module Utils

    def log_controller_action(controller, params)
      $LOG << "\n"

      /`(.*)'/.match(caller[1])
      method = $~[1]

      if params.respond_to? :dup
        params2 = params.dup
        params2['password'] = '******' if params2['password']
      else
        params2 = params
      end
      $LOG.debug("Processing #{controller}::#{method} #{params2.inspect}")
    end
    module_function :log_controller_action

    # Synapses CAS 0.1.2 - Thanks to https://github.com/dyson/rubycas-server
    def initialize_service_whitelist(whitelist)
      $LOG.debug("Initializing Service Whitelist")
      whitelist = whitelist || ''
      whitelist.split(',')
    end
    module_function :initialize_service_whitelist

    # Synapses CAS 0.1.2 - Thanks to https://github.com/dyson/rubycas-server
    def validate_service(service, whitelist)
      $LOG.debug("Validating service \"#{service}\"")
      if !whitelist.empty?
        whitelist.each do |domain|
          return service if service.to_s[0, domain.length] == domain # starts with
        end
      else
        return service if whitelist.empty?
      end
      $LOG.warn("Service \"#{service}\" is not in service whitelist")
      return nil
    end
    module_function :validate_service
  end

end
