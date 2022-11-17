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
end