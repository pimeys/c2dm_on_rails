module C2dm
  class Base < ActiveRecord::Base # :nodoc:
    self.abstract_class = true
  end
end
