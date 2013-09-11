#-------------------- MIXIN: Fight_abilities ---------------------------

module Fight_abilities

	# METHOD PUNCH --------------------------

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
			person_on_receiving_end.lose_some_caffeine
			puts "#{@name}, your caffeine has dropped to #{@caffeine_level}"
		end

	# METHOD USE_MEGAZORD --------------------------	
	def use_megazord(person_on_receiving_end) # person_on_receiving end is the argument passed in

		puts "#{@name} unleashes the megazord combo on " + person_on_receiving_end.to_s #to_s defined above
		punch(person_on_receiving_end)
		person_on_receiving_end.lose_so_much_life #calls method lose_so_much life from Person class
	end		

	# METHOD CAUSE_MAYHEM --------------------------
		def cause_mayhem(person_on_receiving_end)
			person_on_receiving_end.lose_all_caffeine
		end

end







class Person

	attr_accessor :name, :caffeine_level, :life 

	def initialize(name, caffeine_level)
		@name = name
		@caffeine_level = caffeine_level
		@life = 1000
		#puts "Person #{@name}. You have #{@caffeine_level} caffeine."#and #{@life} life points."
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


	def lose_some_caffeine
		@caffeine_level -= 10
		puts "#{@name} is sooo sleepy..zzzzz."
		puts "caffeine is at: #{@caffeine_level}"
	end


	def lose_all_caffeine
		@caffeine_level = 0
		puts "#{@name} is sooo sleepy..zzzzz"
		puts "#{@name}'s caffeine is now at #{@caffeine_level}"
	end


	def recover
		@life +=10
		@caffeine_level +=100
		puts "#{@name}, life: #{@life}  caffeine: #{caffeine_level}"
	end


	def to_s
		return "#{@name}" # puts will return a nil... must use return
	end
end



#-----------------  CLASS POWER RANGER ---------------#

class PowerRanger < Person
	include Fight_abilities

	attr_accessor :strength, :color

	def initialize(name, caffeine_level, strength)
		super(name,caffeine_level)

		@strength = strength
		@caffeine_level = caffeine_level
		@strength = strength
		@name = name
		@life = 5000

		puts "#{@name} is born as a Power Ranger. #{@name} has #{@caffeine_level} caffeine, #{@strength} strength and #{@life} life. "
	end
end






#-----------------  CLASS EVIL NINJA ---------------#

class EvilNinja < Person
	include Fight_abilities


	attr_accessor :strength, :evilness

		def initialize(name, caffeine_level, strength)	
		super(name, caffeine_level)
		@strength = strength
		#@caffeine_level = caffeine_level (we're keeping caffeine level the same)
		#@strength = strength
		#@name = name
		@life = 5000
		@evilness = rand(1000)

		puts "#{@name} is born as an evil lord. #{@name} has a strength of #{@strength} and is level #{@evilness} evil."
	end
end






#---------------- RUNNING TESTS --------------------------# 

def fight_scene

		person1 = Person.new("Bebel",55)
		#puts""

		person2 = Person.new("Jermaine",45)
		puts""

		pr1 = PowerRanger.new("Pinky", 100, 99)
		#puts""
		pr1.punch(person1)

		#pr2 = PowerRanger.new("Bleu", 100, 3)
		#puts""

		#evil1 = EvilNinja.new("EVIL GUY", 9000, 1000)
		#evil2 = EvilNinja.new("EVIL GAL", 10000, 1100)

		#person1.drink_coffee
		#pr1.drink_coffee


		puts "--------"



		#pr1.punch(person2)
		#pr1.use_megazord(person2)
		#.cause_mayhem(person1)
		#pr1.punch(person1)
		#person1.recover

		#pr1.punch(person1)


end

fight_scene


