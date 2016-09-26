class SeattleEvents::Events

  attr_accessor :date, :name, :time, :location, :rsvp_url

  def initialize(attributes = {})
    @date = attributes[:date]
    @name = attributes[:name]
    @time = attributes[:time]
    @location = attributes[:location]
    @rsvp_url = attributes[:rsvp_url]
  end

  def self.all
    @@all ||= scrape_meetups
  end

  def self.scrape_meetups
    doc = Nokogiri::HTML(open("https://www.meetup.com/Learn-Code-Seattle/"))
    list_doc = doc.search("div#events-list-module li.line.event-item").to_a
    list_doc.collect.with_index do |event, i|
      name = doc.search("h3.flush--bottom a")[i].text unless doc.search("h3.flush--bottom a")[i] == nil
      self.new({
        date: doc.search(".date")[i].text,
        name: name,
        time: doc.search("span.time")[i].text,
        location: doc.search("dt.event-venuename")[i].text.gsub(/[\n\t]/,""),
        rsvp_url: doc.search("li.rsvp-callout-outer a")[i].attr("href")
      })
    end
  end
end
