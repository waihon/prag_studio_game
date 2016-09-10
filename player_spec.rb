require_relative 'spec_helper'
require_relative 'player'

# The describe method defines an example group, which takes the name of
# the group as string or as a class name.
describe Player do
  before do
    @initial_health = 150
    @player = Player.new("larry", @initial_health)
    $stdout = StringIO.new
  end

  # The it method defines a code example, and generally you want to use
  # a string that expresses the behavior your're expecting.
  it "has a capitalized name" do
    #@player.name.should == "Larry"
    expect(@player.name).to eq("Larry")
  end

  it "has an initial health" do
    #@player.health.should == 150
    expect(@player.health).to eq(150)
  end

  it "has a string representation" do
    #@player.to_s.should == "I'm Larry with a health of 150 and a score of 155."
    expect(@player.to_s).to eq("I'm Larry with a health of 150 and a score of 155.")
  end

  it "computes a score as the sum of its health and length of name" do
    #@player.score.should == (@initial_health + 5)
    expect(@player.score).to eq(@initial_health + 5)
  end    

  it "increases health by 15 when w00ted" do
    @player.w00t

    #@player.health.should == (initial_health + 15)
    expect(@player.health).to eq(@initial_health + 15)
  end

  it "decreases health by 10 when blammed" do
    @player.blam

    #@player.health.should == (initial_health - 10)
    expect(@player.health).to eq(@initial_health - 10)
  end
end