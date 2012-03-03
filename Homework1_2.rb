class WrongNumberOfPlayersError < StandardError; end

class NoSuchStrategyError < StandardError; end

def rps_game_winner(game)
 raise WrongNumberOfPlayersError unless game.length == 2
 firstPlayer = game[0][1].downcase
 secondPlayer = game[1][1].downcase
 raise NoSuchStrategyError unless ["s","p","r"].include?(firstPlayer)
 raise NoSuchStrategyError unless ["s","p","r"].include?(secondPlayer)
 if firstPlayer == "s" && secondPlayer == "p"
  return game[0]
 elsif firstPlayer == "p" && secondPlayer == "r"
  return game[0]
 elsif firstPlayer == "r" && secondPlayer == "s"
  return game[0]
 elsif firstPlayer == secondPlayer
  return game[0]
 else
  return game[1]
 end
end

def rps_tournament_winner(tournament)
 if tournament.length == 2 && !tournament[0].kind_of?(Array) && !tournament[1].kind_of?(Array)
  return tournament
 else
  return rps_game_winner([rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])])
 end
end
