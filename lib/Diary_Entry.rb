class DiaryEntry
    def initialize(title, contents)
        if contents.length > 0
            @title = title
            @contents = contents
        else
            fail "Entry is empty"
        end
    end

    def title
        return @title
    end

    def contents
        return @contents
    end

    def wordcount
        @total = @contents.split.count
        return @total
    end

    def readingtime(wpm)
        fail "WPM must be > 0" unless wpm.positive?
        return (wordcount.to_f / wpm.to_f)
    end
end

# entry1 = DiaryEntry.new("Title test", "This string is 4")
# entry2 = DiaryEntry.new("Title test", "Too long")
# entry3 = DiaryEntry.new("Title test", "This is 4 long")

# #puts entry1.wordcount
# puts entry1.readingtime(2)