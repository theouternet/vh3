class SharesController < ApplicationController

    # before_action :require_login

    def index
        @shares = Share.all
    end
  
    def show
        @share = Share.find_by_id(params[:id])
    end
  
    def new
        @share = Share.new
    end
  
    def create
        @share = Share.new(share_params)
        if @share.save
            redirect_to share_path(@share)
          else
            render :new
          end
        end
  
    def edit
      @share = Share.find_by(id: params[:share_id])
      
      if @share.user_id != current_user.id
        redirect_to shares_path
      end
    end
  
    def update
      @share.update(share_params)
  
    #  redirect_to ..._path(
    end
  
  private
  
    #def share_params
    #  params.require(:share).permit(:
    #end
  

end
