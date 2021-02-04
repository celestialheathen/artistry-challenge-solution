class Instrument < ApplicationRecord
    has_many :musics
    has_many :artists, through: :musics
end
