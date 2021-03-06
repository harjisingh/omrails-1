class Pin < ActiveRecord::Base
  attr_accessible :description, :image, :needshussler, :needsdesigner, :needshacker, :title, :created_at

  searchable do
    time :created_at
  	text :title, :boost => 5
    text :description

  end
  

  validates :description, presence: :true
  validates :user_id, presence: true
  validates_attachment :image, presence: true,
  								content_type: { content_type: ['image/jpeg','image/jpg','image/png', 'image/gif'] },
  								size: { less_than: 5.megabytes }

  belongs_to :user
  has_attached_file :image, styles: { large: "800x600>"}
  
end
