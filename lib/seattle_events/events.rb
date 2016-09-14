class SeattleEvents::Events

  def self.list
    #It should return a bunch of instances of events
    puts <<-DOC.gsub /^\s*/, ''
    1. Wed Sep 14 - Learn to Code Seattle - "Hack the Dot Seattle #8: Back to School Edition"
    2. Wed Sep 14 - Code Fellows - "Inside Scoop on getting Hired in Tech"
    DOC

  end

end
