class SeattleEvents::Events

  attr_accessor :date, :organization, :name

  def self.list
    #It should return a bunch of instances of events
#    puts <<-DOC.gsub /^\s*/, ''
#    1. Wed Sep 14 - Learn to Code Seattle - "Hack the Dot Seattle #8: Back to School Edition"
#    2. Wed Sep 14 - Code Fellows - "Inside Scoop on getting Hired in Tech"
#    DOC

    event_1 = self.new
    event_1.date = "Wed Sep 14"
    event_1.organization = "Learn to Code Seattle"
    event_1.name = "Hack the Dot Seattle #8: Back to School Edition"

    event_2 = self.new
    event_1.date = "Wed Sep 14"
    event_1.organization = "Code Fellows"
    event_1.name = "Inside Scoop on getting Hired in Tech"

    [event_1, event_2]
  end

end
