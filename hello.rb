require 'net/http'
require 'json'



url = "https://cloud.culture.tw/frontsite/trans/emapOpenDataAction.do?method=exportEmapJson&typeId=M"

uri = URI(url)

raw_data = Net::HTTP.get(uri)
items = JSON.parse(raw_data)
items.each do |item|
  p item["name"]
end