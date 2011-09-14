class Source < ActiveRecord::Base
  set_table_name 'Source'
  set_primary_key 'ibc'
  alias_attribute :description, :text
  set_inheritance_column :security_type
  has_one :currency, :foreign_key => 'curr'
  has_one :type, :class_name => "SecurityType",  :foreign_key => 'type'

  # class getter for the "type" column
   def security_type
    SecurityType.find_by_type self[:type]
   end
  
  # For paginator
  self.per_page = 50

  # For solr
  searchable do
    text :name, :boost => 5
    text :description
    string :security_type_label
  end
  
  #Denormalising the security label
  def security_type_label
    self.security_type.label.titleize
  end
  
  
end
