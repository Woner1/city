class HomeController < ApplicationController
  def index
    province_id=params[:province_id]
    town_id=params[:town_id]
    area_id=params[:area_id]
    street_id=params[:street_id]
    if province_id.present?
        province=Province.find(province_id)
        if town_id.present?
          town=province.towns.find(town_id)
        end
          if area_id.present?
            area=town.areas.find(area_id)
          end
          if street_id.present?
            street=area.streets.find(street_id)
          end
    end


    render json: { status: 200,province: province,town: town,area: area,street: street }
  end

def show
  @province=Province.all
end

def create
  
  @province=Province.all

  if home.save!
    render json: { status: 200 }
  else
    render json: { status: :error }
  end
end

def homeparams
  params.require(:home).permit(:province)
end



end
