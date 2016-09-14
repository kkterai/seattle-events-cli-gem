class SeattleEvents::Events

  attr_accessor :date, :organization, :name

  def self.list
    #scrape meetup.com and return events based on that data
    self.scrape_events
  end

  def self.scrape_events
    events = []

    events << self.scrape_meetup

    #Go to meetup, find the events
    #Extract the events
    #instantiate an event
    events
  end

  def self.scrape_meetup
    doc = Nokogiri::HTML(open("https://www.meetup.com/"))
    binding.pry
  end

end
