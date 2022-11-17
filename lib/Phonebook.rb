class PhoneBook
    def initialize(diary)
        @diary = diary
    end

    def phonebook
        return @diary.view.flat_map do |entry|
            strip_number(entry)
        end.uniq
    end

    private

    def strip_number(entry)
        entry.contents.scan(/0[0-9]{10}/)
    end
end