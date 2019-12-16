require 'rails_helper'

RSpec.describe 'edit anime' do
    it 'displays a form with values prepopulated' do
        anime = Anime.create(name: "Naruto")
        visit "/animes/#{anime.id}/edit"

        expect(find_field('Name').value).to eq(anime.name)
    end
end