class ZebraController < ApplicationController
  def play_rock
    @comp_move = ["rock", "paper", "scissors"].sample
    if @comp_move == "rock"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "lost"
    else
      @outcome = "won"
    end

    render({:template => "game_templates/play_rock"})
  end

  def play_paper
    @comp_move = ["rock", "paper", "scissors"].sample
    render({:template => "game_templates/play_paper"})
    if @comp_move == "paper"
      @outcome = "tied"
    elsif @comp_move == "scissors"
      @outcome = "lost"
    else
      @outcome = "won"
    end
  end

  def play_scissors
    @comp_move = ["rock", "paper", "scissors"].sample
    render({:template => "game_templates/play_scissors"})
    if @comp_move == "scissors"
      @outcome = "tied"
    elsif @comp_move == "paper"
      @outcome = "won"
    else
      @outcome = "lost"
    end
  end


  def rules
    render({:template => "game_templates/homepage"})
  end
end
