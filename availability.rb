#!ruby
require 'rexml/document'
require 'open-uri'
require 'pp'
require 'pry'
require './secret'
include REXML
URL = "http://www.supersaas.com/api/free/#{SCHEDULE_ID}.xml?"\
      "from=2014-06-05%2000:00:00&password=#{ADMIN_PASSWORD}"
doc = Document.new(open(URL)).root
doc.elements.each do |slot|
  pp slot.attribute('start')
  pp slot.attribute('finish')
end
