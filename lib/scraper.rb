require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)
courses = doc.css(".link3r0")

courses.each do |course|
  puts course.text.strip
end