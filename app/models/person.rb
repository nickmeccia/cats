class Person < ActiveRecord::Base
  has_attached_file :photo, :styles => { :thumb => "150x150>" }
end
