play_game <- function() {
  print("Welcome to Pao ying chub")
  hands <- c("hammer", "scissor", "paper", "quit")
  user_hand <- ""  
  
  ##Score
  Wins <-0
  Loses <- 0
  Draws <- 0
  
  while (user_hand != "quit") {
    comp_hand <- sample(hands[1:3], 1)  
    user_hand <- readline("Please choose one option: paper, scissor, hammer or quit: ")
    Results <- (Wins + Loses + Draws)
    if (user_hand == "quit") {
      print("Good Bye!")
      print(paste("Win",Wins,"Lose",Loses,"Draw",Draws))
      
      break
    }
    
    print(paste("Computer chose:", comp_hand))
    print(paste("You chose:", user_hand)) 
    
    if (user_hand == comp_hand) {
      print("Draw!!")
      Draws <- Draws + 1 
    }
    
    if ((user_hand == hands[1] & comp_hand == hands[3]) 
        || (user_hand == hands[2] & comp_hand == hands[1]) 
        || (user_hand == hands[3]& comp_hand == hands[2])) {
      print("Computer Win!   Player Lose!")
      Loses <- Loses + 1
      
    } else if ((user_hand == hands[1] & comp_hand == hands[2]) 
               || (user_hand == hands[2] & comp_hand == hands[3]) 
               || (user_hand == hands[3]& comp_hand == hands[1])) {
      print("You Win! Computer Lose!")
      Wins <- Wins + 1
    }
    print(paste("Win",Wins,"Lose",Loses,"Draw",Draws))
    print(paste("Play Time",Results))
  }
}