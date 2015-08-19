class Task < ActiveRecord::Base
  validates :subject, presence: { message: "Error: You must enter a value [ Subject ]" } 
end
