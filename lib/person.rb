# your code goes here
# Make a class Person


class Person

    attr_accessor :bank_account
    # , :happiness, :hygiene

    attr_reader :name, :happiness, :hygiene

    # Initialize
    def initialize (name)

            #1. Remember the name (can't change once it's set)

        @name = name
    # 2. Start 25$ in bank account (flexible)
        @bank_account = 25

    #3. Start with eight happiness points (0-10) (flex)
        # @happiness = happiness 
        @happiness = 8
    #4. start eight hygiene points (0-10) (flex)
        # @hygiene = hygiene
        @hygiene = 8
    end
        
    def happiness=(num)
        if num < 0
            num = 0
        elsif num > 10
            num = 10
        end
    @happiness = num
    end

    def hygiene=(num)
        if num <0
            num = 0
        elsif num > 10
            num = 10
        end
        @hygiene = num
    end

    def happy?
        if self.happiness > 7
            return true
        else false
        end
    end

    
    def clean?
        if self.hygiene > 7
            return true
        else
            return false
        end

    end

    def get_paid (salary)
          self.bank_account += salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return '♪ another one bites the dust ♫'
    end

    def call_friend (friend)
        self.happiness += 3
        friend.happiness +=3
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (friend,topic)
        if topic == "politics"
            self.happiness -=2
            friend.happiness -=2
            return 'blah blah partisan blah lobbyist'
        

        elsif topic == "weather"
            self.happiness +=1
            friend.happiness +=1
            return 'blah blah sun blah rain' 
        
        else

        return 'blah blah blah blah blah'

        end
    end


end


