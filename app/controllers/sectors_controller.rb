class SectorsController < ApplicationController
    def index
        @sectors = Sector.all
    end
    def show
        @sector=Sector.find(params[:id])
    end
    def edit
        @sector = Sector.find(params[:id])
    end    

    def new
        @sector = Sector.new
    end
    def create
        @sector = Sector.new(return_param)
        if @sector.save!
            redirect_to sectors_path
        end
    end
    private
    def return_param
        params.require(:sector).permit(:name,:email,{industry_ids:[]})
    end
end