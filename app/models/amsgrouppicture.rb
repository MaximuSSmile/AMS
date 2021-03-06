class Amsgrouppicture < ActiveRecord::Base


  belongs_to :user


  has_attached_file :imagegrouppicture, styles: { medium: "920x150#", thumb: "100x100#" }, default_url: "/images/:style/points.png"
  validates_attachment_content_type :imagegrouppicture, content_type: /\Aimage\/.*\z/

  translates :titlerus, :descriptionrus
end
