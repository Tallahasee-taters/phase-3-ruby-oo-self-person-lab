require("pry")
class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        @happiness = value.clamp(0, 10)
        # the bellow method is doing the same thing as the .clamp method
        
        # if value <= 10 && value >= 0
        #     @happiness = value
        # elsif value > 10
        #     @happiness = 10
        # else 
        #     @happiness = 0
        # end
    end

    def hygiene=(value)
        @hygiene = value.clamp(0, 10)
    end

    def happy
        @happy
    end
    def happy?
        self.happiness > 7
    end
    def clean?
        self.hygiene > 7
    end
    def get_paid(amount)
        self.bank_account += amount
        return "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out 
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else topic != "politics" || "weather"
            "blah blah blah blah blah"
        end
    end

    def return_self
        self
    end
end

matt = Person.new("Matt Eva")
ryan = Person.new("Ryan Sullivan")

# matt.name

# matt.return_self
# ryan.return_self
binding.pry
