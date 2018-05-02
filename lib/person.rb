# your code goes here
class Person
  attr_accessor :bank_account
  attr_reader :name, :happiness, :hygiene
  def initialize(name, balance=25)
    @name = name
    @bank_account = balance
    @happiness = 8
    @hygiene = 8
  end

  def happiness=(num)
      @happiness = num

    if @happiness>10
      @happiness=10
    elsif @happiness<0
      @happiness=0
    end
  end

  def hygiene=(num)
      @hygiene = num

    if @hygiene>10
      @hygiene=10
    elsif @hygiene<0
      @hygiene=0
    end
  end

  def get_paid(salary)
    self.bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end
  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(person)
    self.happiness +=3
    person.happiness += 3
    "Hi #{person.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when 'politics'

      person.happiness -=2
      self.happiness -=2
       'blah blah partisan blah lobbyist'
    when 'weather'
      person.happiness +=1
      self.happiness +=1
       'blah blah sun blah rain'
     else
       'blah blah blah blah blah'
    end
  end

  def happy?
    self.happiness > 7
  end

  def clean?
    self.hygiene > 7
  end



#-------------
end
