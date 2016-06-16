require 'rails_helper'

RSpec.feature "User edits an artist" do
  scenario "they can edit an existing artist" do
    artist = Artist.create(name: "Death Grips", image_path: "http://rymimg.com/lk/f/l/05e8c27e3c2eb9bafe97a05c4fd874fe/4181548.jpg")

    visit artist_path(artist.id)
    click_on "Edit"
    fill_in "artist_name", with: "Moonchild"
    click_on "Update Artist"

    expect(page).to have_content "Moonchild"
    expect(page).to have_css("img[src=\"http://rymimg.com/lk/f/l/05e8c27e3c2eb9bafe97a05c4fd874fe/4181548.jpg\"]")
  end
end
