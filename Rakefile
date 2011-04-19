begin
  require 'jeweler'
  Jeweler::Tasks.new do |gemspec|
    gemspec.name = "virtual_date"
    gemspec.summary = "To and from dates in a second"
    gemspec.description = "To and from dates in a second"
    gemspec.email = "ornelas.tulio@gmail.com"
    gemspec.homepage = "http://github.com/tulios/virtual_date"
    gemspec.authors = ["Túlio Ornelas"]
    gemspec.test_files = Dir.glob('spec/*_spec.rb')
    gemspec.add_dependency('chronic', '~> 0.3.0')
    gemspec.add_development_dependency "rspec", ">= 2.0.1"
    gemspec.add_development_dependency "rspec-core", ">= 2.0.1"
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler not available. Install it with: gem install jeweler"
end

require 'rspec/core'
require 'rspec/core/rake_task'
RSpec::Core::RakeTask.new(:spec) do |spec|
  spec.pattern = FileList['spec/**/*_spec.rb']
  spec.rspec_opts = '-c --format documentation'
end

RSpec::Core::RakeTask.new(:rcov) do |spec|
  spec.pattern = 'spec/**/*_spec.rb'
  spec.rcov = true
  spec.rspec_opts = '-c --format documentation'
end

task :default => :spec