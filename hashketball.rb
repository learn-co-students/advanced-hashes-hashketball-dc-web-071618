require "pry"

def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
          :number => 0,
          :shoe => 16,
          :points => 22,
          :rebounds => 12,
          :assists => 12,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 1
        },
        "Reggie Evans" => {
          :number => 30,
          :shoe => 14,
          :points => 12,
          :rebounds => 12,
          :assists => 12,
          :steals => 12,
          :blocks => 12,
          :slam_dunks => 7
        },
        "Brook Lopez" => {
          :number => 11,
          :shoe => 17,
          :points => 17,
          :rebounds => 19,
          :assists => 10,
          :steals => 3,
          :blocks => 1,
          :slam_dunks => 15
        },
        "Mason Plumlee" => {
          :number => 1,
          :shoe => 19,
          :points => 26,
          :rebounds => 12,
          :assists => 6,
          :steals => 3,
          :blocks => 8,
          :slam_dunks => 5
        },
        "Jason Terry" => {
          :number => 31,
          :shoe => 15,
          :points => 19,
          :rebounds => 2,
          :assists => 2,
          :steals => 4,
          :blocks => 11,
          :slam_dunks => 1
        }
      }
    },
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
          :number => 4,
          :shoe => 18,
          :points => 10,
          :rebounds => 1,
          :assists => 1,
          :steals => 2,
          :blocks => 7,
          :slam_dunks => 2
        },
        "Bismak Biyombo" => {
          :number => 0,
          :shoe => 16,
          :points => 12,
          :rebounds => 4,
          :assists => 7,
          :steals => 7,
          :blocks => 15,
          :slam_dunks => 10
        },
        "DeSagna Diop" => {
          :number => 2,
          :shoe => 14,
          :points => 24,
          :rebounds => 12,
          :assists => 12,
          :steals => 4,
          :blocks => 5,
          :slam_dunks =>5
        },
        "Ben Gordon" => {
          :number => 8,
          :shoe => 15,
          :points => 33,
          :rebounds => 3,
          :assists => 2,
          :steals => 1,
          :blocks => 1,
          :slam_dunks => 0
        },
        "Brendan Haywood" => {
          :number => 33,
          :shoe => 15,
          :points => 6,
          :rebounds => 12,
          :assists => 12,
          :steals => 22,
          :blocks => 5,
          :slam_dunks => 12
        }
      }
    }
  }
end

def num_points_scored (player)
point = nil
  game_hash.map do |home_away, team_colors_players|
    team_colors_players[:players].map do |general, specific|
      if general == player
        point = specific[:points]
      end
    end
  end
  point
end

def shoe_size (player)
shoe = nil
  game_hash.map do |home_away, team_colors_players|
    team_colors_players[:players].map do |general, specific|
      if general == player
        shoe = specific[:shoe]
      end
    end
  end
  shoe
end

def team_colors (team)
  colors = nil
  game_hash.map do |home_away, attribute|
    if attribute[:team_name] == team
      colors = attribute[:colors]
    end
  end
  colors
end

def team_names
  whos_playing = []
  game_hash.map do |home_away, attribute|
    whos_playing << attribute[:team_name]
  end
  whos_playing
end

def player_numbers (team)
numbers = []
  game_hash.map do |home_away, team_colors_players|
    if team_colors_players[:team_name] == team
      team_colors_players[:players].map do |general, specific|
        numbers << specific[:number]
      end
    end
  end
  numbers
end

def player_stats (player)
stats = nil
    game_hash.map do |home_away, team_colors_players|
      team_colors_players[:players].map do |general, specific|
        if general == player
          stats = specific
        end
      end
    end
    stats
  end

def big_shoe_rebounds
this_shoe = 0
this_player = nil
  game_hash.map do |home_away, team_colors_players|
    team_colors_players[:players].map do |general, specific|
      if this_shoe < specific[:shoe]
        this_shoe = specific[:shoe]
        this_player = general
      end
    end
  end
  rebounds = nil
    game_hash.map do |home_away, team_colors_players|
      team_colors_players[:players].map do |general, specific|
        if general == this_player
          rebounds = specific[:rebounds]
        end
      end
    end
  rebounds
end

# def most_points_scored
# this_points = 0
# this_player = nil
#   game_hash.map do |home_away, team_colors_players|
#     team_colors_players[:players].map do |general, specific|
#       if this_points < specific[:points]
#         this_points = specific[:points]
#         this_player = general
#       end
#     end
#   this_player
# end
# end
