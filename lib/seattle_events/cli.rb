class SeattleEvents::CLI

  def call
    puts "Today's Learn-to-Code Event Calendar:"
    list_events
  end

  def list_events
    puts <<-DOC
    1. Wed Sep 14 - Learn to Code Seattle - "Hack the Dot Seattle #8: Back to School Edition"
    2. Wed Sep 14 - Code Fellows - "Inside Scoop on getting Hired in Tech"
    DOC
  end
end
