class Actor < ActiveRecord::Base
    has_many :roles
    has_many :movies, through: :roles

    def total_salary
        self.roles.sum do |role|
            role.salary
        end
    end

    def blockbusters
        self.movies.where("box_office_earnings > 50000000")
    end

    #I couldnt get this to work lol
    # def self.most_successful
    #     self.all.max_by do |actor|
    #         actor.roles.salary
    #     end
    # end
end