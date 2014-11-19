# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'act_as_cnpj_cpf/version'

Gem::Specification.new do |gem|
  gem.name         = 'act_as_cnpj_cpf'
  gem.version      = ActAsCnpjCpf::VERSION
  gem.platform     = Gem::Platform::RUBY
  gem.authors      = ['Josué Lima']
  gem.email        = ['josuedsi@gmail.com']
  gem.summary      = %q{Permite que um atributo seja utilizado, e validado, como CFP, CNPJ ou ambos}
  gem.description  = gem.summary
  gem.license      = 'MIT'
  gem.homepage     = 'https://github.com/josuelima/act_as_cnpj_cpf'

  gem.files        = `git ls-files`.split("\n")
  gem.test_files   = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables  = `git ls-files -- bin/*`.split('\n').map { |f| File.basename(f) }

  gem.require_paths = ["lib"]

  gem.required_ruby_version = '>= 1.9.3'
  
  gem.add_dependency 'activesupport', '>= 3.2'
  gem.add_dependency 'activerecord',  '>= 3.2'
  gem.add_dependency 'rake', '~> 10.3'
  gem.add_development_dependency 'rspec', '~> 3.1'
  gem.add_development_dependency 'cpf_faker'
end