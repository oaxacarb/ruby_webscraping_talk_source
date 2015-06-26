require 'rubygems'
require 'bundler/setup'
require 'mechanize'

agent = Mechanize.new

((Date.today - 30)..(Date.today)).each do |date|
  puts "*"*50
  puts date
  page = agent.get "http://www.jornada.unam.mx/#{date.year}/#{"%02d" % date.month}/#{"%02d" % date.day}"
  @headers = page.root.css('.cabeza > a')
  puts @headers.map(&:text)
  puts "*"*50
end

