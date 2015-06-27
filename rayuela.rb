require 'rubygems'
require 'bundler/setup'
require 'watir-webdriver'

browser = Watir::Browser.new
browser.goto "http://www.jornada.unam.mx/2015/06/25"
rayuela = browser.span(id: 'rayuela-text')

puts rayuela.text
