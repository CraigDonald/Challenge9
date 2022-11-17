1. Describe the Problem

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

2. Design the Class System

# class Diary
#    initialize
#    add method
#    view method
    view phonebook
    select method

# class DiaryEntry
#    initialize entry

class ToDo
    add_task
    view_tasks


3. Create Examples as Integration Tests

Create a diary - initialises a new diary
Add a diary entry

RSpec.describe "Diary integration" do
    context "Add diary entry to diary" do
        it "Adds entry to diary and able to view it" do
            diary = Diary.new
            entry1 = DiaryEntry.new("This is a diary entry")
            diary.add(entry1)
            expect(diary.view).to eq [entry1]


4. Create Examples as Unit Tests

RSpec.describe Diary do
    context "Creates a diary" do
        it "starts as empty array" do
            diary = Diary.new
            expect(diary).to eq []



5. Implement the Behaviour



Reading time
Words per minute
String length

String length / wpm = reading time
if time taken <= reading time, return string
repeat for all strings available
else ignore string
if no strings match, return "None available"