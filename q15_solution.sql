select city,count(team) as number_of_teams_in_city from teams
group by city having count(team)>1;