select houses.house,houses.teamnum,teams.team,teams.city
from houses
join teams on houses.TeamNum=teams.num
order by houses.house;
