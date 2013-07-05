
c = Character.new('Bart', 'Simpson', 10)
c.name #=> "Bart"
c.full_name #=> "Bart Simpson"
c.age #=> 10
c.summary #=> "Bart Simpson is 10 years old."
c.age = 11
c.age #=> 11


class Character

    # initialize

    def summary
        "#{@first_name} #{@surname} is #{@age} years old."
    end

    #name

    #age

    #name=

    #age=

    #first_name

    #surname

end



    