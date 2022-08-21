module Mutations
  class FoodUpdate < BaseMutation
    # TODO: define return fields
    type Types::FoodType

    # TODO: define arguments
    argument :id, ID, required: true
    argument :name, String, required: false
    argument :place_of_origin, String, required: false
    argument :image, String, required: false

    # TODO: define resolve method
    def resolve(**args)
      food = Food.find(args[:id])
      food.update!(args)

      return food
    end
  end
end
