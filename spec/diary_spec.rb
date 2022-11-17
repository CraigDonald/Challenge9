require 'Diary'

RSpec.describe Diary do
    context "Creates a diary" do
        it "starts as empty array" do
            diary = Diary.new
            expect(diary).eql? []
        end
    end
end