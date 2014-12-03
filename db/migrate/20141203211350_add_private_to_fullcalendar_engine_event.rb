class AddPrivateToFullcalendarEngineEvent < ActiveRecord::Migration
  def change
    add_column :fullcalendar_engine_events, :private, :boolean
  end
end
