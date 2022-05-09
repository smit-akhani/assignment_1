class SectorsController < ApplicationController
    def index
        @sectors = Sector.all
    end

    def new
        @sectors = Sector.new
    end

    def create
        @sectors = Sector.new(sector_param)
        if @sectors.save
            redirect_to sectors_path
        end
    end

    def edit
        @sectors = Sector.find(params[:id])
    end

    def update
        @sectors = Sector.find(params[:id])
        if @sectors.update(sector_param)
            redirect_to sectors_path
        end
    end

    def destroy
        @sectors = Sector.find(params[:id])
        if @sectors.delete
            redirect_to sectors_path
        end
    end

    private
    def sector_param
        params.require(:sector).permit(:name)
    end
end
