
def palindrome?(string)
 string = string.gsub(/[^a-zA-Z0-9]/, "")
 string = string.downcase
 tmpString = string
 return tmpString == string.reverse
end

palindrome?("A man, a plan, a canal -- Panama")
palindrome?("Madam, I'm Adam!")
palindrome?("Abracadabra")

def count_words(string)
 string = string.split(/[^a-zA-Z0-9]/)
 string.delete_if{|s| s==""}
 string =  string.collect{|s| s.downcase}
 hash = Hash.new
 string.each do |s| hash[s] = 0 end
 string.each do |s| hash[s] = hash[s] + 1 end
 return hash
end
count_words("A man, a plan a canal -- Panama")
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
rps_game_winner([["Da","P"],["Someone","S"]])
rps_game_winner([["Da","s"]])
rps_game_winner([["Da","0"],["Someone","p"]])
def rps_tournament_winner(tournament)
 if tournament.length == 2 && !tournament[0].kind_of?(Array) && !tournament[1].kind_of?(Array)
  return tournament
 else
  return rps_game_winner([rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])])
 end
end
rps_tournament_winner([[[["Armando","P"],["Dave","S"]],[["Richard","R"],["Michael","S"]]],[[["Allen","S"],["Omer","P"]],[["David E.","R"],["Richaed X.","P"]]]])
