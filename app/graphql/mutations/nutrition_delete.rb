module Mutations
  class NutritionDelete < BaseMutation
     # TODO: define return fields
     type Types::NutritionType

     # TODO: define arguments
     argument :id, ID, required: true

     # TODO: define resolve method
     def resolve(id:)
       nutrition = Nutrition.find(id)
       nutrition.destroy!

       return nutrition
     end
  end
end
