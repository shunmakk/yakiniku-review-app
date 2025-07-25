# -*- encoding: utf-8 -*-
# stub: bootstrap 5.3.5 ruby lib

Gem::Specification.new do |s|
  s.name = "bootstrap".freeze
  s.version = "5.3.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Twitter, Inc.".freeze]
  s.date = "1980-01-02"
  s.email = "glex.spb@gmail.com".freeze
  s.homepage = "https://github.com/twbs/bootstrap-rubygem".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.3".freeze)
  s.rubygems_version = "3.4.10".freeze
  s.summary = "The most popular HTML, CSS, and JavaScript framework for developing responsive, mobile first projects on the web. http://getbootstrap.com".freeze

  s.installed_by_version = "3.4.10" if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<popper_js>.freeze, [">= 2.11.8", "< 3"])
  s.add_development_dependency(%q<rake>.freeze, [">= 0"])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 5.14.4"])
  s.add_development_dependency(%q<minitest-reporters>.freeze, ["~> 1.4.3"])
  s.add_development_dependency(%q<term-ansicolor>.freeze, [">= 0"])
  s.add_development_dependency(%q<capybara>.freeze, [">= 2.6.0"])
  s.add_development_dependency(%q<cuprite>.freeze, [">= 0"])
  s.add_development_dependency(%q<railties>.freeze, [">= 0"])
  s.add_development_dependency(%q<actionpack>.freeze, [">= 4.1.5"])
  s.add_development_dependency(%q<activesupport>.freeze, [">= 4.1.5"])
  s.add_development_dependency(%q<json>.freeze, [">= 1.8.1"])
  s.add_development_dependency(%q<sprockets-rails>.freeze, [">= 2.3.2"])
  s.add_development_dependency(%q<uglifier>.freeze, [">= 0"])
end
