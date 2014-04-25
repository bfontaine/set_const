require './lib/set_const'

Gem::Specification.new do |s|
    s.name          = 'set_const'
    s.version       = '0.1.0'
    s.date          = Time.now

    s.summary       = 'Modify constants without warning'
    s.description   = 'Change a constant\'s value without any warning'
    s.license       = 'MIT'

    s.author        = 'Baptiste Fontaine'
    s.email         = 'batifon@yahoo.fr'
    s.homepage      = 'https://github.com/bfontaine/set_const'

    s.files         = Dir['lib/**/*.rb']
    s.test_files    = Dir['tests/**/*.rb']
    s.require_path  = 'lib'

    s.add_dependency 'silent', '~> 0.1'

    s.add_development_dependency 'simplecov', '~> 0.8'
    s.add_development_dependency 'rake', '~> 10.3'
    s.add_development_dependency 'test-unit', '~> 2.5'
    s.add_development_dependency 'coveralls', '~> 0.7'
end
