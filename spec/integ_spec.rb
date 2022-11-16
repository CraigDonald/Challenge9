require 'Diary'
require 'Diary_Entry'
require 'Phonebook'
require 'ToDo'

RSpec.describe "Diary integration" do
    context "Add diary entry to diary" do
        it "Adds entry to diary and able to view it" do
            diary = Diary.new
            entry1 = DiaryEntry.new("This is a diary entry")
            diary.add(entry1)
            expect(diary.view).to eq [entry1]
        end
    end
end