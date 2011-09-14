class Bar < ActiveRecord::Base
  set_table_name 'BarSize'
  set_primary_key 'uid'
  set_inheritance_column :bar_type

  # getter for the "type" column
  def bar_type
   self[:type]
  end

  # setter for the "type" column
  def bar_type=(s)
  self[:type] = s
  end

end
