module C2dm
  class Base < ActiveRecord::Base # :nodoc:
    
    self.abstract_class = true
    
    def self.table_name # :nodoc:
      self.to_s.gsub("::", "_").tableize
    end
    
  end
end
