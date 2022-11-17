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
end