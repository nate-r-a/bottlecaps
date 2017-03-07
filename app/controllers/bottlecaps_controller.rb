class BottlecapsController < ApplicationController
  def bottlecap_params
    params.require(:bottlecap).permit(:name, :brewery, :image, :tag_list)
  end
end
