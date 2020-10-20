class Resource < ApplicationRecord
  #Including pg_search capabilities to this model
  include PgSearch::Model

  #Definining the variables the pg_search should  work for,
  #the type of search (tsearch = full text search);
  #and whether it should search for partial words or not (prefix: true)
  pg_search_scope :search, against: [:title, :description, :amount, :cp, :source], using: {tsearch: {prefix: true}}

  def print_decription
    return "#{description}"
  end
end
