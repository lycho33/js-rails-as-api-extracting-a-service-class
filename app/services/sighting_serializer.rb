class SightingSerializer
    def initialize(sighting_object)
        @sighting = sighting_object
    end

    def to_serialized_json
        @sighting.to_json(:include => {
          :bird => {:only => [:name, :species]},
          :location => {:only => [:latitude, :longitude]}
        }, :except => [:updated_at])
    end
    def to_serialized_json
        options = { #defined variable
          include: {
            bird: {
              only: [:name, :species]
            },
            location: {
              only: [:latitude, :longitude]
            }
          },
          except: [:updated_at],
        }
        @sighting.to_json(options) #pass options variable as a HASH instead of a long list of options
    end 
end 