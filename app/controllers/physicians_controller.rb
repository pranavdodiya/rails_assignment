class PhysiciansController< ApplicationController
    def index
        @physicians=Physician.all
    end

    def show
        @physician=Physician.find(params[:id])
    end

    def new 
        @physician=Physician.new
    end
    def create
        @physician=Physician.new(physician_params)

        if @physician.save
            redirect_to physicians_path
        end
    end

    private
        def physician_params
            params.require(:physician).permit(:name,:email)
        end

end