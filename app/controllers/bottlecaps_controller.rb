class BottlecapsController < ApplicationController
  def bottlecap_params
    params.require(:bottlecap).permit(:drink, :brand, :parent, :image, :tag_list, :cap_detail_list, :drink_detail_list, :pinned, :favorite)
  end
  
  def index
    @bottlecaps = Bottlecap.all
    render 'bottlecaps'
  end
  
  def tagged
    @bottlecaps = Bottlecap.tagged_with(params[:tag], wild: true, any: true)
    # @bottlecaps += Bottlecap.where("drink ILIKE ? OR brand ILIKE ? OR parent ILIKE ?", "%#{params[:tag]}%", "%#{params[:tag]}%", "%#{params[:tag]}%")
    # @bottlecaps += Bottlecap.where("drink ILIKE ?", params[:tag])
    render 'bottlecaps'
  end
  
end
