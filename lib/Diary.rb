# initialize
# add method
# view method
# select method

class Diary
    def initialize
        @diary = []
    end

    def add(entry)
        @entry = entry
        @diary << @entry
    end

    def view
        return @diary
    end

    def counter
        return @diary.sum(&:wordcount)
    end

    def select(words, available_time)

    end



    # def select(time_given, wpm)
    #     fail "No time!" unless time_given > 0 && wpm > 0
    #     time_taken = @entry.count.to_f / wpm.to_f
    #     if time_taken <= time_given
    #         return @entry
    #     end
    # end 

    # def count
    #     return @diary.sum(&:wordcount)
    # end
end

diary = Diary.new
puts diary.view
diary.add("String")
puts diary.view
diary.add("String 2 here")
puts diary.view
diary.add("String 3 goes here")
puts diary.view

puts diary.counter