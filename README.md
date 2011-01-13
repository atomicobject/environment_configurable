# environment_configurable

Description
===========

A library that makes environment dependent configuration easy in rails.

Rationale
========

Environment dependent configuration is a common problem in rails, and we noticed
a common pattern:

  * We tend to extract configuration variables to a yaml file
  * We often wrap the yaml configuration in a configuration helper
  
Environment Configurable accomplishes both of these task succinctly.

Install
====
  * gem install environment_configurable
  * Add config.gem "environment_configurable" to your environment.rb file
  
Dependencies
============

* Rails 2.3.0 >=

Example
=======

    class S3Helper
      include EnvironmentConfigurable
      configure_with "config/s3.yml"
      
      def self.connect!
         AWS::S3::Base.establish_connection!(
            :access_key_id     => config.access_key_id,
            :secret_access_key => config.secret_access_key
          )
      end
    end
    
  s3.yml
  
    production: &DEFAULTS
      access_key_id: ACCESS_KEY_ID
      secret_access_key: SECRET_ACCESS_KEY
      bucket: the-prod-bucket

    staging:
      <<: *DEFAULTS
      bucket: the-staging-bucket

    development:
      <<: *DEFAULTS
      bucket: the-development-bucket

    test:
      <<: *DEFAULTS
      bucket: the-test-bucket
    
Authors
=======

* Justin DeWind (dewind@atomicobject.com)
* David Crosby (crosby@atomicobject.com)
* © 2009-2011 [Atomic Object](http://www.atomicobject.com/)
* More Atomic Object [open source](http://www.atomicobject.com/pages/Software+Commons) projects
