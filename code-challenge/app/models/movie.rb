class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles

    def cast_role(actor, character_name, salary)
        new_role = Role.create(character_name: character_name, salary: salary, actor_id: actor.id, movie_id: self.id)
        puts "Casted new role!"
        new_role
    end

    #got this one to work tho, WOOOO! 
    def all_credits
        array_of_credits = self.roles.map do |role|
            "#{role.character_name}: played by #{role.actor.name}"
        end
    end

end