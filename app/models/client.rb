class Client < ActiveRecord::Base
  belongs_to :user
  has_many :client_notes
  
  def fullname
    "#{self.first_name} #{self.last_name}"
  end  
end
