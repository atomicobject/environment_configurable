module EnvironmentConfigurable 
  module InstanceMethods
    def config
      self.class.config
    end
  end

  module ClassMethods
    def configure_with(file)
      @configured_with_file = "#{Rails.root}/#{file}"
      unless File.exist?(@configured_with_file)
        raise "Can't configure class #{self.name} -- no file #{@configured_with_file}"
      end
    end

    def config
      unless @config_wrappers
        @config_data = YAML.load(ERB.new(File.read(@configured_with_file)).result)
        @config_wrappers = {}
        @config_data.each do |env_name, hash|
          @config_wrappers[env_name] = ConfigWrapper.new(hash)
        end
      end
      @config_wrappers[Rails.env]
    end
  end

  class ConfigWrapper
    def initialize(hash)
      @hash = hash
    end
    def method_missing(method_name,*args)
      key = method_name.to_s
      super unless @hash.keys.include?(key)
      @hash[key] 
    end
  end

  def self.included(receiver)
    receiver.send(:include, InstanceMethods)
    receiver.send(:extend, ClassMethods)
  end


end
