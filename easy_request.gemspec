# coding: utf-8

# lista de archivos
li = []

# Carga de archivos al listado (se repite el proceso por nivel de profundidad en la carpeta lib)
Dir.glob('./lib/*.rb').each do |archivo| li.push archivo end
Dir.glob('./lib/easy_request/*.rb').each do |archivo| li.push archivo end

Gem::Specification.new do |spec|
  spec.name          = 'easy_request'
  spec.version       = '0.0.1'
  spec.authors       = ['Eduardo Aguilar']
  spec.email         = ['dante.aguilar41@gmail.com']

  spec.summary       = %q{Make easy Http request in ruby}
  spec.description   = %q{Using the net/http class and json make easy request for any URL and get the response}
  spec.homepage      = 'https://github.com/danteay/easy-ruby-request'
  spec.license       = 'Apache-2.0'

  # Inclucion del listado de archivos de la gema
  spec.files         = li

  # Dependencias en desarrollo descargables de rubygems.org
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest'

  # Dependencias en produccion que sean descargables de rubygems.org
  spec.add_runtime_dependency 'json', '~> 1.7'
end