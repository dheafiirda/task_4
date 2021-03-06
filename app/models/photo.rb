class Photo < ActiveRecord::Base
  has_attached_file :gambar, :styles => { :medium => "300x300>", :thumb => "100x100>"}, :default_url => ""
  validates_attachment_content_type :gambar, :content_type => /\Aimage\/.*\Z/
end
