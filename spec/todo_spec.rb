require 'ToDo'

RSpec.describe ToDo do
    context "Creates a todo list" do
        it "starts as empty array" do
            todo = ToDo.new
            expect(todo).eql? []
        end
    end

    context "Add a task" do
        it "returns tasklist with that task" do
            todo = ToDo.new
            todo.add("Task numero uno")
            expect(todo.view).to eq ["Task numero uno"]
        end
        
        it "raises error if string is empty" do
            todo = ToDo.new
            expect{todo.add("")}.to raise_error "No task!"
        end
    end
end