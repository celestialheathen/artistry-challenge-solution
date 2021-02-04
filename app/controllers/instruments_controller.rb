class InstrumentsController < ApplicationController
    def index 
        @instruments = Instrument.all 
    end 

    def show
        @instrument = Instrument.find(params[:id])
    end 

    def new 
        @instrument = Instrument.new 
    end 

    def create 
        @instrument = Instrument.create(instrument_params)
        redirect_to instrument_path(@instrument)
    end 

    def edit 
        @instrument = Instrument.find(params[:id])
    end 

    def update
        @instrument = Instrument.find(params[:id])
        @instrument = Instrument.update(instrument_params)
        redirect_to instrument_path(@instrument)
    end 

    def destroy
        @instrument = Instrument.find(params[:id])
        @instrument.destroy 
        redirect_to instruments_path 
    end 


    private def instrument_params
        params.require(:instrument).permit(:name, :classification)
    end 
end