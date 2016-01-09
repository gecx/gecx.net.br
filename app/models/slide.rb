class Slide < ActiveRecord::Base
  default_scope { where(active: true).order(:ranking) }

  validates :foto, dimensions: { width: 847, height: 503 }

  has_attached_file :foto, 
                    :styles => { :medium => "420x250#", :thumb => "84x50#" },
                    :path => ':rails_root/public/images/slides/:id-:basename-:style.:extension',
                    :url => '/images/slides/:id-:basename-:style.:extension'

  validates_attachment_content_type :foto, 
    :content_type => /^image\/(jpg|jpeg|pjpeg|png|x-png|gif)$/, :message => 'permitido somente imagens'

end
