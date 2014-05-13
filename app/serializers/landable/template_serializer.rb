module Landable
  class TemplateSerializer < ActiveModel::Serializer
    attributes :id, :name, :body, :description
    attributes :thumbnail_url, :slug, :is_layout, :editable
    attributes :file, :is_publishable

    embed    :ids
    has_one  :published_revision
  end
end
