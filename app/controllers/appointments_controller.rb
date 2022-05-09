class AppointmentsController < ApplicationController
    def index
        @appointments = Appointment.all
    end

    def new
        @appointments = Appointment.new
    end

    def create
        @appointments = Appointment.new(appointment_param)
        if @appointments.save
            redirect_to appointments_path
        end
    end

    def edit
        @appointments = Appointment.find(params[:id])
    end

    def update
        @appointments = Appointment.find(params[:id])
        if @appointments.update(appointment_param)
            redirect_to appointments_path
        end
    end

    def destroy
        @appointments = Appointment.find(params[:id])
        if @appointments.delete
            redirect_to appointments_path
        end
    end

    private
    def appointment_param
        params.require(:appointment).permit(:patient_id,:physician_id,:appointment_date)
    end
end
