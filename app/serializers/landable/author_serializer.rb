module Landable
  class AuthorSerializer < ActiveModel::Serializer
    attributes :id, :username, :email, :first_name, :last_name
  end
end
