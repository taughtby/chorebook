class Child < ActiveRecord::Base
  attr_accessible :dob, :image, :name, :total_points
    mount_uploader :image, ImageUploader
    
    has_many :chores
end
