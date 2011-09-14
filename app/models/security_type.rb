class SecurityType < ActiveRecord::Base
    set_table_name 'SecType'
    set_primary_key 'uid'
    alias_attribute :ib_text, :text
    set_inheritance_column :security_type

    # getter for the "type" column
     def security_type
      self[:type]
     end

    # # setter for the "type" column
    # def security_type=(s)
    #  self[:type] = s
    # end

end
