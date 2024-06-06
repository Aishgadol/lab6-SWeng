select houses.house, players.playername from houses
join players on houses.teamnum=players.teamnum
order by houses.house,players.playername;