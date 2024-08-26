# frozen_string_literal: true

module Mutations
  class CreatePost < BaseMutation
    field :post, Types::PostType, null: false

    argument :title, String, required: true

    def resolve(title:)
      post = ::Post.new({ title: title })
      post.save

      { post: post }
    end
  end
end
