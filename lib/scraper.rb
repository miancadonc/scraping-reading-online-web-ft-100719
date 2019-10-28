require 'nokogiri'
require 'open-uri'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)
courses = doc.css(".dropdown-2S9KUy.expandRight-aVNzJa").css(".link-3R0TyF")

courses.each do |course|
  puts course.text
end