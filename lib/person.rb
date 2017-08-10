class Person

	attr_accessor :bank_account
	attr_reader :hygiene, :happiness, :name

	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	def hygiene=(cleanliness)
		if cleanliness > 10 
			@hygiene = 10
		elsif cleanliness < 0
			@hygiene = 0
		else 
			@hygiene = cleanliness
		end
	end


	def happiness=(yay)
		if yay > 10 
			@happiness = 10
		elsif yay < 0
			@happiness = 0
		else 
			@happiness = yay
		end
	end

	def happy?
		@happiness > 7 ? true : false 
	end

	def clean?
		@hygiene > 7 ? true : false
	end


	def get_paid(salary)
		@bank_account += salary
		"all about the benjamins"
	end

	def take_bath
		self.hygiene += 4 # call method on instance 
		"♪ Rub-a-dub just relaxing in the tub ♫"

	end	

	def work_out
		self.hygiene -=3 
		self.happiness += 2
		"♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		friend.happiness += 3
		self.happiness +=3
		"Hi #{friend.name}! It's #{self.name}. How are you?"
	end


	def start_conversation(person, topic)
		if topic == "politics"
			self.happiness -= 2
			person.happiness -= 2
			"blah blah partisan blah lobbyist" 
		elsif topic == "weather"
			self.happiness +=1
			person.happiness += 1
			"blah blah sun blah rain"
		else
			"blah blah blah blah blah"
		end
	end

end
