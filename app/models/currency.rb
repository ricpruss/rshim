class Currency < ActiveRecord::Base
  set_table_name 'Currency'
  set_primary_key 'code'
  belongs_to :locality, :foreign_key => 'icc'
end
