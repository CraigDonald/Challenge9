require 'Diary_Entry'

RSpec.describe DiaryEntry do
    context "Creates a diary entry" do
        it "takes a string" do
            entry = DiaryEntry.new("Title 1", "Entry goes here")
            expect(entry).eql? "Entry goes here"
        end

        it "Errors if entry is empty" do
            expect{entry = DiaryEntry.new("", "")}.to raise_error "Entry is empty"
        end
    end

    context "Word counter" do
        it "Counts number of words in string" do
            entry1 = DiaryEntry.new("Title test", "This string is 5 long")
            entry2 = DiaryEntry.new("Title test", "Too long")
            entry3 = DiaryEntry.new("Title test", "This is 4 long")
            expect(entry1.wordcount).to eq 5
            expect(entry2.wordcount).to eq 2
            expect(entry3.wordcount).to eq 4
        end

        it "Checks reading time in wpm" do
            entry1 = DiaryEntry.new("Title test", "This string is 4")
            entry2 = DiaryEntry.new("Title test", "Too long")
            entry3 = DiaryEntry.new("Title test", "This is 4 long")
            expect(entry1.readingtime(1)).to eq 4
            expect(entry2.readingtime(2)).to eq 1
            expect(entry3.readingtime(2)).to eq 2
        end

        it "fails if reading time is 0" do
            entry1 = DiaryEntry.new("Title test", "Contents go here")
            expect {entry1.readingtime(0)}.to raise_error "WPM must be > 0"
        end
    end
end