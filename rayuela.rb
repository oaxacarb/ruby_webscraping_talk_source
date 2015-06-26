require 'rubygems'
require 'bundler/setup'
require 'mechanize'

agent = Mechanize.new

page = agent.get 'http://www.jornada.unam.mx/2015/06/26'

puts page.body
