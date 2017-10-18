class Picture < ApplicationRecord

  validates :artist, presence: true
  validates :title, length: { maximum: 20,
                              minimum: 3 }
  validates :url, presence: true, uniqueness: true

  def self.young
    @pictures = []
    Picture.all.each do |pic|
      if (Time.now - pic.created_at) < (31*24*60*60)
        @pictures << pic
      end
    end
  end

  def self.old
    @pictures = []
    Picture.all.each do |pic|
      if (Time.now - pic.created_at) >= (31*24*60*60)
        @pictures << pic
      end
    end
  end

end
