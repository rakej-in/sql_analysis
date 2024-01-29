# INFO 
Video games are big business: the global gaming market is projected to be worth more than $300 billion by 2027 according to Mordor Intelligence. 
With so much money at stake, the major game publishers are hugely incentivized to create the next big hit. 
But are games getting better, or has the golden age of video games already passed?
In this project, I'll explore the top 400 best-selling video games created between 1977 and 2020.
I'll compare a dataset on game sales with critic and user reviews to determine whether or not video games have improved as the gaming market has grown.

This data containts 400 rows and tables are as follows;

game_sales
column 	    type 	    meaning
game 	      varchar 	Name of the video game
platform 	  varchar 	Gaming platform
publisher 	varchar 	Game publisher
developer 	varchar 	Game developer
games_sold 	float 	  Number of copies sold (millions)
year 	      int 	    Release year

reviews
column 	      type 	    meaning
game          varchar   Name of the video game
critic_score  float 	  Critic score according to Metacritic
user_score    float 	  User score according to Metacritic
