class ZebraController < ApplicationController
  def game
    @random_move = ["rock", "paper", "scissors"].sample
    render({:template => "game_templates/play_rock"})
  end

  def rules
    render({:template => "game_templates/homepage"})
  end
end
