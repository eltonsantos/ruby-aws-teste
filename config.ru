#\ -w
require 'rubygems'
require 'bundler/setup'

require './app/instancia'
require './app/lista'

use Rack::Reloader

run Instancia.new
