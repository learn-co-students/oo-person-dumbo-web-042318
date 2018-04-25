class Person 
  attr_accessor :bank_account, :happiness, :hygiene
  attr_reader :name
  
  def initialize (name, bank_account=25, happiness=8, hygiene=8)
    @name = name 
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end
  
  def happiness= (points)
    if points < 0
      @happiness = 0 
    elsif points > 10 
      @happiness = 10 
    else 
      @happiness = points
    end
  end 
  
  def hygiene= (points)
    if points < 0 
      @hygiene = 0 
    elsif points > 10 
      @hygiene = 10 
    else
      @hygiene = points 
    end 
  end 
  
  def clean?
    hygiene > 7
  end 
  
  def happy?
    happiness > 7
  end 
  
  def get_paid (salary)
   @bank_account += salary
   "all about the benjamins"
  end  
  
  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  
  def work_out 
    self.happiness += 2 
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end 
  
  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end
  
  def start_conversation(friend, topic)
    if topic == "weather"
      self.happiness += 1 
      friend.happiness += 1
      'blah blah sun blah rain'
    elsif topic == "politics"
      self.happiness -= 2 
      friend.happiness -= 2
      'blah blah partisan blah lobbyist'
    else 
      'blah blah blah blah blah'
    end 
  end 
end 
