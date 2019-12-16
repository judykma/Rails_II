require 'rails_helper'

RSpec.describe 'listing animes' do
    it 'displays list of existing animes' do
        anime1 = Anime.create(name: "naruto")
        anime2 = Anime.create(name: "bleach")

        visit '/animes'

        expect(page).to have_text(anime1.name)
        expect(page).to have_text(anime2.name)
    end
end