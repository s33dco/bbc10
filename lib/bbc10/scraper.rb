#!/usr/bin/env ruby

require "open-uri"
require 'nokogiri'

module Bbc10
  module Scraper
    def self.read_page(url)
      Nokogiri::HTML(open(url).read)
    end

    def self.get_links(page)
      page.css('.nw-c-most-read__items a').map{|link| 'https://www.bbc.co.uk/' << link['href']}
    end

    def self.scrape_story(story)
      article = story.css('.story-body__inner p').map(&:content)
      if article.empty?
        puts "\nFailed to scrape - use link above\n\n"
      else
        article.each{|para| puts "#{para}\n\n"}
      end
    end
  end
end
