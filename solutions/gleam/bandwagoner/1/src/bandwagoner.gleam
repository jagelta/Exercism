// TODO: please define the 'Coach' type
pub type Coach {
  Coach(
    name: String,
    former_player: Bool
  )
}
// TODO: please define the 'Stats' type
pub type Stats {
  Stats(
  wins: Int, 
  losses: Int)
}
// TODO: please define the 'Team' type  
pub type Team {
  Team(
  name: String,
  coach: Coach,
  stats: Stats
  )
}
pub fn create_coach(name: String, former_player: Bool) -> Coach {
  let coach = Coach(name, former_player)
}

pub fn create_stats(wins: Int, losses: Int) -> Stats {
  let stats = Stats(wins, losses)
}

pub fn create_team(name: String, coach: Coach, stats: Stats) -> Team {
  let team = Team(name, coach, stats)
}

pub fn replace_coach(team: Team, coach: Coach) -> Team {
  let new_team = Team(..team, coach: coach)
}

pub fn is_same_team(home_team: Team, away_team: Team) -> Bool {
  case home_team.name, home_team.coach, home_team.stats {
    n, c, s if n == away_team.name && c == away_team.coach && s == away_team.stats -> True
    _, _, _ -> False
  }
}

pub fn root_for_team(team: Team) -> Bool {
  case team {
    Team(coach: c, ..) if c.name == "Gregg Popovich" || c.former_player == True-> True
    Team(name: n, ..) if n == "Chicago Bulls" -> True
    Team(stats: s, ..) if s.wins >= 60 || s.wins < s.losses-> True
    _ -> False
  }
}
