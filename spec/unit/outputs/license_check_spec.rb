require "logstash/devutils/rspec/spec_helper"
require "logstash/outputs/elasticsearch/http_client"
require "logstash/outputs/elasticsearch/license_check"

describe LogStash::ElasticSearchOutputLicenseChecker do

  # Note that the actual license checking logic is spec'ed in pool_spec.rb

  context "LicenseChecker API required by Pool class" do
    subject { described_class }

    it "defines the appropriate_license? methods" do
      expect(subject.instance_methods).to include(:appropriate_license?)
    end
  end

  context "LicenseChecker API required by Pool specs" do
    subject { described_class }

    it "defines the oss? method" do
      expect(subject.instance_methods).to include(:oss?)
    end

    it "defines the valid_es_license? method" do
      expect(subject.instance_methods).to include(:valid_es_license?)
    end

    it "defines the log_license_deprecation_warn method" do
      expect(subject.instance_methods).to include(:log_license_deprecation_warn)
    end
  end
end

