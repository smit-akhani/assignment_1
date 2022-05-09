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
            @temp_arr = params[:industry][:arr_sectors]
            @temp_arr.shift
            if !@temp_arr.empty?
                @temp_arr.each do |ele|
                    @industries.sectors << Sector.find(ele)
                end
            end
            redirect_to industries_path
        end
    end

    def edit
        @industries = Industry.find(params[:id])
    end

    def update
        @industries = Industry.find(params[:id])
        if @industries.update(industry_param)
            @temp_arr = params[:industry][:arr_sectors]
            @temp_arr.shift
            @industries.sectors.delete_all
            if !@temp_arr.empty?
                @temp_arr.each do |ele|
                    @industries.sectors << Sector.find(ele)
                end
            end
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
