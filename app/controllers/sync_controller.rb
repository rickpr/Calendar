class SyncController < ApplicationController
  def download
    @events = FullcalendarEngine::Event.all
    cal=Icalendar::Calendar.new
    @events.each do |event|
      cal.event do |e|
        if !event.private || (current_user && current_user.private)
          e.summary = event.title
          e.description = event.description || ''
          e.dtstart = event.starttime
          e.dtend =  event.endtime
#          allDay: event.all_day,
          e.ip_class = "PRIVATE" if event.private
#          recurring: (event.event_series_id) ? true : false }
        end
      end
    end
    @cal=cal.to_ical
  end
end
