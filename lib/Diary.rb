# initialize
# add method
# view method
# select method

class Diary
    def initialize
        @diary = []
    end

    def add(entry)
        @diary << entry
    end

    def view
        return @diary
    end

    def select
        #returns a selected entry
    end
end

