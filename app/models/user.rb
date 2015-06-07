class User < ActiveRecord::Base
  has_many :events
  has_many :invites, foreign_key: :attendee_id
  has_many :attended_events, through: :invites



  def upcoming_events
    attended_events.where("date > ?", DateTime.now)
  end

  def prev_events
    attended_events.where("date < ?", DateTime.now)
  end
end
