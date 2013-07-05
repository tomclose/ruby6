# How this class should work:

# c = Character.new('Bart', 'Simpson', 10)
# c.name #=> "Bart"
# c.full_name #=> "Bart Simpson"
# c.age #=> 10
# c.summary #=> "Bart Simpson is 10 years old."
# c.age = 11
# c.age #=> 11


class Character

    # initialize
    def initialize(name, surname, age)
        @name = name
        @surname = surname
        @age = age
    end

    def summary
        "#{@name} #{@surname} is #{@age} years old."
    end

    #name
    def name
        @name
    end

    #age
    def age
        @age
    end

    #name=
    def name=(new_name)
        @name = new_name
    end

    #age=
    def age=(new_age)
        @age = new_age
    end

    #full_name
    def full_name
        "#{name} #{surname}"
    end

    #surname
    def surname
        @surname
    end

end



    