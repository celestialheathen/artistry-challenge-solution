class Artist < ApplicationRecord
    has_many :musics
    has_many :instruments, through: :musics
end
