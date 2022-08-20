module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :test_field, String, null: false,
      description: "An example field added by the generator"
    def test_field
      "Hello World!"
    end

    field :all_food, [Types::FoodType], null: false, description: 'Get all the food items.'
    def all_food
      Food.all
    end

    field :all_nutrition, [Types::NutritionType], null: false, description: 'Get all the nutrition values for a food'
    def all_nutrition
      Nutrition.all
    end

  end
end
