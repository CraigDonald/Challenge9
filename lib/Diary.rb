# initialize
# add method
# view method
# select method

class Diary
    def initialize
        @diary = []
        @phonebook = []
    end

    def add(entry)
        @diary << entry
    end

    def view
        return @diary
    end

    # def phonebook
    #     @diary.map {
    #         |each_entry| strip_number(each_entry)
    #     }.flatten
    # end

    def select
        #returns a selected entry
    end

    # def strip_number(each_entry)
    #     each_entry.to_s.scan(/0[0-9]{10}/)
    # end
end