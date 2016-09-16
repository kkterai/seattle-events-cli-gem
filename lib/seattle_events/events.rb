require 'pry'

class SeattleEvents::Events

  attr_accessor :date, :name

  def self.list
    #scrape meetup.com and return events based on that data
    self.scrape_meetups
  end

  def self.scrape_meetups
    events = []
    doc = Nokogiri::HTML(open("https://www.meetup.com/Learn-Code-Seattle/#upcoming"))
    list_doc = doc.search("div#events-list-module li.line.event-item").to_a
    list_doc.each.with_index do |event, i|
      event = self.new
      event.date = doc.search(".date")[i].text
      event.name = doc.search("h3.flush--bottom a span")[i].text
      events << event
    end
    events
  end

end
