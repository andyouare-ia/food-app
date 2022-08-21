module Mutations
  class FoodDelete < BaseMutation
    # TODO: define return fields
    type Types::FoodType

    # TODO: define arguments
    argument :id, ID, required: true

    # TODO: define resolve method
    def resolve(id:)
      food = Food.find(id)
      food.destroy!

      return food
    end
  end
end
