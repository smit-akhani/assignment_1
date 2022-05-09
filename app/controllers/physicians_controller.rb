class PhysiciansController < ApplicationController
    def index
        @physicians = Physician.all
    end

    def new
        @physicians = Physician.new
    end

    def create
        @physicians = Physician.new(physician_param)
        if @physicians.save
            redirect_to physicians_path
        end
    end

    def edit
        @physicians = Physician.find(params[:id])
    end

    def update
        @physicians = Physician.find(params[:id])
        if @physicians.update(physician_param)
            redirect_to physicians_path
        end
    end

    def destroy
        @physicians = Physician.find(params[:id])
        if @physicians.delete
            redirect_to physicians_path
        end
    end

    private
    def physician_param
        params.require(:physician).permit(:name,:email)
    end
end
