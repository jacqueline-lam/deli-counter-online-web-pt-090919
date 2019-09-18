require 'pry'

def line(deli)
  if deli.length == 0
    puts "The line is currently empty."
  elsif deli.length >= 1
    line_string = "The line is currently:"
    deli.each_with_index do |customer, position|
      line_string += " #{position + 1}. #{customer}"
    end
    
    puts line_string 
    #=>E.g. "The line is currently: 1. Grace 2. Kent"
  end
end

def take_a_number(deli, new_customer)
  deli << new_customer 
    puts "Welcome, #{new_customer}. You are number #{(deli.length).to_s} in line."
end

def now_serving(deli)
  if deli.length == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{deli[0]}"
    deli.pop
  end
end

###
  describe "#now_serving" do
    context "there are no people in line" do
      it "should say that the line is empty" do
        expect($stdout).to receive(:puts).with("There is nobody waiting to be served!")
        now_serving(katz_deli)
      end
    end

    context "there are people in line" do
      it "should serve the first person in line and remove them from the queue" do
        expect($stdout).to receive(:puts).with("Currently serving Logan.")
        now_serving(other_deli)
        expect(other_deli).to eq(%w(Avi Spencer))
      end
    end
  end