class AddPrivateToFullcalendarEngineEventSeries < ActiveRecord::Migration
  def change
    add_column :fullcalendar_engine_event_series, :private, :boolean
  end
end
