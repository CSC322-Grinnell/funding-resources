class Resource < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search, against: [:title, :description, :amount, :cp, :source], using: {tsearch: {prefix: true}}

  def print_decription
    return "#{description}"
  end
end
