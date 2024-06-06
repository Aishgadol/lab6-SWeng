select team,count(team) as total_teams from teams
where team like "%hapoel%" or team like "%maccabi%"
group by team;