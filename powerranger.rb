class Person
	attr_accessor :name, :caffeine_level, :life

	def initialize(name, caffeine_level)
		@name = name
		@caffeine_level = caffeine_level
		@life = 1000
		puts "Person #{@name}. You have #{@caffeine_level} caffeine and #{@life} life points."
	end



	def run
		puts "#{@name} runs away. so scared."
		@life -= 10
		puts "#{@name}, your life is now at #{@life}"
	end


	def drink_coffee
		@caffeine_level += 10
		puts "slurp, #{@name} your caffeine level is now #{@caffeine_level}"
	end


	def scream
		puts "#{@name} screams like a little baby."
				@life -= 3
		puts "#{@name}, your life is now at #{@life}"
	end

	def lose_so_much_life
		if life < 5000
			life = 0
			puts "holy shite.. #{@name} is dead now"
		else
			life -= 5000
			puts "omg. that really hurt #{@name}."
		end
	end

	def to_s
		return "#{@name}" # puts will return a nil... must use return
	end




end



#-----------------  CLASS POWER RANGER ---------------#

class PowerRanger < Person
	attr_accessor :strength, :color

	def initialize(name, caffeine_level, strength)
		@strength = strength
		@caffeine_level = caffeine_level
		@strength = strength
		@name = name
		@life = 5000

		puts "Hello power ranger #{@name}. You have #{@caffeine_level} caffeine, #{@strength} strength and #{@life} life. "
	end


	def punch(person_on_receiving_end)
		puts "#{@name} punches " + person_on_receiving_end.to_s
		puts ">--|-@"
		# if person punching has strenght > 5,
		# 	person on receiving end will run away twice
		# else person on receiving end will run away once. 

		if @strength > 5

				puts "#{person_on_receiving_end.to_s} runs away twice!"
				puts " ~~~~-->>>     >--|D;"
				person_on_receiving_end.run
				person_on_receiving_end.scream
				person_on_receiving_end.run
				puts "---------------------"
			else
				person_on_receiving_end.run
				puts "---------------------"
		end
		@caffeine_level -= 5
		puts "#{@name}, your caffeine has dropped to #{@caffeine_level}"
	end


	def use_megazord(person_on_receiving_end)

		puts "#{@name} unleashes the megazord combo on " + person_on_receiving_end.to_s
		punch(person_on_receiving_end)

		person_on_receiving_end.lose_so_much_life
	end


	def rest
		@strength += 5
		@life +=10
	end

end


#-----------------  CLASS EVIL NINJA ---------------#

class EvilNinja < Person
	attr_accessor :strength, :evilness

		def initialize(name, caffeine_level, strength)
		@strength = strength
		@caffeine_level = caffeine_level
		@strength = strength
		@name = name
		@life = 5000
		@evilness = evilness
	end


end


#---------------- RUNNING TESTS --------------------------# 
person1 = Person.new("Bebel",45)
person2 = Person.new("Jermaine",45)
pr1 = PowerRanger.new("Pinky", 100, 99)
pr2 = PowerRanger.new("Bleu", 100, 3)

#person1.drink_coffee
#pr1.drink_coffee


puts "--------"



#pr1.punch(person2)
pr1.use_megazord(person2)





