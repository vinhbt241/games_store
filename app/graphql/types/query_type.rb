# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :node, Types::NodeType, null: true, description: 'Fetches an object given its ID.' do
      argument :id, ID, required: true, description: 'ID of the object.'
    end

    field :nodes, [Types::NodeType, { null: true }], null: true,
                                                     description: 'Fetches a list of objects given a list of IDs.' do
      argument :ids, [ID], required: true, description: 'IDs of the objects.'
    end

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :game, resolver: Resolvers::GameResolver
    field :games, resolver: Resolvers::GamesResolver
    field :genre, resolver: Resolvers::GenreResolver
    field :genres, resolver: Resolvers::GenresResolver
    field :purchased_games, resolver: Resolvers::PurchasedGamesResolver

    def node(id:)
      context.schema.object_from_id(id, context)
    end

    def nodes(ids:)
      ids.map { |id| context.schema.object_from_id(id, context) }
    end
  end
end
