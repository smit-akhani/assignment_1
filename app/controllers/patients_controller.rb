class PatientsController < ApplicationController
    def index
        @patients = Patient.all
    end

    def new
        @patients = Patient.new
    end

    def create
        @patients = Patient.new(patient_param)
        if @patients.save
            redirect_to patients_path
        end
    end

    def edit
        @patients = Patient.find(params[:id])
    end

    def update
        @patients = Patient.find(params[:id])
        if @patients.update(patient_param)
            redirect_to patients_path
        end
    end

    def destroy
        @patients = Patient.find(params[:id])
        if @patients.delete
            redirect_to patients_path
        end
    end

    private
    def patient_param
        params.require(:patient).permit(:name,:email)
    end
end
