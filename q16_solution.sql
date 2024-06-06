select houses.house as AdamArielsHouse from players
join houses on players.teamnum=houses.teamnum
where players.playername = 'Adam Ariel';