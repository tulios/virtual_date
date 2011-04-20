# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{virtual_date}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["T\303\272lio Ornelas"]
  s.date = %q{2011-04-20}
  s.description = %q{To and from dates in a second}
  s.email = %q{ornelas.tulio@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/virtual_date.rb",
     "spec/spec_helper.rb",
     "spec/virtual_date_spec.rb"
  ]
  s.homepage = %q{http://github.com/tulios/virtual_date}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{To and from dates in a second}
  s.test_files = [
    "spec/virtual_date_spec.rb"
  ]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<chronic>, ["~> 0.3.0"])
      s.add_development_dependency(%q<rspec>, [">= 2.0.1"])
      s.add_development_dependency(%q<rspec-core>, [">= 2.0.1"])
    else
      s.add_dependency(%q<chronic>, ["~> 0.3.0"])
      s.add_dependency(%q<rspec>, [">= 2.0.1"])
      s.add_dependency(%q<rspec-core>, [">= 2.0.1"])
    end
  else
    s.add_dependency(%q<chronic>, ["~> 0.3.0"])
    s.add_dependency(%q<rspec>, [">= 2.0.1"])
    s.add_dependency(%q<rspec-core>, [">= 2.0.1"])
  end
end

