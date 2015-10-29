# -*- encoding: utf-8 -*-
# stub: celluloid-supervision 0.20.1 ruby lib

Gem::Specification.new do |s|
  s.name = "celluloid-supervision"
  s.version = "0.20.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Donovan Keme", "Tony Arcieri", "Tim Carey-Smith"]
  s.date = "2015-08-06"
  s.description = "Supervisors, Supervision Groups, and Supervision Trees for Celluloid."
  s.email = ["code@extremist.digital", "tony.arcieri@gmail.com"]
  s.homepage = "https://github.com/celluloid/"
  s.licenses = ["MIT"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubygems_version = "2.4.5"
  s.summary = "Celluloid Supervision"

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bundler>, [">= 0"])
      s.add_runtime_dependency(%q<nenv>, [">= 0"])
      s.add_runtime_dependency(%q<dotenv>, [">= 0"])
      s.add_development_dependency(%q<benchmark_suite>, [">= 0"])
      s.add_development_dependency(%q<rubocop>, [">= 0"])
      s.add_development_dependency(%q<transpec>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<coveralls>, [">= 0"])
      s.add_development_dependency(%q<celluloid>, [">= 0.17.0"])
      s.add_development_dependency(%q<celluloid-essentials>, [">= 0"])
      s.add_development_dependency(%q<celluloid-pool>, [">= 0"])
      s.add_development_dependency(%q<celluloid-fsm>, [">= 0"])
      s.add_development_dependency(%q<celluloid-extras>, [">= 0"])
      s.add_runtime_dependency(%q<timers>, ["~> 4.0.0"])
      s.add_runtime_dependency(%q<rspec-logsplit>, [">= 0.1.2"])
    else
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<nenv>, [">= 0"])
      s.add_dependency(%q<dotenv>, [">= 0"])
      s.add_dependency(%q<benchmark_suite>, [">= 0"])
      s.add_dependency(%q<rubocop>, [">= 0"])
      s.add_dependency(%q<transpec>, [">= 0"])
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<coveralls>, [">= 0"])
      s.add_dependency(%q<celluloid>, [">= 0.17.0"])
      s.add_dependency(%q<celluloid-essentials>, [">= 0"])
      s.add_dependency(%q<celluloid-pool>, [">= 0"])
      s.add_dependency(%q<celluloid-fsm>, [">= 0"])
      s.add_dependency(%q<celluloid-extras>, [">= 0"])
      s.add_dependency(%q<timers>, ["~> 4.0.0"])
      s.add_dependency(%q<rspec-logsplit>, [">= 0.1.2"])
    end
  else
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<nenv>, [">= 0"])
    s.add_dependency(%q<dotenv>, [">= 0"])
    s.add_dependency(%q<benchmark_suite>, [">= 0"])
    s.add_dependency(%q<rubocop>, [">= 0"])
    s.add_dependency(%q<transpec>, [">= 0"])
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<coveralls>, [">= 0"])
    s.add_dependency(%q<celluloid>, [">= 0.17.0"])
    s.add_dependency(%q<celluloid-essentials>, [">= 0"])
    s.add_dependency(%q<celluloid-pool>, [">= 0"])
    s.add_dependency(%q<celluloid-fsm>, [">= 0"])
    s.add_dependency(%q<celluloid-extras>, [">= 0"])
    s.add_dependency(%q<timers>, ["~> 4.0.0"])
    s.add_dependency(%q<rspec-logsplit>, [">= 0.1.2"])
  end
end