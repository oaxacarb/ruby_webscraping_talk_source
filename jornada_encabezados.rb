require 'rubygems'
require 'bundler/setup'
require 'mechanize'

agent = Mechanize.new

((Date.today - 30)..(Date.today)).each do |date|
  page = agent.get "http://www.jornada.unam.mx/#{date.year}/#{"%02d" % date.month}/#{"%02d" % date.day}"
  @headers = page.root.css('.cabeza > a')
  puts @headers.map{ |header| { text: header.text, link: header['href'] } }
end

