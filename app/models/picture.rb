class Picture < ApplicationRecord

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
