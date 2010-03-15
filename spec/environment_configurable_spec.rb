require 'spec_helper'

describe EnvironmentConfigurable do
  class MyHouse
    include EnvironmentConfigurable
    configure_with "config/s3.yml"
    
    def self.peek_access_key_id
      config.access_key_id
    end

    def self.peek_bucket
      config.bucket
    end

    def self.blow_up
      config.oops
    end

    def i_access_key_id
      config.access_key_id
    end

    def i_bucket
      config.bucket
    end
  end
  
  class ErbTown
    include EnvironmentConfigurable
    configure_with "test_files/erb_example.yml"
    
    def self.path
      config.path
    end
  end
  
  it "gives a class clean, environment-specific access to a yml config" do
    @yml_data = YAML.load_file("#{Rails.root}/config/s3.yml")

    MyHouse.peek_access_key_id.should_not be_nil 
    MyHouse.peek_access_key_id.should == @yml_data["test"]["access_key_id"]

    MyHouse.peek_bucket.should_not be_nil 
    MyHouse.peek_bucket.should == @yml_data["test"]["bucket"]
  end

  it "returns nil for unknown config vars" do
    lambda { MyHouse.blow_up }.should raise_error(NoMethodError, /oops/)
  end

  it "explodes when config file is not there" do
    lambda do 
      Class.new do
        include EnvironmentConfigurable
        configure_with "config/nono.yml"
      end
    end.should raise_error(/nono.yml/)
  end
  
  it "erb loads the yaml files" do
    ErbTown.path.should == File.join(Rails.root, "/the/path")
  end
  
  it "provides instance methods with access to config as well" do
    @yml_data = YAML.load_file("#{Rails.root}/config/s3.yml")

    @my_house = MyHouse.new
    @my_house.i_access_key_id.should == @yml_data["test"]["access_key_id"]
    @my_house.i_bucket.should == @yml_data["test"]["bucket"]
  end

end
