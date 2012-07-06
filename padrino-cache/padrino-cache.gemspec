#!/usr/bin/env gem build
# encoding: utf-8

require File.expand_path("../../padrino-core/lib/padrino-core/version.rb", __FILE__)

Gem::Specification.new do |s|
  s.name = "padrino-cache"
  s.rubyforge_project = "padrino-cache"
  s.authors = ["Padrino Team", "Nathan Esquenazi", "Davide D'Agostino", "Arthur Chiu"]
  s.email = "padrinorb@gmail.com"
  s.summary = "Page and fragment caching for Padrino"
  s.homepage = "http://www.padrinorb.com"
  s.description = "Caching support for memcached, page and fragment"
  s.required_rubygems_version = ">= 1.3.6"
  s.version = Padrino.version
  s.date = Time.now.strftime("%Y-%m-%d")

  s.files         = Dir[File.expand_path(File.join(__FILE__, "../**/*"))]
  s.require_paths = ["lib"]
  s.rdoc_options  = ["--charset=UTF-8"]

  s.add_runtime_dependency("padrino-core", Padrino.version)
end
