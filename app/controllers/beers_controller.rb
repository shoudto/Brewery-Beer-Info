class BeersController < ApplicationController
    def new 
        @beer = Beer.new
        @beer.build_brewery
    end 

    def create
        @beer = Beer.new(beer_params)

        if @beer.save  
            redirect_to ice_cream_path(@beer)
        else 
            render :new 
        end 
    end 

    private 

    def beer_params
        params.require(:beer).permit(:name, :style, :alc, :description, brewery_attributes: [:name])
    end 
end
