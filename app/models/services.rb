class Services < ActiveRecord::Base
  PHOTO_STORE = assets_path "images/"
  after_save :save_photo
  def img=(data)
     self.filename = data.original_filename
     @photo_data = data
  end
  def save_photo
    if @photo_data
      name = File.join PHOTO_STORE, self.filename
      File.open(name, 'wb') do |f|
        f.write(@photo_data.read)
      end
      @photo_data = nil
    end
  end
end
