require 'player'

RSpec.describe Player do
  context "initially" do
    it "stores and returns a players name" do
      player1 = Player.new('Charlotte')
      expect(player1.name).to eq 'Charlotte'
    end
  end

end