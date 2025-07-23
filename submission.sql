-- mainframe_override=# \d
--               List of relations
--  Schema |        Name         | Type  | Owner 
-- --------+---------------------+-------+-------
--  public | emptystack_accounts | table | santi
--  public | forum_accounts      | table | santi
--  public | forum_posts         | table | santi
-- (3 rows)




-- Ran first command to find the posts made between April 1st and April 20th to have time stamps of the entries.
--RESULTS: mainframe_override=# SELECT date FROM forum_posts WHERE date BETWEEN '2048-04-01' AND '2048-04-30';
        --   date           
-- -------------------------
--  2048-04-03 06:07:19.384
--  2048-04-25 02:55:18.124
--  2048-04-23 10:13:06.935
--  2048-04-11 03:15:16.632
--  2048-04-02 12:50:36.588
--  2048-04-24 09:57:14.81
--  2048-04-08 00:00:00
--  2048-04-16 12:53:15.257
--  2048-04-10 04:27:51.511
--  2048-04-11 12:54:02.741
--  2048-04-21 06:15:13.28
--  2048-04-11 22:14:55.295
--  2048-04-09 01:14:02.069
--  2048-04-24 07:36:12.124
--  2048-04-13 23:42:41.922
--  2048-04-14 05:54:20.676
-- (16 rows)




-- Tried to filter by last name and group them by the same last_name but found too many results duplicating




-- RAN below command to filter posts with keyword TAXI and pull the author information to access in the accounts table
-- SELECT * FROM forum_posts WHERE content ILIKE '%taxi%';
-- smart-money-44




-- Ran the below command to filter the username details for smart-money-44
--SELECT * FROM forum_accounts WHERE username = 'smart-money-44';
--     username    | first_name | last_name 
-- ----------------+------------+-----------
--  smart-money-44 | Brad       | Steele
-- (1 row)




-- Ran below command to filter emptystack_accounts with the last name steele
-- mainframe_override=# SELECT * FROM emptystack_accounts WHERE last_name = 'Steele';
--     username    |  password   | first_name | last_name 
-- ----------------+-------------+------------+-----------
--  triple-cart-38 | password456 | Andrew     | Steele
--  lance-main-11  | password789 | Lance      | Steele
-- (2 rows)




-- Ran below command to find whether or not the two users in emptystack_accounts are in the forum_accounts table
-- mainframe_override=# SELECT * FROM forum_accounts WHERE last_name = 'Steele';
--     username     | first_name | last_name 
-- -----------------+------------+-----------
--  sharp-engine-57 | Andrew     | Steele
--  stinky-tofu-98  | Kevin      | Steele
--  smart-money-44  | Brad       | Steele
-- (3 rows)




-- Ran below command to find the message that contained information about the project related to TAXi
-- mainframe_override=# SELECT * FROM emptystack_messages WHERE body ILIKE '%taxi%';
--   id   |     from     |       to       |   subject    |                            body                            
-- -------+--------------+----------------+--------------+------------------------------------------------------------
--  LidWj | your-boss-99 | triple-cart-38 | Project TAXI | Deploy Project TAXI by end of week. We need this out ASAP.
-- (1 row)


-- Ran below command to find the account details for your-boss-99
-- mainframe_override=# SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99';
--    username   |    password    | first_name | last_name 
-- --------------+----------------+------------+-----------
--  your-boss-99 | notagaincarter | Skylar     | Singer
-- (1 row)



-- Ran below command to find the ID of code TAXI
-- mainframe_override=# SELECT id FROM emptystack_projects WHERE code = 'TAXI';
--     id    
-- ----------
--  DczE0v2b
-- (1 row)