#Most popular Youtubers
#3 Top 8 Channel types, pct Views
Select 
channel_type,
sum(`video views`) as total_views

From yt_statsproject.global_youtube_statistics
Group by 1
order by 2 desc
limit 8
;