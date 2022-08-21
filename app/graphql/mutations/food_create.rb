module Mutations
  class FoodCreate < BaseMutation
    # TODO: define return fields
    type Types::FoodType

    # TODO: define arguments
    argument :name, String, required: true
    argument :place_of_origin, String, required: true
    argument :image, String, required: true

    # TODO: define resolve method
    def resolve(**args)
      Food.create!(args)
    end
  end
end
