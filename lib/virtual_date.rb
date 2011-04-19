require 'chronic'

module VirtualDate
  
  def self.included klass
    klass.extend ClassMethods
  end
                      
  def self.format
    @format || "%Y-%m-%d"
  end
  
  def self.format= format
    @format = format
  end
  
  def self.date_format date, format
    date.strftime(format)
  end
  
  def self.to_date string
    Chronic.parse(string)
  end
  
  module ClassMethods
    def act_as_virtual_date(*attributes)
  
      attributes.each do |attribute|
        # Setter
        define_method "#{attribute.to_s}_str=" do |arg|
          send("#{attribute.to_s}=", VirtualDate.to_date(arg))
        end        
        # Getter
        define_method "#{attribute.to_s}_str" do |*args|
          VirtualDate.date_format send("#{attribute.to_s}"), (args[0] || VirtualDate.format)
        end
      end
    
    end
  end
  
end