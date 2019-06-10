#!/usr/bin/env ruby

require "bbc10/version"
require "open-uri"
require 'nokogiri'

module Bbc10
  class Error < StandardError; end
  URL = 'https://www.bbc.co.uk/news'
  puts "\n\nScraping the most read from #{URL}..."
  doc = Nokogiri::HTML(open(URL).read)
  links = doc.css('.nw-c-most-read__items a').map{|link| 'https://www.bbc.co.uk/' << link['href']}
  links.each do | link |
    puts "\n\n#{link}\n\n\n"
    story = Nokogiri::HTML(open(link).read)
    story.css('.story-body__inner p').map(&:content).each{|para| puts "#{para}\n\n"}
  end
end
