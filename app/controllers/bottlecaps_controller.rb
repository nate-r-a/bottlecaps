class BottlecapsController < ApplicationController
  def bottlecap_params
    params.require(:bottlecap).permit(:name, :brewery, :image, :tag_list)
  end
  
  def index
    @bottlecaps = Bottlecap.all
    
    render 'bottlecaps'
  end
  
  def tag
    @bottlecaps = Bottlecap.tagged_with(params[:tag], :wild => true)
    @bottlecaps += Bottlecap.where("drink ILIKE ? OR brand ILIKE ? OR parent ILIKE ?", "%#{params[:tag]}%", "%#{params[:tag]}%", "%#{params[:tag]}%")
    # @bottlecaps += Bottlecap.where("drink ILIKE ?", params[:tag])

    render 'bottlecaps'
  end
  
end
