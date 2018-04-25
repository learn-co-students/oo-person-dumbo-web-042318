# your code goes here
#
class Person
  attr_accessor :bank_account, :happiness 
  attr_reader :name, :hygiene 

  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness = @hygiene = 8
  end

  def happiness=(num)
    @happiness = num
    @happiness = 10 if @happiness > 10
    @happiness = 0 if @happiness < 0
    # limiter(@happiness, num, 0, 10)
  end

  def hygiene=(num)
    @hygiene = num
    @hygiene = 10 if @hygiene > 10
    @hygiene = 0 if @hygiene < 0
  end

  def limiter(limited_var, num, min, max)
    limited_var = num
    limited_var = max if limited_var > max
    limited_var = min if limited_var < min 
  end

  def happy?
    return @happiness > 7 ? true : false
  end

  def clean?
    return @hygiene > 7 ? true : false
  end

  def get_paid(paycheck)
    @bank_account += paycheck
    return 'all about the benjamins'
  end

  def take_bath
    hygiene_test = @hygiene + 4
    self.hygiene = hygiene_test
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    hygiene_test = @hygiene - 3
    self.hygiene = hygiene_test
    happy_test = @happiness + 2
    self.happiness = happy_test
    return "♪ another one bites the dust ♫"
  end

  def call_friend(person_obj)
    happy_test = @happiness + 3
    self.happiness = happy_test
    person_obj.happiness += 3
    return "Hi #{person_obj.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person_obj, topic)
    case topic
      when "politics"
        happy_test = @happiness - 2
        self.happiness = happy_test
        person_obj.happiness -= 2
        return "blah blah partisan blah lobbyist"
      when "weather"
        happy_test = @happiness + 1
        self.happiness = happy_test
        person_obj.happiness += 1
        return "blah blah sun blah rain"
      else 
        return ("blah " * 5).strip

    end

  end



end
