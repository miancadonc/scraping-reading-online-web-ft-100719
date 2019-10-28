require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)
courses = doc.css(".link-3r0TyF")

courses.each do |course|
  puts course.text.strip
end