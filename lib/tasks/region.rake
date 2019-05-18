namespace :region do
    desc "china city data"
    task seed: :environment do
        regions=File.read('./lib/region/pcas-code.json')
        @regions= JSON.parse(regions)
        if Province.count==0 && Town.count==0 && Area.count==0 && Street.count==0
            @regions.each do |province|
            #province
            @province=Province.create(code: province["code"],name: province["name"])
                #town
                province["children"].each do |town|
                    @town=@province.towns.create(code: town["code"],name: town["name"])
                    #area
                    town["children"].each do |area|
                        @area=@town.areas.create(code: area["code"],name: area["name"],province_id: @province.id)
                        #street
                        area["children"].each do |street|
                            @area.streets.create(code: street["code"],name: street["name"],province_id: @province.id,town_id: @town.id)
                        end
                    end
                end
            end
        end
    end
end