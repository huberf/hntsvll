# -*- encoding: utf-8 -*-
# stub: celluloid-pool 0.20.0 ruby lib

Gem::Specification.new do |s|
  s.name = "celluloid-pool"
  s.version = "0.20.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Tony Arcieri", "Tim Carey-Smith", "digitalextremist //"]
  s.date = "2015-07-04"
  s.description = "An implementation of an actor pool, based on the Celluloid concurrent object framework."
  s.email = ["tony.arcieri@gmail.com", "code@extremist.digital"]
  s.homepage = "http://github.com/celluloid/celluloid-pool"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.4.5"
  s.summary = "An implementation of an actor pool, based on the Celluloid concurrent object framework."

  s.installed_by_version = "2.4.5" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bundler>, [">= 0"])
      s.add_runtime_dependency(%q<nenv>, [">= 0"])
      s.add_runtime_dependency(%q<dotenv>, [">= 0"])
      s.add_development_dependency(%q<benchmark_suite>, [">= 0"])
      s.add_development_dependency(%q<rubocop>, [">= 0"])
      s.add_development_dependency(%q<pry>, [">= 0"])
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<guard-rspec>, [">= 0"])
      s.add_development_dependency(%q<coveralls>, [">= 0"])
      s.add_development_dependency(%q<celluloid>, [">= 0.17.0"])
      s.add_development_dependency(%q<celluloid-essentials>, [">= 0"])
      s.add_development_dependency(%q<celluloid-supervision>, [">= 0"])
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
      s.add_dependency(%q<pry>, [">= 0"])
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<guard-rspec>, [">= 0"])
      s.add_dependency(%q<coveralls>, [">= 0"])
      s.add_dependency(%q<celluloid>, [">= 0.17.0"])
      s.add_dependency(%q<celluloid-essentials>, [">= 0"])
      s.add_dependency(%q<celluloid-supervision>, [">= 0"])
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
    s.add_dependency(%q<pry>, [">= 0"])
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<guard-rspec>, [">= 0"])
    s.add_dependency(%q<coveralls>, [">= 0"])
    s.add_dependency(%q<celluloid>, [">= 0.17.0"])
    s.add_dependency(%q<celluloid-essentials>, [">= 0"])
    s.add_dependency(%q<celluloid-supervision>, [">= 0"])
    s.add_dependency(%q<celluloid-fsm>, [">= 0"])
    s.add_dependency(%q<celluloid-extras>, [">= 0"])
    s.add_dependency(%q<timers>, ["~> 4.0.0"])
    s.add_dependency(%q<rspec-logsplit>, [">= 0.1.2"])
  end
end