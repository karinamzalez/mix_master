require 'rails_helper'

RSpec.feature "User deletes an existing artist" do
  scenario "they are able to delete a specific artist" do
    artist = Artist.create(name: "Vulfpeck", image_path: "https://img.discogs.com/JoDmPop-mTGrm6SmFP3IYMV6sZ0=/fit-in/600x600/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-7577894-1444417250-2622.jpeg.jpg")

    visit artist_path(artist.id)
    click_on "Delete"

    expect(page).to have_content "All Artist"
  end
end
