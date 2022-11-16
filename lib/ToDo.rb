
class ToDo
    def initialize
        @tasklist = []
    end

    def add(task)
        if task.length > 0
            @tasklist << task
        else
            fail "No task!"
        end
    end

    def view
        return @tasklist
    end
end