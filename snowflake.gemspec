# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "snowflake"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Michael Tighe"]
  s.date = "2012-08-12"
  s.description = "Generate a UUID column on ActiveRecord models"
  s.email = "striderIIDX@gmail.com"
  s.extra_rdoc_files = ["README.rdoc", "lib/snowflake.rb"]
  s.files = ["README.rdoc", "Rakefile", "lib/snowflake.rb", "snowflake.gemspec"]
  s.homepage = "http://github.com/strider-/snowflake"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Snowflake", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "snowflake"
  s.rubygems_version = "1.8.24"
  s.summary = "Generate a UUID column on ActiveRecord models"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
