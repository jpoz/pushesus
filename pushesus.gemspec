# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{pushesus}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["James Pozdena"]
  s.autorequire = %q{pushesus}
  s.date = %q{2009-11-06}
  s.description = %q{Send notifications with pushes.us}
  s.email = %q{jpoz@jpoz.net}
  s.extra_rdoc_files = ["MIT-LICENSE"]
  s.files = ["MIT-LICENSE", "README.textile", "Rakefile", "lib/pushesus.rb"]
  s.homepage = %q{http://github.com/jpoz/pushesus}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Send notifications with pushes.us}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<httparty>, [">= 0.4.5"])
    else
      s.add_dependency(%q<httparty>, [">= 0.4.5"])
    end
  else
    s.add_dependency(%q<httparty>, [">= 0.4.5"])
  end
end
