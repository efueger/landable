module Landable
  module Traffic
    class SearchTerm < ActiveRecord::Base
      include Landable::TableName

      lookup_by :search_term, cache: 50, find_or_create: true

      has_many :attributions
    end
  end
end
