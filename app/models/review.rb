class Review < ActiveRecord::Base 
    belongs_to :product
    belongs_to :user 

    def print_review
        puts "Review for #{self.producdt.name} by #{self.user.name}: #{self.star_rating}: #{self.comment}"
    end

end