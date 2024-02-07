class ZebraController < ApplicationController
 def giraffe
   rand_move =["rock","paper","scissors"].sample
   rock_move = "rock"
   
   @rock_play = "We played rock!"
   @rand_play = "They played #{rand_move}"
   @result =
   
  

   if rand_move == "rock" 
   outcome = "tied"
   elsif rand_move == "scissors"
    outcome = "won"
   elsif rand_move == "paper"
    outcome = "lost"
   end
  
 @game_outcome = "We #{outcome}!"
  render({ :template => "game_templates/play_rock" })
 end

 def elephant
  
  rand_move =["rock","paper","scissors"].sample
  paper_move = "paper"
  
  @paper_play = "We played paper!"
  @rand_play = "They played #{rand_move}"
 
  
 

  if rand_move == "rock" 
  outcome = "Won"
  elsif rand_move == "scissors"
   outcome = "lost"
  elsif rand_move == "paper"
   outcome = "tied"
  end
  
  @game_outcome = "We #{outcome}!"
  
  render({ :template => "game_templates/play_paper" })
 end

 def lion
 
  rand_move =["rock","paper","scissors"].sample
  scissors_move = "scissors"
  
  @scissor_play = "We played scissors!"
  @rand_play = "They played #{rand_move}"
 
  
 

  if rand_move == "rock" 
  outcome = "Lost"
  elsif rand_move == "scissors"
   outcome = "Tied"
  elsif rand_move == "paper"
   outcome = "Won"
  end
  
  @game_outcome = "We #{outcome}!"
  
  render({ :template => "game_templates/play_scissors" })
 end
def rules


  render({ :template => "game_templates/rules" })
end
end
