require 'Diary'

RSpec.describe Diary do
    context "Creates a diary" do
        it "starts as empty array" do
            diary = Diary.new
            expect(diary).eql? []
        end
    end
end

#     context "Extracts phone numbers from diary entries" do
#         it "Returns numbers in array" do
#             diary = Diary.new
#             entry1 = DiaryEntry.new("Number 1 = 01234567890")
#             diary.add(entry1)
#             expect(diary.phonebook).to eq ["01234567890"]
#         end
#     end
# end