class MusicsController < ApplicationController
    def index 
        @musics = Music.all 
    end 

    def show
        @music = Music.find(params[:id])
    end 

    def new 
        @music = Music.new 
    end 

    def create 
        @music = Music.create(music_params)
        redirect_to artist_path(@music.artist_id)
    end 

    def edit 
        @music = Music.find(params[:id])
    end 

    def update
        @music = Music.find(params[:id])
        @music = Music.update(music_params)
        redirect_to music_path(@music)
    end 

    def destroy
        @music = Music.find(params[:id])
        @music.destroy 
        redirect_to musics_path 
    end 


    private def music_params
        params.require(:music).permit(:artist_id, :instrument_id)
    end 
end

