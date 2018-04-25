class Person
  attr_accessor(:bank_account, :happiness, :hygiene)
  attr_reader(:name)

    def initialize(name)
      @name = name
      @balance = 25
      @happiness = 8
      @hygiene = 8
    end

    def bank_account
      @balance
    end


    def happiness
      [@happiness, 0, 10].sort[1]
    end

    def hygiene
      [@hygiene, 0, 10].sort[1]
    end

    def happy?
      if @happiness > 7
        true
      else
        false
      end
    end

    def clean?
      if @hygiene > 7
        true
      else
        false
      end
    end

    def get_paid(salary)
      @balance += salary
      return "all about the benjamins"
    end

    def take_bath
      self.hygiene = @hygiene + 4
      return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
      self.hygiene -= 3
      self.happiness += 2
      return "♪ another one bites the dust ♫"
    end


    def call_friend(person)
      self.happiness += 3
      person.happiness += 3

      return "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
      if topic.downcase == "politics"
        self.happiness -= 2
        person.happiness -= 2
        return "blah blah partisan blah lobbyist"
      elsif topic.downcase == "weather"
        self.happiness += 1
        person.happiness += 1
        return 'blah blah sun blah rain'
      else
        return "blah blah blah blah blah"
      end

    end

end
