#Most popular Youtubers
#2. Top 8 Countries,pct pay
With country_pct as (
SELECT 
	Country,
    round(sum(highest_yearly_earnings), 0) as total_earnings

FROM yt_statsproject.global_youtube_statistics
Group by 1
Order by 2 desc

)

select 
	sum(total_earnings) as total_earnings,
    
    round(1.0 * sum(case when country = 'United States' then total_earnings else 0 end)/nullif (sum(total_earnings), 0) * 100, 2) as pct_US,
	round(1.0 * sum(case when country = 'Russia' then total_earnings else 0 end)/ nullif (sum(total_earnings), 0) * 100, 2) as pct_Russia,
    round(1.0 * sum(case when country = 'India' then total_earnings else 0 end)/nullif (sum(total_earnings), 0) * 100, 2) as pct_India,
    round(1.0 * sum(case when country = 'Brazil' then total_earnings else 0 end)/nullif (sum(total_earnings), 0) * 100, 2) as pct_Brazil,
    round(1.0 * sum(case when country = 'South Korea' then total_earnings else 0 end)/nullif (sum(total_earnings), 0) * 100, 2) as pct_SouthKorea,
    round(1.0 * sum(case when country = 'Pakistan' then total_earnings else 0 end)/nullif (sum(total_earnings), 0) * 100, 2) as pct_Pakistan,
    round(1.0 * sum(case when country = 'United Kingdom' then total_earnings else 0 end)/nullif (sum(total_earnings), 0) * 100, 2) as pct_UnitedKingdom,
    round(1.0 * sum(case when country = 'Argentina' then total_earnings else 0 end)/nullif (sum(total_earnings), 0) * 100, 2) as pct_Argentina
    
from country_pct
;


#3 Top 8 Channel types, pct Views