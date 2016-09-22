class SeattleEvents::CLI

  def call
    puts "********** Today's Events for Learn to Code Seattle **********"
    puts ""
    list_events
    menu
    end_search
  end

  def list_events
    @events = SeattleEvents::Events.list
    @events.each.with_index(1) do |event, i|
      puts "#{i}. #{event.date} - #{event.name}"
    end
    puts ""
  end

  def menu
    input = nil
    while input != "exit"
      puts "Please enter the number of the event you'd like to learn more about, 'list' if you'd like to see the event list, or 'exit':"
      input = gets.strip.downcase
      if input == "exit"
        break
      elsif input == "list"
        list_events
      elsif !@events[input.to_i-1].is_a?(NilClass)
        the_event = @events[input.to_i-1]
        puts ""
        puts "----------------------------------------------------------------------------------------------"
        puts ""
        puts " Event #{input}:    #{the_event.name}"
        puts " Date:       #{the_event.date}"
        puts " Time:       #{the_event.time}"
        puts " Location:   #{the_event.location}"
        puts " RSVP:       #{the_event.rsvp_url}"
        puts ""
        puts "----------------------------------------------------------------------------------------------"
        puts ""
      elsif @events[input.to_i-1].is_a?(NilClass)
        puts "There are no events with that number."
      else
        puts "I don't understand your response. Please enter an event number, 'list', or 'exit'"
      end
    end
  end

  def end_search
    puts "Come back for more events!"
  end
end
