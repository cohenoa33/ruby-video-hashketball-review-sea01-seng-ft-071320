# Write your code below game_hash
require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here

def teams(team_name)
  case team_name
  when game_hash[:home][:team_name]
    game_hash[:home]
  when game_hash[:away][:team_name]
    game_hash[:away]
  end
end

def num_points_scored (each_player)
  game_hash.each do |team, team_data|
    team_data[:players].each do |player|
      if player[:player_name] == each_player
        return player[:points]
      end
    end
  end
end

def shoe_size (each_player)
   game_hash.each do |team, team_data|
    team_data[:players].each do |player|
      if player[:player_name] == each_player
        return player[:shoe]
      end
    end
  end
end

def team_colors (team_name)
  teams(team_name)[:colors]
end

def team_names
 [game_hash[:home][:team_name], game_hash[:away][:team_name]]
end

def player_numbers (team_name)
 jersey_numbers = []
 game_hash.each do |team, team_data|
   if team_data[:team_name] == team_name
     team_data[:players].each {|player| jersey_numbers.push(player[:number])}
   end
 end
  jersey_numbers
end


def player_stats(name)
  hash_of_players_stats = {}
  game_hash.each do |key, value|
  value[:players].each do |player_name|
    if name == player_name[:player_name]
      hash_of_players_stats = player_name
      end
    end
  end
  hash_of_players_stats
end



# * Build a method, `player_stats`, that takes in an argument of a player's name
#   and returns a hash of that player's stats.

#   * Check out the following example of the expected return value of the
#     `player_stats` method:

#   ```bash
#   player_stats("Alan Anderson")
#   => { :number => 0,
#         :shoe => 16,
#         :points => 22,
#         :rebounds => 12,
#         :assists => 12,
#         :steals => 3,
#         :blocks => 1,
#         :slam_dunks => 1
#       }
#   ```

# * Build a method, `big_shoe_rebounds`, that will return the number of rebounds
#   associated with the player that has the largest shoe size. Break this one down
#   into steps:

#   # * First, find the player with the largest shoe size
#   # * Then, return that player's number of rebounds
#   # * Remember to think about return values here.


