class PatientsController < ApplicationController
    def index
        @patients=Patient.all
    end
    def show
        @patient=Patient.find(params[:id])
    end

    def new
        @patient=Patient.new
    end

    def create
        @patient=Patient.new(patient_params)

        if @patient.save
            redirect_to patients_path
        else
            render :new, status: :unprocessable_entity
        end
    end
    
    private
        def patient_params
            params.require(:patient).permit(:name,:email)
        end
    
end




