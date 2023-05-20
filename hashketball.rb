# Write your code below game_hash
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

def num_points_scored(player_name)
  game_hash.each do |team, team_data|
    team_data[:players].each do |player|
      return player[:points] if player[:player_name] == player_name
    end
  end
end

def shoe_size(player_name)
  game_hash.each do |team, team_data|
    team_data[:players].each do |player|
      return player[:shoe] if player[:player_name] == player_name
    end
  end
end

def team_colors(team_name)
  game_hash.each do |team, team_data|
    return team_data[:colors] if team_data[:team_name] == team_name
  end
end

def team_names
  game_hash.map { |team, team_data| team_data[:team_name] }
end

def player_numbers(team_name)
  game_hash.each do |team, team_data|
    return team_data[:players].map { |player| player[:number] } if team_data[:team_name] == team_name
  end
end

def player_stats(player_name)
  game_hash.each do |team, team_data|
    team_data[:players].each do |player|
      return player if player[:player_name] == player_name
    end
  end
end

def big_shoe_rebounds
  max_shoe_size = 0
  rebounds = 0

  game_hash.each do |team, team_data|
    team_data[:players].each do |player|
      if player[:shoe] > max_shoe_size
        max_shoe_size = player[:shoe]
        rebounds = player[:rebounds]
      end
    end
  end

  rebounds
end

def most_points_scored
  max_points = 0
  player_with_max_points = ""

  game_hash.each do |team, team_data|
    team_data[:players].each do |player|
      if player[:points] > max_points
        max_points = player[:points]
        player_with_max_points = player[:player_name]
      end
    end
  end

  player_with_max_points
end

def winning_team
  team_points = {}

  game_hash.each do |team, team_data|
    team_points[team_data[:team_name]] = 0

    team_data[:players].each do |player|
      team_points[team_data[:team_name]] += player[:points]
    end
  end

  team_points.max_by { |_team, points| points }[0]
end

def player_with_longest_name
  longest_name = ""

  game_hash.each do |_team, team_data|
    team_data[:players].each do |player|
      longest_name = player[:player_name] if player[:player_name].length > longest_name.length
    end
  end

  longest_name
end

def long_name_steals_a_ton?
  player_stats = {}

  game_hash.each do |_team, team_data|
    team_data[:players].each do |player|
      player_stats[player[:player_name]] = player[:steals]
    end
  end

  player_with_most_steals = player_stats.max_by { |_player, steals| steals }[0]

  player_with_most_steals == player_with_longest_name
end

