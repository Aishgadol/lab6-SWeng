select teams.Num,teams.team,teams.city,count(players.PlayerID) 
as number_of_players_in_team
from teams
join players on teams.num=players.teamnum
group by teams.num ,teams.team ,teams.city;