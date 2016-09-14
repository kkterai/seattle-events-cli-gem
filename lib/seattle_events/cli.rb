class SeattleEvents::CLI

  def call
    puts "Today's Learn-to-Code Event Calendar:"
    list_events
    menu
    end_search
  end

  def list_events
    @events = SeattleEvents::Events.list
    @events.each.with_index(1) do |event, i|
      puts "#{i}. #{event.date} - #{event.organization} - #{event.name}"
    end
  end

  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the event you'd like to learn more about, 'list' if you'd like to see the event list, or 'exit':"
      input = gets.strip.downcase
      if input.to_i > 0
        puts @events[input.to_i - 1]
      elsif "list"
        list_events
      else
        puts "I don't understand your response. Please enter an event number, 'list', or 'exit'"
      end
    end
  end

  def end_search
    puts "Come back for more events!"
  end
end
