require 'rails_helper'

RSpec.feature "User views all artists" do
  scenario "they see the index page" do
    artist1 = Artist.create(name: "Vulfpeck", image_path: "https://img.discogs.com/JoDmPop-mTGrm6SmFP3IYMV6sZ0=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-7577894-1444417250-2622.jpeg.jpg")
    artist2 = Artist.create(name: "Hiatus Kaiyote", image_path: "http://ripitup.com.au/content/uploads/2015/05/hiatus-kai.jpg")
    artist3 = Artist.create(name: "Thundercat", image_path: "http://cdn.pitchfork.com/albums/19341/b943b6fc.jpg")

    visit artists_path
    expect(page).to have_content artist1.name
  end
end
