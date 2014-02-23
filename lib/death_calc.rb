class DeathCalc

  def self.calc_death_age

    case @gender
    when 'Male'
      @death_age -= 5
    else # female
      @death_age -= 2
    end

    case @location
    when 'Compton, CA', 'Detroit, MI', 'Oakland, CA', 'Camden, NJ', 'Harlem, NY'
      @death_age = @current_age
    else
      @death_age -= 0
    end

    case @diet
    when 'vegan'
      @death_age -= 8
    when 'vegetarian'
      @death_age -= 5
    when 'both'
      @death_age -= 3
    else # children
      @death_age -= 10
    end

    case @outlook
    when 'neutral'
      @death_age -= 2
    when 'negative'
      @death_age -= 5
    when 'fuck'
      @death_age -= 10
    else # cheerful
      @death_age -= 0
    end

    case @sleep
    when '10+ hours'
      @death_age -= 2
    when '6-10 hours'
      @death_age -= 0
    when 'less than 6 hours'
      @death_age -= 2
    else #never
      @death_age -= 10
    end

    case @handed
    when 'left'
      @death_age -= 5
    else # right
      @death_age -= 0
    end

    case @sport_vid
    when 'sport'
      @death_age -= 7
    else # vid
      @death_age -= 3
    end

    case @beer_liq
    when 'liq'
      @death_age -= 5
    else # beer
      @death_age -= 2
    end

    case @rep_dem
    when 'rep'
      @death_age -= 4
    else # dem
      @death_age -= 1
    end

    case @dirty_rainey
    when 'dirty'
      @death_age -= 10
    else # rainey
      @death_age -= 2
    end

    case @sega_nin
    when 'sega'
      @death_age -= 2
    else # nin
      @death_age -= 0
    end

    case @ruby_js
    when 'css'
      @death_age -= 10
    else # ruby or js
      @death_age -= 0
    end

    case @name
    when 'God', 'Zeus', 'Yukihiro Matsumoto', 'Matz'
      @death_age = 999999999999999
    else
    end

    if @sega_nin == 'nin' && @rep_dem == 'dem' && @outlook == 'cheerful' && @diet == 'both' && location == 'MakerSquare'
      @death_age = 999999999999999
    end

  end

end