class Power < ApplicationRecord
    has_many :heroines

    def formatted_name
        self.name.split.map{|word|word.capitalize}.join(" ")
    end
end
