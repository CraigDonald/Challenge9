require 'Diary'
require 'Diary_Entry'
require 'Phonebook'
require 'ToDo'

RSpec.describe "Diary integration" do
    context "Add diary entry to diary" do
        it "Adds entry to diary and able to view it" do
            diary = Diary.new
            entry1 = DiaryEntry.new("Title1", "This is a diary entry")
            diary.add(entry1)
            expect(diary.view).to eq [entry1]
        end
    end

    context "Extracts phone numbers from diary entries" do
        it "Returns numbers in array" do
            diary = Diary.new
            pb = PhoneBook.new(diary)
            entry1 = DiaryEntry.new("Example 1", "Number is 01234567890")
            entry2 = DiaryEntry.new("Example 2", "Number is 07777777777")
            entry3 = DiaryEntry.new("Example 3", "Number is one")
            diary.add(entry1)
            diary.add(entry2)
            diary.add(entry3)
            expect(pb.phonebook).to eq ["01234567890", "07777777777"]
        end
    end
end