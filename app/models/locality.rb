class Locality < ActiveRecord::Base
  set_table_name 'Locality'
  set_primary_key 'icc'
  alias_attribute :country, :text
end
