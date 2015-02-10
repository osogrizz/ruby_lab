class Greeter
  def greet 
    
  end



  def quote tag = nil

  
  quotes = {
    :life => [
      "The best is yet to come.",

      "I'm gonna live till I die.",

      "The cigarettes you light one after another won’t help you forget her."
    ],
    :love => [
      "....A simple I love you means more than money....",

      "For nobody else, gave me thrill-with all your faults, I love you still. It had to be you, wonderful you, it had to be you.",

      "I like intelligent women. When you go out, it shouldn't be a staring contest."
    ],

    :alcohol => [
        "Drunk ",
        
        "quotes",

        "..."
    ]
  }

 
    tag = tag.to_sym if tag

    if tag && quotes[tag]
      quotes[tag].sample
      # quotes[tag][rand(0...quotes[tag].size)]

    else
      "The best is yet to come."

    end
 
  end

end

