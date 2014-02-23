class Death

  @random_death_synonym = [
    "You're going to die at the young age of ",
    "You're going to meet your maker at the youthful age of ",
    "You'll be six feet under when you are ",
    "The Grim Reaper will come for you at the age of ",
    "Don't forget your date with the devil at the age of ",
    "You will fall into a permament slumber when you are ",
    "You're going to expire at the rotten age of ",
    "Prepare for the next life at age ",
    "You will cease to exist at the young age of ",
    "You will find yourself finally at peace at the age of ",
    "Another one bites the dust! You're gonna bite the big one when you are ",
    "You're going to take your last breath at the age of ",
    "Woo hoo! You're cashing in all your chips at the young age of ",
    "*Ribbit* You're going to croak at the age of ",
    "You're going to a better place at the age of ",
    "You're going to kick the bucket at the age of ",
    "It's the Final Countdooooown! Say goodbye at the age of ",
    "This is the curtain call! Prepare to take your final bow at the age of ",
    "The last stop on your journey through life will arrive at the age of "
  ]

  @random_death_cause = [
    ["Overeating at a feast given in your honor.","http://en.wikipedia.org/wiki/Julien_Offray_de_La_Mettrie#Death"],
    ["Being hit by a cannonball that was fired as a salute in your honor.","http://en.wikipedia.org/wiki/John_Kendrick_(American_sea_captain)#The_Sandwich_Islands_and_death"],
    ["Drowning in a flood of beer.","http://en.wikipedia.org/wiki/London_Beer_Flood"],
    ["Sticking a piece of whale bone through your urinary tract to try to clear a blockage.","http://en.wikipedia.org/wiki/Gouverneur_Morris#Death_and_legacy"],
    ["Swinging a baseball bat so hard that it ruptures your bladder.","http://en.wikipedia.org/wiki/Jim_Creighton#Death"],
    ["Accidentally shooting yourself in court while demonstrating to a jury how your client's alleged victim might have accidentally shot himself.","http://en.wikipedia.org/wiki/Clement_Vallandigham#Death"],
    ["Being poisoned, shot in the head, shot three more times, bludgeoned, castrated, and then thrown into a river only for the cause of death to be drowning.","http://en.wikipedia.org/wiki/Grigori_Rasputin#Murder"],
    ["Being crushed or drowned by molasses.","http://en.wikipedia.org/wiki/Boston_molasses_disaster"],
    ["Being hit by a baseball pitch.","http://en.wikipedia.org/wiki/Ray_Chapman#Death"],
    ["Being bit by a monkey.","http://en.wikipedia.org/wiki/Alexander_i_of_greece#Death"],
    ["Having your clothes set ablaze by an errant disposed match.","http://en.wikipedia.org/wiki/Martha_Mansfield#Death"],
    ["Having your racecar's drive chain snap and decapitate you.","http://en.wikipedia.org/wiki/J._G._Parry-Thomas#Death"],
    ["Having your long scarf get caught in the wheel of the car you are riding in, thus snapping your neck.","http://en.wikipedia.org/wiki/Isadora_Duncan#Death"],
    ["Falling down a chimney into the furnace after mistaking the chimney for a balcony.","http://en.wikipedia.org/wiki/Sirkka_Sari"],
    ["Having a stroke after reading a false premature obituary of yourself.","http://en.wikipedia.org/wiki/Marcus_garvey#Death"],
    ["Accidentally torpedoing your own ship.","http://en.wikipedia.org/wiki/USS_Tang_(SS-306)#Fifth_war_patrol"],
    ["Being crushed by giant stacks of newspapers, books, and other large items that you have been hoarding.","http://en.wikipedia.org/wiki/Langley_Collyer#Langley_Collyer.27s_death"],
    ["Being electrocuted onstage by a live microphone because you forgot to dry your hands.","http://en.wikipedia.org/wiki/Leslie_Harvey"],
    ["Being crushed to death between a moving wall and a stationary wall at a Disneyland ride.","http://en.wikipedia.org/wiki/Incidents_at_Disneyland_Resort"],
    ["Being poisoned by a modified umbrella.","http://en.wikipedia.org/wiki/Georgi_Markov#Assassination"],
    ["Achieving a high score in the video game BERZERK.","http://en.wikipedia.org/wiki/Berzerk_(video_game)#Berzerk_in_popular_culture"],
    ["Choking on an eye drop bottle cap.","http://en.wikipedia.org/wiki/Tennessee_williams#Death"],
    ["Getting hit in the groin by a tennis ball.","http://en.wikipedia.org/wiki/Dick_Wertheim"],
    ["Throwing yourself through a window trying to illusrate that the glass is unbreakable.","http://en.wikipedia.org/wiki/Gary_hoy"],
    ["Playing StarCraft for fifty hours straight.","http://en.wikipedia.org/wiki/Lee_Seung_Seop#South_Korea"],
    ["Being crushed in your car by a rolling bale of hay.","http://en.wikipedia.org/wiki/Mike_Edwards_(musician)#Death"],
    ["Riding your Segway off of a cliff.","http://en.wikipedia.org/wiki/Jimi_Heselden#Death"]
  ]

  def self.get_random_synonym
    @random_death_synonym.sample
  end

  def self.get_random_cause
    @random_death_cause.sample
  end

end