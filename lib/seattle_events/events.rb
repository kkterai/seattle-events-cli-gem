class SeattleEvents::Events

  attr_accessor :date, :name, :time, :location, :rsvp_url

  def self.list
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
      event.time = doc.search("span.time")[i].text
      event.location = doc.search("dt.event-venuename")[i].text.gsub(/[\n\t]/,"")
      event.rsvp_url = doc.search("li.rsvp-callout-outer a")[i].attr("href")
      events << event
    end
    events
  end
end
