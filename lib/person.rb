require 'pry'

class Person
  attr_accessor :balance, :hygiene
  attr_reader :name



  def initialize(name)
    @name = name
    @balance = 25
    @happiness = 8
    @hygiene = 8
  end

  def bank_account=(amount)
    @balance += amount
  end

  def bank_account
    @balance
  end

  def clean?
    if @hygiene > 7
      true
    else
      false
    end
  end

  def happy?
    if @happiness > 7
      true
    else
      false
    end
  end

  def get_paid(salary)
    @balance += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene+=4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def happiness=(value)
    @happiness = value
    if @happiness > 10
      @happiness = 10
    elsif @happiness < 0
      @happiness =0
    else
      @happiness
    end
  end

  def happiness
    @happiness
  end
  def hygiene=(value)
    @hygiene = value
    if @hygiene > 10
      @hygiene = 10
    elsif @hygiene < 0
      @hygiene = 0
    else
      @hygiene
    end
  end

  def hygiene
    @hygiene
  end

  def call_friend(friend)
    friend.happiness += 3
    self.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(friend, topic)
    case topic
    when "politics"
      self.happiness -= 2
      friend.happiness -= 2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1
      friend.happiness += 1
      "blah blah sun blah rain"
    else
       "blah blah blah blah blah"
    end
  end

end
