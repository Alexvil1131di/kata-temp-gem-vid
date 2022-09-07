class Convert

    def self.to_kelvin(number,scale)
        case scale
            when "celsius"
                number = number.to_f + 273.16
                scale = "kelvin"
                return "#{number}° #{scale}"
            
            when "fahrenheit"
                number = (number.to_f - 32) * 5/9 + 273.16
                scale = "kelvin"
                return "#{number}° #{scale}"
                
            when "kelvin"
                number = number.to_f
                scale = "kelvin"
                return "#{number}° #{scale}"
        end
    end
    
    def self.to_fahrenheit(number,scale)
        case scale
            when "celsius"
                number = (number.to_f * 9/5) + 32
                scale = "fahrenheit"
                return "#{number}° #{scale}"
            
            when "fahrenheit"
                number = number.to_f
                scale = "fahrenheit"
                return "#{number}° #{scale}"
                
            when "kelvin"
                number = (number.to_f - 273.16) * 9/5 + 32
                scale = "fahrenheit"
                return "#{number}° #{scale}"
        end
    end

    def self.to_celsius(number,scale)
        case scale
            when "celsius"
                number = number.to_f
                scale = "celsius"
                return "#{number}° #{scale}"
            
            when "fahrenheit"
                number = (number.to_f - 32) * 5/9
                scale = "celsius"
                return "#{number}° #{scale}"
                
            when "kelvin"
                number = (number.to_f - 273.16)
                scale = "celsius"
                return "#{number}° #{scale}"
        end
    end

end