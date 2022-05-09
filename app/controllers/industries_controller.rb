class IndustriesController < ApplicationController
    def show

    end
    
    def index
        @industries = Industry.all
    end

    def new
        @industries = Industry.new
    end

    def create
        @industries = Industry.new(industry_param)
        if @industries.save
            redirect_to industries_path
        end
    end

    def edit
        @industries = Industry.find(params[:id])
    end

    def update
        @industries = Industry.find(params[:id])
        if @industries.update(industry_param)
            redirect_to industries_path
        end
    end

    def destroy
        @industries = Industry.find(params[:id])
        if @industries.delete
            redirect_to industries_path
        end
    end

    private
    def industry_param
        params.require(:industry).permit(:name,:email)
    end

end
