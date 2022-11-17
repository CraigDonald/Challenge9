require 'Diary'

RSpec.describe Diary do
    context "Creates a diary" do
        it "starts as empty array" do
            diary = Diary.new
            expect(diary).eql? []
        end
    end

    # context "Select an entry" do
    #     it "returns nothing of reading time is 0" do
    #         diary = Diary.new
    #         expect{diary.select(2, 0)}.to raise_error "No time!"
    #     end
    #     it "returns true if both numbers are above 0" do
    #         diary = Diary.new
    #         expect(diary.select(1,1)).to eq 1
    #     end
    # end
end