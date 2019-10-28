require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)
courses = doc.css(".section 3G3Djt")

courses.each do |course|
  puts course.text.strip
end