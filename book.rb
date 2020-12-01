
require 'nokogiri'
require 'open-uri'

url = "https://www.tenlong.com.tw/zh_tw/recent_bestselling?range=7"




page = Nokogiri::HTML(open(url))
books = page.css(".single-book > .title > a")
p books

