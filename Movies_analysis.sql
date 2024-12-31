use etl1;

-- names of all the Bollywood movies which are of drama genre in the dataset. 
select movie_name from movies_sql where genre='drama';

-- names of all the Bollywood movies of Amir Khan in the dataset. 
select movie_name from movies_sql where lead_star='aamir khan';

-- names of all the Bollywood movies which are directed by RamGopal Verma in the dataset.
select movie_name from movies_sql where director='ram gopal verma';

-- names of all the Bollywood movies which have been released over more than 1000 number of screens in the dataset.
select movie_name from movies_sql where number_of_screens>1000;

-- names of all the Bollywood movies which have generated Revenue(INR) more than 700000000 in the dataset.
select movie_name from movies_sql where revenue>700000000;

-- names of all the Bollywood movies which have budget less than 1cr in the dataset. 
select movie_name from movies_sql where budget<100000000;

-- names of all the Bollywood movies which are flop in the dataset.(flop=revenue – budget)
select movie_name from movies_sql where (revenue)-(budget)<0;

-- names and profit of all the Bollywood movies in the dataset.(profit=revenue – budget)
select movie_name,(revenue)-(budget) from movies_sql where (revenue)-(budget)>0;

-- names and loss of all the Bollywood movies in the dataset.(loss=revenue – budget)
select movie_name,(revenue)-(budget) from movies_sql where (revenue)-(budget)<0;

-- names of all the Bollywood movies which have been released on holidays in the dataset.
select movie_name from movies_sql where release_period='holiday';

-- names of all the Bollywood movies which have lead star as Akshay Kumar and directed by Priyadarshan in the dataset.
select movie_name from movies_Sql where lead_star='akshay kumar' and director='priyadarshan';

--  names of all the Bollywood movies starting with ‘a’ in the dataset. 
select movie_name from movies_sql where movie_name like 'a%';

-- names of all the Bollywood movies ending with ‘a’ in the dataset. 
select movie_name from movies_sql where movie_name like '%a';

-- names of all the Bollywood movies having ‘a’ at second place of the name in the dataset.
select movie_name from movies_sql where movie_name like '_a%';

-- names of all the Bollywood movies having music of amit trivedi the dataset. 
select movie_name from movies_sql where music_director='amit trivedi';

-- names of all the comedy movies of Akshay Kumar in the dataset.
select movie_name from movies_sql where genre='comedy' and lead_star='akshay kumar';

-- names of movies  and star name starring khan in the dataset. 
select movie_name,lead_star from movies_sql where lead_star like '% khan';

-- all information of movies race and race2 in the dataset.
select * from movies_sql where movie_name='race' or movie_name='race 2';

-- names of all the thriller Bollywood movies in the dataset. 
select movie_name from movies_sql where genre='thriller';

-- names and budget of all the Bollywood movies according to the highest budget to lowest budget in the dataset.
select movie_name,budget from movies_sql order by budget desc;

-- names and budget of top 5  Bollywood movies with highest budget in the dataset.
select movie_name,budget from movies_Sql order by budget desc limit 5;

-- names of top 10  Bollywood movies with highest revenue generation in the dataset.
select movie_name from movies_sql order by revenue desc limit 10;

-- names  of top 5  movies of salman khan in the dataset.
select movie_name from movies_sql where lead_star='salman khan' order by revenue desc limit 5;