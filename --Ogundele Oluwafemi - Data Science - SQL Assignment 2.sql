--Ogundele Oluwafemi Data Science SQL Assignment 2

Q1A
-- THE COUNTRY WITH THE HIGHEST APPEARANCE IN THE LAST FIVE YEARS?
    WITH
        all_world_cup2 AS (
        
            WITH
        all_world_cup AS (
        SELECT 
        'wc 2002' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM 
        fifa_2002
    UNION ALL
    SELECT 
        'wc 2006' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2006
    UNION ALL
    SELECT
        'wc 2010' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2010
    UNION ALL
    SELECT
        'wc 2014' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2014
    UNION ALL
    SELECT
        'wc 2018' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2018)
        
    SELECT
        team,
        COUNT (team) AS total_appearance
    FROM 
        all_world_cup
    GROUP BY team)

    SELECT 
        team,
        MAX(total_appearance) AS total_appearance
        
    FROM
        all_world_cup2
    WHERE total_appearance =(
        SELECT 
            MAX(total_appearance) 
            FROM
            all_world_cup2)
        GROUP BY team	


Q1B
-- COUNTRIES WITH THE LOWEST APPEARANCE IN THE LAST FIVE YEARS?
    WITH
        all_world_cup2 AS (
        
            WITH
        all_world_cup AS (
        SELECT 
        'wc 2002' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM 
        fifa_2002
    UNION ALL
    SELECT 
        'wc 2006' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2006
    UNION ALL
    SELECT
        'wc 2010' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2010
    UNION ALL
    SELECT
        'wc 2014' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2014
    UNION ALL
    SELECT
        'wc 2018' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2018)
        
    SELECT
        team,
        COUNT (team) AS total_appearance
    FROM 
        all_world_cup
    GROUP BY team)

    SELECT 
        team,
        MIN(total_appearance) AS total_appearance
        
    FROM
        all_world_cup2
    WHERE total_appearance =(
        SELECT 
            MIN(total_appearance) 
            FROM
            all_world_cup2)
        GROUP BY team	

Q2A
--COUNTRIES WITH THE HIGHEST GAMES PLAYED?
    WITH
        all_world_cup2 AS (
        
            WITH
        all_world_cup AS (
        SELECT 
        'wc 2002' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM 
        fifa_2002
    UNION ALL
    SELECT 
        'wc 2006' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2006
    UNION ALL
    SELECT
        'wc 2010' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2010
    UNION ALL
    SELECT
        'wc 2014' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2014
    UNION ALL
    SELECT
        'wc 2018' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2018)
        
    SELECT
        team,
        SUM(games_played) AS total_games_played
    FROM 
        all_world_cup
    GROUP BY team)

    SELECT 
        team,
        MAX(total_games_played) AS total_games_played
        
    FROM
        all_world_cup2
    WHERE total_games_played =(
        SELECT 
            MAX(total_games_played) 
            FROM
            all_world_cup2)
        GROUP BY team	

Q2B
-- COUNTRIES WITH THE LOWEST NUMBERS OF GAMES PLAYED?
    WITH
        all_world_cup2 AS (
        
            WITH
        all_world_cup AS (
        SELECT 
        'wc 2002' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM 
        fifa_2002
    UNION ALL
    SELECT 
        'wc 2006' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2006
    UNION ALL
    SELECT
        'wc 2010' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2010
    UNION ALL
    SELECT
        'wc 2014' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2014
    UNION ALL
    SELECT
        'wc 2018' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2018)
        
    SELECT
        team,
        SUM(games_played) AS total_games_played
    FROM 
        all_world_cup
    GROUP BY team)

    SELECT 
        team,
        MIN(total_games_played) AS total_games_played
        
    FROM
        all_world_cup2
    WHERE total_games_played =(
        SELECT 
            MIN(total_games_played) 
            FROM
            all_world_cup2)
        GROUP BY team	

Q3A
--COUNTRIES WITH HIGHEST NUMBER OF GAMES WON?
    WITH
        all_world_cup2 AS (
        
            WITH
        all_world_cup AS (
        SELECT 
        'wc 2002' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM 
        fifa_2002
    UNION ALL
    SELECT 
        'wc 2006' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2006
    UNION ALL
    SELECT
        'wc 2010' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2010
    UNION ALL
    SELECT
        'wc 2014' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2014
    UNION ALL
    SELECT
        'wc 2018' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2018)
        
    SELECT
        team,
        SUM(win) AS total_games_win
    FROM 
        all_world_cup
    GROUP BY team)

    SELECT 
        team,
        MAX(total_games_win) AS total_games_win
        
    FROM
        all_world_cup2
    WHERE total_games_win =(
        SELECT 
            MAX(total_games_win) 
            FROM
            all_world_cup2)
        GROUP BY team	

Q3B
--COUNTRIES WITH LOWEST NUMBER OF GAMES WON?
    WITH
        all_world_cup2 AS (
        
            WITH
        all_world_cup AS (
        SELECT 
        'wc 2002' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM 
        fifa_2002
    UNION ALL
    SELECT 
        'wc 2006' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2006
    UNION ALL
    SELECT
        'wc 2010' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2010
    UNION ALL
    SELECT
        'wc 2014' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2014
    UNION ALL
    SELECT
        'wc 2018' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2018)
        
    SELECT
        team,
        SUM(win) AS total_games_win
    FROM 
        all_world_cup
    GROUP BY team)

    SELECT 
        team,
        MIN(total_games_win) AS total_games_win
        
    FROM
        all_world_cup2
    WHERE total_games_win =(
        SELECT 
            MIN(total_games_win) 
            FROM
            all_world_cup2)
        GROUP BY team	

Q4A
--COUNTRIES WITH HIGHEST NUMBERS OF GAMES LOST?
    WITH
        all_world_cup2 AS (
        
            WITH
        all_world_cup AS (
        SELECT 
        'wc 2002' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM 
        fifa_2002
    UNION ALL
    SELECT 
        'wc 2006' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2006
    UNION ALL
    SELECT
        'wc 2010' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2010
    UNION ALL
    SELECT
        'wc 2014' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2014
    UNION ALL
    SELECT
        'wc 2018' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2018)
        
    SELECT
        team,
        SUM(loss) AS total_games_loss
    FROM 
        all_world_cup
    GROUP BY team)

    SELECT 
        team,
        MAX(total_games_loss) AS total_games_loss
        
    FROM
        all_world_cup2
    WHERE total_games_loss =(
        SELECT 
            MAX(total_games_loss) 
            FROM
            all_world_cup2)
        GROUP BY team	

Q4B
--COUNTRIES WITH LOWEST NUMBERS OF GAMES LOST?
    WITH
        all_world_cup2 AS (
        
            WITH
        all_world_cup AS (
        SELECT 
        'wc 2002' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM 
        fifa_2002
    UNION ALL
    SELECT 
        'wc 2006' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2006
    UNION ALL
    SELECT
        'wc 2010' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2010
    UNION ALL
    SELECT
        'wc 2014' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2014
    UNION ALL
    SELECT
        'wc 2018' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2018)
        
    SELECT
        team,
        SUM(loss) AS total_games_loss
    FROM 
        all_world_cup
    GROUP BY team)

    SELECT 
        team,
        MIN(total_games_loss) AS total_games_loss
        
    FROM
        all_world_cup2
    WHERE total_games_loss =(
        SELECT 
            MIN(total_games_loss) 
            FROM
            all_world_cup2)
        GROUP BY team	

Q5A
-- COUNTRIES WITH HIGHEST NUMBERS OF GOALS SCORED?
    WITH
        all_world_cup2 AS (
        
            WITH
        all_world_cup AS (
        SELECT 
        'wc 2002' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM 
        fifa_2002
    UNION ALL
    SELECT 
        'wc 2006' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2006
    UNION ALL
    SELECT
        'wc 2010' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2010
    UNION ALL
    SELECT
        'wc 2014' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2014
    UNION ALL
    SELECT
        'wc 2018' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2018)
        
    SELECT
        team,
        SUM(goals_for) AS total_goals_scored
    FROM 
        all_world_cup
    GROUP BY team)

    SELECT 
        team,
        MAX(total_goals_scored) AS total_goals_scored
        
    FROM
        all_world_cup2
    WHERE total_goals_scored =(
        SELECT 
            MAX(total_goals_scored) 
            FROM
            all_world_cup2)
        GROUP BY team	

Q5B
-- COUNTRIES WITH LOWEST NUMBERS OF GOALS SCORED?
    WITH
        all_world_cup2 AS (
        
            WITH
        all_world_cup AS (
        SELECT 
        'wc 2002' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM 
        fifa_2002
    UNION ALL
    SELECT 
        'wc 2006' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2006
    UNION ALL
    SELECT
        'wc 2010' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2010
    UNION ALL
    SELECT
        'wc 2014' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2014
    UNION ALL
    SELECT
        'wc 2018' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2018)
        
    SELECT
        team,
        SUM(goals_for) AS total_goals_scored
    FROM 
        all_world_cup
    GROUP BY team)

    SELECT 
        team,
        MIN(total_goals_scored) AS total_goals_scored
        
    FROM
        all_world_cup2
    WHERE total_goals_scored =(
        SELECT 
            MIN(total_goals_scored) 
            FROM
            all_world_cup2)
        GROUP BY team	

Q6A
-- COUNTRIES WITH HIGHEST NUMBERS OF GOALS AGAINST?
    WITH
        all_world_cup2 AS (
        
            WITH
        all_world_cup AS (
        SELECT 
        'wc 2002' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM 
        fifa_2002
    UNION ALL
    SELECT 
        'wc 2006' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2006
    UNION ALL
    SELECT
        'wc 2010' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2010
    UNION ALL
    SELECT
        'wc 2014' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2014
    UNION ALL
    SELECT
        'wc 2018' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2018)
        
    SELECT
        team,
        SUM(goals_against) AS total_goals_against
    FROM 
        all_world_cup
    GROUP BY team)

    SELECT 
        team,
        MAX(total_goals_against) AS total_goals_against
        
    FROM
        all_world_cup2
    WHERE total_goals_against =(
        SELECT 
            MAX(total_goals_against) 
            FROM
            all_world_cup2)
        GROUP BY team	

Q6B
-- COUNTRIES WITH LOWEST NUMBERS OF GOALS AGAINST?
    WITH
        all_world_cup2 AS (
        
            WITH
        all_world_cup AS (
        SELECT 
        'wc 2002' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM 
        fifa_2002
    UNION ALL
    SELECT 
        'wc 2006' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2006
    UNION ALL
    SELECT
        'wc 2010' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2010
    UNION ALL
    SELECT
        'wc 2014' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2014
    UNION ALL
    SELECT
        'wc 2018' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2018)
        
    SELECT
        team,
        SUM(goals_against) AS total_goals_against
    FROM 
        all_world_cup
    GROUP BY team)

    SELECT 
        team,
        MIN(total_goals_against) AS total_goals_against
        
    FROM
        all_world_cup2
    WHERE total_goals_against =(
        SELECT 
            MIN(total_goals_against) 
            FROM
            all_world_cup2)
        GROUP BY team	

Q7A
--COUNTRIES WITH HIGHEST NUMBERS OF GOALS DIFFERENCE?
    WITH
        all_world_cup2 AS (
        
            WITH
        all_world_cup AS (
        SELECT 
        'wc 2002' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM 
        fifa_2002
    UNION ALL
    SELECT 
        'wc 2006' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2006
    UNION ALL
    SELECT
        'wc 2010' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2010
    UNION ALL
    SELECT
        'wc 2014' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2014
    UNION ALL
    SELECT
        'wc 2018' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2018)
        
    SELECT
        team,
        SUM(goal_difference) AS total_goal_difference
    FROM 
        all_world_cup
    GROUP BY team)

    SELECT 
        team,
        MAX(total_goal_difference) AS total_goal_difference
        
    FROM
        all_world_cup2
    WHERE total_goal_difference =(
        SELECT 
            MAX(total_goal_difference) 
            FROM
            all_world_cup2)
        GROUP BY team	

Q7B
--COUNTRIES WITH LOWEST NUMBERS OF GOALS DIFFERENCE?
    WITH
        all_world_cup2 AS (
        
            WITH
        all_world_cup AS (
        SELECT 
        'wc 2002' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM 
        fifa_2002
    UNION ALL
    SELECT 
        'wc 2006' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2006
    UNION ALL
    SELECT
        'wc 2010' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2010
    UNION ALL
    SELECT
        'wc 2014' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2014
    UNION ALL
    SELECT
        'wc 2018' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2018)
        
    SELECT
        team,
        SUM(goal_difference) AS total_goal_difference
    FROM 
        all_world_cup
    GROUP BY team)

    SELECT 
        team,
        MIN(total_goal_difference) AS total_goal_difference
        
    FROM
        all_world_cup2
    WHERE total_goal_difference =(
        SELECT 
            MIN(total_goal_difference) 
            FROM
            all_world_cup2)
        GROUP BY team	

Q8A
-- COUNTRIES WITH HIGHEST POINTS?
    WITH
        all_world_cup2 AS (
        
            WITH
        all_world_cup AS (
        SELECT 
        'wc 2002' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM 
        fifa_2002
    UNION ALL
    SELECT 
        'wc 2006' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2006
    UNION ALL
    SELECT
        'wc 2010' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2010
    UNION ALL
    SELECT
        'wc 2014' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2014
    UNION ALL
    SELECT
        'wc 2018' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2018)
        
    SELECT
        team,
        SUM(points) AS total_points
    FROM 
        all_world_cup
    GROUP BY team)

    SELECT 
        team,
        MAX(total_points) AS total_points
        
    FROM
        all_world_cup2
    WHERE total_points =(
        SELECT 
            MAX(total_points) 
            FROM
            all_world_cup2)
        GROUP BY team	

Q8B
--COUNTRIES WITH LOWEST POINTS?
    WITH
        all_world_cup2 AS (
        
            WITH
        all_world_cup AS (
        SELECT 
        'wc 2002' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM 
        fifa_2002
    UNION ALL
    SELECT 
        'wc 2006' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2006
    UNION ALL
    SELECT
        'wc 2010' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2010
    UNION ALL
    SELECT
        'wc 2014' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2014
    UNION ALL
    SELECT
        'wc 2018' AS worldcupyear,
        position,
        team,
        games_played,
        win,
        draw,
        loss,
        goals_for,
        goals_against,
        goal_difference,
        points
    FROM
        fifa_2018)
        
    SELECT
        team,
        SUM(points) AS total_points
    FROM 
        all_world_cup
    GROUP BY team)

    SELECT 
        team,
        MIN(total_points) AS total_points
        
    FROM
        all_world_cup2
    WHERE total_points =(
        SELECT 
            MIN(total_points) 
            FROM
            all_world_cup2)
        GROUP BY team	



















