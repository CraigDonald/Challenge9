class DiaryEntry
    def initialize(entry)
        if entry.length > 0
            @entry = entry
        else
            fail "Entry is empty"
        end
    end
end