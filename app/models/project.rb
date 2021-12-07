class Project < ApplicationRecord
    extend Devise::Models
    # requires the title and description 
    validates_presence_of :title
    validates_presence_of :description
end
