class LocationsController < ApplicationController

    # before_action :require_login

    def index
        @locations = Location.all
    end
  
    def show
        @location = Location.find_by_id(params[:id])
    end
  
    def new
        @location = Location.new
    end
  
    def create
        @location = Location.new(location_params)
        if @location.save
            redirect_to location_path(@location)
          else
            render :new
          end
        end
  
    def edit
      @location = Location.find_by(id: params[:location_id])
      
      if @location.user_id != current_user.id
        redirect_to locations_path
      end
    end
  
    def update
      @location.update(location_params)
  
    #  redirect_to ..._path(
    end
  
  private
  
    #def location_params
    #  params.require(:location).permit(:
    #end

end
