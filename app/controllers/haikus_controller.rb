class HaikusController < ApplicationController
  def index
  end

  def new
    @haiku = Haiku.new
  end

  def create
    @haiku = Haiku.new(haiku_params)
    @haiku.user = current_user
    if @haiku.save
      respond_to do |format|
        flash[:notice] = "Your haiku is great! / Thank you for making such a / wonderful haiku."
        format.html { redirect_to root_path }
        format.js
      end
    else
      flash[:alert] = "Your haiku is great! / But it was not submitted. / Please try another time."
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js
      end
    end
  end

  def destroy
    @haiku = Haiku.destroy(param[:id])
    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.js
    end
  end

private
  def haiku_params
    params.require(:haiku).permit(:haiku)
  end

end