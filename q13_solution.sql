select team,sum(teams.wins) as sum_wins from teams
where team like "%hapoel%" or team like "%maccabi%"
group by team;