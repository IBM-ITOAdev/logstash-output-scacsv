Gem::Specification.new do |s|
  s.name = 'logstash-output-scacsv'
  s.version         = "1.0.3"
  s.licenses = ["Apache License (2.0)"]
  s.summary = "Receives a stream of events and outputs files meeting the csv reqmts for IBM SmartCloudAnalytics Predictive Insights"
  s.description = "This gem is a logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/plugin install gemname. This gem is not a stand-alone program"
  s.authors = ["Robert Mckeown"]
  s.email = "rmckeown@us.ibm.com"
  s.homepage = "https://github.com/IBM-ITOAdev/logstash-output-scacsv/blob/master/README.md"
  s.require_paths = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "output" }

  # Gem dependencies
  s.add_runtime_dependency "logstash-core", ">= 1.4.0", "< 2.0.0"
  s.add_runtime_dependency "logstash-codec-plain"
  s.add_development_dependency "logstash-devutils"
end
