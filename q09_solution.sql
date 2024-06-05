select Teams.team,teams.city,teams.wins,budget.budget 
from teams
join budget on teams.num=budget.teamnum;