class SeattleEvents::Events

  attr_accessor :date, :organization, :name

  def self.list
    #It should return a bunch of instances of events

    event_1 = self.new
    event_1.date = "Wed Sep 14"
    event_1.organization = "Learn to Code Seattle"
    event_1.name = "Hack the Dot Seattle #8: Back to School Edition"

    event_2 = self.new
    event_2.date = "Wed Sep 14"
    event_2.organization = "Code Fellows"
    event_2.name = "Inside Scoop on getting Hired in Tech"

    [event_1, event_2]
  end

end
