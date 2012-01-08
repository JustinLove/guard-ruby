# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "guard/ruby"

Gem::Specification.new do |s|
  s.name        = "guard-ruby"
  s.version     = Guard::Ruby::VERSION
  s.authors     = ["Justin Love"]
  s.email       = ["git@JustinLove.name"]
  s.homepage    = ""
  s.summary     = %q{Guard gem for running simple Ruby files}
  s.description = <<-DESC
    Guard::Ruby is for running simple ruby files that don't necessarily have a
    separate test file or predictable pass/fail output, such as benchmarks.
  DESC

  s.rubyforge_project = "guard-ruby"

  s.files         = <<MANIFEST.split("\n")
lib/guard/ruby/templates/Guardfile
lib/guard/ruby.rb
MANIFEST
  s.require_paths = ["lib"]

  s.add_runtime_dependency "guard"

  s.add_development_dependency "mast"
end
