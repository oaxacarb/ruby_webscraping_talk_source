require 'rubygems'
require 'bundler/setup'
require 'watir-webdriver'

browser = Watir::Browser.new
((Date.today - 30)..(Date.today)).each do |date|
  puts "*"*50
  puts date
  browser.goto "http://www.jornada.unam.mx/#{date.year}/#{"%02d" % date.month}/#{"%02d" % date.day}"
  Watir::Wait.until{ browser.span(id: 'rayuela-text').text }
  rayuela = browser.span(id: 'rayuela-text')
  puts "\"#{rayuela.text}\""
  puts "*"*50
end
