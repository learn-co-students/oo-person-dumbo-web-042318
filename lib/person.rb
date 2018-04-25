# your code goes here
class Person
  attr_reader :name, :happiness, :bank_account, :hygiene
  attr_accessor :hygiene

  def initialize(name)
    @name = name
    @happiness = 8
    @bank_account = 25
    @hygiene = 8
  end

  def bank_account=(bank_account)
    @bank_account = bank_account
  end

  def happiness=(happiness)
    if happiness < 0
      @happiness = 0
    elsif happiness > 10
      @happiness = 10
    else
      happiness > 0 && happiness < 10
      @happiness = happiness
    end
  end

  def hygiene=(hygiene)
    if hygiene < 0
      @hygiene = 0
    elsif hygiene > 10
      @hygiene = 10
    else
      hygiene > 0 && hygiene < 0
      @hygiene = hygiene
    end
  end

def clean?
  if @hygiene > 7
    return true
  else
    return false
  end
end


def happy?
  if @happiness > 7
    return true
  else
    return false
  end
end

def get_paid(salary)
  @bank_account += salary
  return "all about the benjamins"
end

def take_bath
  if hygiene < 10
    self.hygiene += 4
  else
    self.hygiene
  end
    return "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    if hygiene > 0
      self.hygiene -= 3
  end
  if happiness < 10
    self.happiness += 2
  end
  return "♪ another one bites the dust ♫"
end

def call_friend(friend)
  friend.happiness += 3
  self.happiness += 3
  "Hi #{friend.name}! It's #{self.name}. How are you?"
end

def start_conversation(newperson, topic)
if topic == "politics"
    self.happiness -= 2
    newperson.happiness -= 2
    return 'blah blah partisan blah lobbyist'
 elsif topic == "weather"
   self.happiness += 1
   newperson.happiness +=1
   return 'blah blah sun blah rain'
else
   return 'blah blah blah blah blah'
end
end
end
