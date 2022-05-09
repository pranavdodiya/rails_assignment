class IndustriesController < ApplicationController
    def index
        @industries=Industry.all
    end
    def show
        @industry=Industry.find(params[:id])
    end

    def new
        @industry=Industry.new
    end

    def create
        @industry=Industry.new(return_params)

        if @industry.save
            redirect_to industries_path
        else
            render :new, status: :unprocessable_entity
        end
    end
    
    private
        def return_params
            params.require(:industry).permit(:name,:email,:registration_number,{ sector_ids:[] })
        end
    
end




