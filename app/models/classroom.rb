class Classroom < ActiveRecord::Base
  attr_accessible :date_end, :date_start, :grade_level_id, :name, :reference, :teacher_id

  validates :teacher_id, presence: true
  validates :name, presence: true

  has_many :assignments

  has_many :classrooms_users
  has_many :users, :through => :classrooms_users

  belongs_to :teacher, :class_name => "User", :foreign_key => "teacher_id"

  def ical
    event = Icalendar::Event.new
    event.uid = self.uid
    event.dtstart = DateTime.civil(self.date_start.year, self.date_start.month, self.date_start.day, self.date_start.hour, self.date_start.min)    
    event.dtend = DateTime.civil(self.date_end.year, self.date_end.month, self.date_end.day, self.date_end.hour, self.date_end.min)    
    event.summary = self.name    
    event.created = self.created_at    
    event.url = self.url    
    event.last_modified = self.updated_at    
    e   
  end
end
