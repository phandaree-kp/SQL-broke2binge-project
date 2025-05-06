-- INSERT Admin
INSERT INTO Admin (username, email, password_hash, role) VALUES
('admin_mymelovedee', 'mymelovedee_admin@gmail.com', 'hash000', 'Superadmin'),
('admin_sara', 'sara_admin@gmail.com', 'hash123', 'Superadmin'),
('content_tiramisu', 'tiramisu_content@outlook.com', 'hash234', 'Content Manager'),
('report_bobby', 'bobby_report@hotmail.com', 'hash345', 'Report Viewer'),
('content_palyn', 'palyn_content@gmail.com', 'hash456', 'Content Manager'),
('report_2000', '2000_report@outlook.com', 'hash567', 'Report Viewer');

-- INSERT Viewer
INSERT INTO Viewer (username, email, password_hash) VALUES
('viewer1', 'viewer1@gmail.com', 'pass1'),
('viewer2', 'viewer2@hotmail.com', 'pass2'),
('viewer3', 'viewer3@outlook.com', 'pass3'),
('viewer4', 'viewer4@gmail.com', 'pass4'),
('viewer5', 'viewer5@hotmail.com', 'pass5'),
('viewer6', 'viewer6@outlook.com', 'pass6'),
('viewer7', 'viewer7@gmail.com', 'pass7'),
('viewer8', 'viewer8@hotmail.com', 'pass8'),
('viewer9', 'viewer9@outlook.com', 'pass9'),
('viewer10', 'viewer10@gmail.com', 'pass10'),
('viewer11', 'viewer11@hotmail.com', 'pass11'),
('viewer12', 'viewer12@outlook.com', 'pass12'),
('viewer13', 'viewer13@gmail.com', 'pass13'),
('viewer14', 'viewer14@hotmail.com', 'pass14'),
('viewer15', 'viewer15@outlook.com', 'pass15'),
('viewer16', 'viewer16@gmail.com', 'pass16'),
('viewer17', 'viewer17@hotmail.com', 'pass17'),
('viewer18', 'viewer18@outlook.com', 'pass18'),
('viewer19', 'viewer19@gmail.com', 'pass19'),
('viewer20', 'viewer20@hotmail.com', 'pass20');

-- INSERT Origin
INSERT INTO Origin (country, language) VALUES
('Thailand', 'Thai'),
('China', 'Chinese'),
('Japan', 'Japanese'),
('Korea', 'Korean'),
('India', 'Hindi'),
('the United States of America', 'English'),
('the United Kingdom', 'English'),
('Australia', 'English'),
('France', 'French'),
('Spain', 'Spanish');

-- INSERT Genre
INSERT INTO Genre (name) VALUES
('Action'),
('Adventure'),
('Biography'),
('Comedy'),
('Coming-of-age'),
('Competition'),
('Crime'),
('Dark comedy'),
('Drama'),
('Dystopian'),
('Family'),
('Fantasy'),
('Historical'),
('Horror'),
('Musical'),
('Music'),
('Mystery'),
('Psychological'),
('Romance'),
('Sci-fi'),
('Slice-of-life'),
('Sport'),
('Supernatural'),
('Survival'),
('Thriller');

-- INSERT ContentProvider
INSERT INTO ContentProvider (name, email, phone, address) VALUES
('Warner Bros', 'contact@warner.com', '+1-123-456-7890', 'Los Angeles, USA'),      -- 1
('Netflix', 'support@netflix.com', '+1-234-567-8901', 'California, USA'),          -- 2
('Crunchyroll', 'info@crunchyroll.com', '+81-3-5678-9012', 'Tokyo, Japan'),        -- 3
('TVN', 'info@tvn.kr', '+82-2-5678-1234', 'Seoul, Korea'),                         -- 4
('Studio Ghibli', 'contact@ghibli.jp', '+81-3-6789-1234', 'Tokyo, Japan'),         -- 5
('Amazon Studios', 'contact@amazon.com', '+1-206-266-1000', 'Seattle, USA'),       -- 6
('HBO', 'support@hbo.com', '+1-212-512-1208', 'New York, USA'),                    -- 7
('Disney', 'info@disney.com', '+1-818-560-1000', 'Burbank, USA'),                  -- 8
('Tencent Video', 'contact@tencent.cn', '+86-10-1234-5678', 'Shenzhen, China'),    -- 9
('Zee Studios', 'info@zeestudios.in', '+91-22-2345-6789', 'Mumbai, India'),        -- 10
('BBC Studios', 'hello@bbc.co.uk', '+44-20-4567-8901', 'London, UK'),              -- 11
('Entertainment One (eOne)', 'info@entonegroup.com', '+1-416-646-2400', 'Toronto, Canada'),      -- 12
('Endemol Shine Australia', 'contact@endemolshine.com.au', '+61-2-9383-4300', 'Sydney, Australia');  -- 13

-- INSERT Title
INSERT INTO Title (name, type, original_release_date, is_original, origin_id, season_count, episode_count, is_deleted) VALUES 
-- Thailand (Origin 1, Title 1-8) - Original content 
('Pluto', 'Series', '2024-10-19', TRUE, 1, 1, 12, FALSE),
('Girl From Nowhere', 'Series', '2018-08-08', TRUE, 1, 2, 21, FALSE),
('Final Score', 'Documentary', '2007-02-01', TRUE, 1, 0, 0, FALSE),
('Bangkok Breaking', 'Series', '2021-09-23', TRUE, 1, 1, 6, FALSE),
('Bad Genius', 'Movie', '2017-05-03', TRUE, 1, 0, 0, FALSE),
('The Gifted', 'Series', '2018-08-05', TRUE, 1, 1, 13, FALSE),
('In Family We Trust', 'Series', '2018-08-25', TRUE, 1, 1, 13, FALSE),
('The Face Thailand', 'Reality', '2014-10-04', TRUE, 1, 6, 65, FALSE),

-- China (Origin 2, Title 9-13)
('The Untamed', 'Series', '2019-06-27', FALSE, 2, 1, 50, FALSE),
('A Love So Beautiful', 'Series', '2017-11-09', FALSE, 2, 1, 23, TRUE),
('Ne Zha', 'Animation', '2019-07-26', FALSE, 2, 0, 0, FALSE),
('Street Dance of China', 'Reality', '2018-02-24', FALSE, 2, 5, 60, TRUE),
('I Am What I Am', 'Animation', '2021-12-17', FALSE, 2, 0, 0, TRUE),

-- Japan (Origin 3, Title 14-20)
('Spirited Away', 'Animation', '2001-07-20', FALSE, 3, 0, 0, FALSE),
('Alice in Borderland', 'Series', '2020-12-10', FALSE, 3, 2, 16, FALSE),
('Midnight Diner - Tokyo Stories', 'Series', '2009-10-09', FALSE, 3, 5, 50, FALSE),
('Terrace House: Boys x Girls Next Door', 'Reality', '2012-10-12', FALSE, 3, 8, 98, FALSE),
('The Solitary Gourmet', 'Series', '2012-01-04', FALSE, 3, 9, 125, TRUE),
('One Piece', 'Animation', '1999-10-20', FALSE, 3, 20, 1000, FALSE),
('Tokyo Olympics 2020', 'Sport', '2021-10-30', FALSE, 3, 0, 0, FALSE),

-- Korea (Origin 4, Title 21-25)
('Squid Game', 'Series', '2021-09-17', TRUE, 4, 2, 16, FALSE),
('Parasite', 'Movie', '2019-05-21', FALSE, 4, 0, 0, FALSE),
('Crash Landing on You', 'Series', '2019-12-14', FALSE, 4, 1, 16, TRUE),
('BTS: Permission to Dance', 'Music', '2021-07-09', FALSE, 4, 0, 0, FALSE),
('The Return of Superman', 'Reality', '2013-09-19', FALSE, 4, 1, 533, FALSE),

-- India (Origin 5, Title 26-29)
('Mighty little Bheem', 'Kids', '2019-04-12', FALSE, 5, 3, 64, TRUE),
('Indian Matchmaking', 'Reality', '2020-07-16', FALSE, 5, 3, 24, FALSE),
('Cricket World Cup 2011', 'Sport', '2011-04-30', FALSE, 5, 0, 0, FALSE),
('Little Krishna', 'Kids', '2009-01-01', FALSE, 5, 1, 13, TRUE),

-- USA (Origin 6, Title 30-36)
('Stranger Things', 'Series', '2016-07-15', TRUE, 6, 4, 34, FALSE),
('The Last Dance', 'Documentary', '2020-04-19', FALSE, 6, 1, 10, TRUE),
('The Mandalorian', 'Series', '2019-11-12', TRUE, 6, 3, 24, FALSE),
('Encanto', 'Animation', '2021-11-24', FALSE, 6, 0, 0, FALSE),
('Beyoncé Bowl', 'Music', '2024-12-25', FALSE, 6, 0, 0, FALSE),
('Bohemian Rhapsody', 'Documentary', '2018-10-24', FALSE, 6, 0, 0, FALSE),
('Love, Death + Robots', 'Short', '2019-03-15', FALSE, 6, 3, 35, TRUE),

-- UK (Origin 7, Title 37-40)
('Peaky Blinders', 'Series', '2013-09-12', FALSE, 7, 6, 36, FALSE),
('Sherlock', 'Series', '2010-07-25', FALSE, 7, 4, 13, FALSE),
('Paddington', 'Movie', '2014-11-28', FALSE, 7, 0, 0, FALSE),
('The Beatles: Get Back', 'Documentary', '2021-11-25', FALSE, 7, 1, 3, FALSE),

-- Australia (Origin 8, Title 41-43)
('Bluey', 'Kids', '2018-10-01', FALSE, 8, 3, 151, FALSE),
('The Babadook', 'Movie', '2014-05-22', FALSE, 8, 0, 0, FALSE),
('Survivor Australia', 'Reality', '2002-02-13', FALSE, 8, 12, 267, FALSE),

-- France (Origin 9, Title 44-47)
('Lupin', 'Series', '2021-01-08', FALSE, 9, 2, 17, TRUE),
('Amélie', 'Movie', '2001-04-25', FALSE, 9, 0, 0, FALSE),
('Miraculous: Tales of Ladybug', 'Kids', '2015-10-19', FALSE, 9, 6, 139, FALSE),
('Call My Agent!', 'Series', '2015-10-14', FALSE, 9, 4, 24, FALSE),

-- Spain (Origin 10, Title 48-50)
('Money Heist', 'Series', '2017-05-02', FALSE, 10, 3, 41, TRUE),
('Elite', 'Series', '2018-10-05', FALSE, 10, 8, 64, FALSE),
('The Platform', 'Movie', '2019-11-08', FALSE, 10, 0, 0, FALSE);

-- INSERT Title_Genre
INSERT INTO Title_Genre (title_id, genre_id) VALUES
-- Thailand (Origin 1)
(1, 9), (1, 17), (1, 19),        -- Pluto: drama mystery romance
(2, 9), (2, 17), (2, 18), (2, 23), -- Girl From Nowhere: drama mystery psychological supernatural
(3, 5), (3, 11),                 -- Final Score: coming-of-age family
(4, 1), (4, 7), (4, 17), (4, 25), -- Bangkok Breaking: action crime mystery thriller
(5, 9), (5, 25),                 -- Bad Genius: drama thriller
(6, 9), (6, 17), (6, 18), (6, 23), -- The Gifted: drama mystery psychological supernatural
(7, 9), (7, 17),                 -- In Family We Trust: drama mystery
(8, 6), (8, 9),                  -- The Face Thailand: competition drama

-- China (Origin 2)
(9, 2), (9, 12), (9, 17), (9, 19), -- The Untamed: adventure fantasy mystery romance
(10, 4), (10, 5), (10, 9), (10, 19), -- A Love So Beautiful: comedy coming-of-age drama romance
(11, 1), (11, 2), (11, 12),       -- Ne Zha: action adventure fantasy
(12, 6),                          -- Street Dance of China: competition
(13, 4), (13, 5), (13, 9),        -- I Am What I Am: comedy coming-of-age drama

-- Japan (Origin 3)
(14, 2), (14, 12),                -- Spirited Away: adventure fantasy
(15, 17), (15, 20), (15, 25),     -- Alice in Borderland: mystery sci-fi thriller
(16, 4), (16, 9), (16, 21),       -- Midnight Diner: comedy drama slice-of-life
(17, 9), (17, 19),                -- Terrace House: drama romance
(18, 4), (18, 9), (18, 21),       -- The Solitary Gourmet: comedy drama slice-of-life
(19, 2), (19, 4), (19, 12),       -- One Piece: adventure comedy fantasy
(20, 22),                         -- Tokyo Olympics 2020: sport

-- Korea (Origin 4)
(21, 9), (21, 10), (21, 24), (21, 25), -- Squid Game: drama dystopian survival thriller
(22, 8), (22, 9), (22, 25),        -- Parasite: dark comedy drama thriller
(23, 4), (23, 9), (23, 19),        -- Crash Landing on You: comedy drama romance
(24, 16),                          -- BTS: Permission to Dance: music
(25, 4), (25, 11),                 -- The Return of Superman: comedy family

-- India (Origin 5)
(26, 2), (26, 4),                  -- Mighty little Bheem: adventure comedy
(27, 9), (27, 19),                 -- Indian Matchmaking: drama romance
(28, 22),                          -- Cricket World Cup 2011: sport
(29, 2), (29, 12), (29, 15),       -- Little Krishna: adventure fantasy musical

-- USA (Origin 6)
(30, 5), (30, 9), (30, 14), (30, 17), (30, 20), -- Stranger Things: coming-of-age drama horror mystery sci-fi
(31, 22),                          -- The Last Dance: sport
(32, 1), (32, 2), (32, 20),        -- The Mandalorian: action adventure sci-fi
(33, 11), (33, 12), (33, 15),      -- Encanto: family fantasy musical
(34, 16),                          -- Beyoncé Bowl: music
(35, 3), (35, 16),                 -- Bohemian Rhapsody: biography music
(36, 14), (36, 20),                -- Love, Death + Robots: horror sci-fi

-- UK (Origin 7)
(37, 7), (37, 9), (37, 13),        -- Peaky Blinders: crime drama historical
(38, 7), (38, 9), (38, 17),        -- Sherlock: crime drama mystery
(39, 2), (39, 4), (39, 11),        -- Paddington: adventure comedy family
(40, 16),                          -- The Beatles: Get Back: music

-- Australia (Origin 8)
(41, 4), (41, 11),                 -- Bluey: comedy family
(42, 1), (42, 14), (42, 18),       -- The Babadook: action horror psychological
(43, 2), (43, 24),                 -- Survivor Australia: adventure survival

-- France (Origin 9)
(44, 7), (44, 9), (44, 17), (44, 25), -- Lupin: crime drama mystery thriller
(45, 4), (45, 19),                 -- Amélie: comedy romance
(46, 1), (46, 2), (46, 12),        -- Miraculous: action adventure fantasy
(47, 4), (47, 9),                  -- Call My Agent!: comedy drama

-- Spain (Origin 10)
(48, 1), (48, 7), (48, 9),         -- Money Heist: action crime drama
(49, 5), (49, 9), (49, 17), (49, 25), -- Elite: coming-of-age drama mystery thriller
(50, 14), (50, 18), (50, 20), (50, 24), (50, 25); -- The Platform: horror psychological sci-fi survival thriller

-- INSERT License (is_original=0)
INSERT INTO License (title_id, provider_id, start_date, end_date, is_active) VALUES
-- China (Origin 2) - Tencent Video (provider_id=9)
(9, 9, '2019-06-27', '2025-06-27', 1),   -- The Untamed 
(10, 9, '2017-11-09', '2024-11-09', 0),  -- A Love So Beautiful 
(11, 9, '2019-07-26', '2026-07-26', 1),  -- Ne Zha
(12, 9, '2018-02-24', '2025-02-24', 0),  -- Street Dance of China 
(13, 9, '2021-12-17', '2024-12-17', 0),  -- I Am What I Am 

-- Japan (Origin 3)
(14, 5, '2001-07-20', '2030-07-20', 1),  -- Spirited Away (Studio Ghibli)
(15, 2, '2020-12-10', '2025-12-10', 1),  -- Alice in Borderland (Netflix)
(16, 2, '2009-10-09', '2025-10-09', 1),  -- Midnight Diner (Netflix)
(17, 2, '2012-10-12', '2025-10-12', 1),  -- Terrace House (Netflix)
(18, 2, '2012-01-04', '2025-01-04', 0),  -- The Solitary Gourmet (Netflix)
(19, 3, '1999-10-20', '2025-10-20', 1),  -- One Piece (Crunchyroll)
(20, 2, '2021-07-23', '2025-07-23', 1),  -- Tokyo Olympics 2020 (Netflix)

-- Korea (Origin 4)
(21, 2, '2021-09-17', '2026-09-17', 1),  -- Squid Game (Netflix)
(22, 1, '2019-05-21', '2025-05-21', 1),  -- Parasite (Warner Bros)
(23, 4, '2019-12-14', '2024-12-14', 0),  -- Crash Landing on You (TVN)
(24, 8, '2021-07-09', '2026-07-09', 1),  -- BTS: Permission to Dance (Disney)
(25, 4, '2013-09-19', '2025-09-19', 1),  -- The Return of Superman (TVN)

-- India (Origin 5)
(26, 2, '2019-04-12', '2025-04-12', 0),  -- Mighty little Bheem (Netflix)
(27, 2, '2020-07-16', '2025-07-16', 1),  -- Indian Matchmaking (Netflix)
(28, 10, '2011-04-30', '2025-04-30', 1), -- Cricket World Cup 2011 (Zee Studios)
(29, 2, '2009-01-01', '2025-01-01', 0),  -- Little Krishna (Netflix)

-- USA (Origin 6)
(30, 2, '2016-07-15', '2026-07-15', 1),  -- Stranger Things (Netflix)
(31, 7, '2020-04-19', '2025-04-19', 0),  -- The Last Dance (HBO)
(32, 8, '2019-11-12', '2026-11-12', 1),  -- The Mandalorian (Disney)
(33, 8, '2021-11-24', '2026-11-24', 1),  -- Encanto (Disney)
(34, 8, '2024-12-25', '2027-12-25', 1),  -- Beyoncé Bowl (Disney)
(35, 1, '2018-10-24', '2025-10-24', 1),  -- Bohemian Rhapsody (Warner Bros)
(36, 2, '2019-03-15', '2025-03-15', 0),  -- Love, Death + Robots (Netflix)

-- UK (Origin 7)
(37, 2, '2013-09-12', '2025-09-12', 1),  -- Peaky Blinders (Netflix)
(38, 11, '2010-07-25', '2025-07-25', 1), -- Sherlock (BBC Studios)
(39, 1, '2014-11-28', '2025-11-28', 1),  -- Paddington (Warner Bros)
(40, 8, '2021-11-25', '2026-11-25', 1),  -- The Beatles: Get Back (Disney)

-- Australia (Origin 8)
(41, 8, '2013-09-12', '2025-09-12', 1),  -- Bluey (Disney)
(42, 12, '2010-07-25', '2025-07-25', 1), -- The Babadook (Entertainment One (eOne))
(43, 13, '2014-11-28', '2025-11-28', 1),  -- Paddington (Endemol Shine Australia)

-- France (Origin 9)
(44, 2, '2021-01-08', '2025-01-08', 0),  -- Lupin (Netflix)
(45, 2, '2001-04-25', '2025-04-25', 1),  -- Amélie (Netflix)
(46, 8, '2015-10-19', '2025-10-19', 1),  -- Miraculous (Disney)
(47, 2, '2015-10-14', '2025-10-14', 1),  -- Call My Agent! (Netflix)

-- Spain (Origin 10)
(48, 2, '2017-05-02', '2025-05-02', 0),  -- Money Heist (Netflix)
(49, 2, '2018-10-05', '2025-10-05', 1),  -- Elite (Netflix)
(50, 2, '2019-11-08', '2025-11-08', 1);  -- The Platform (Netflix)

-- INSERT ViewCount 
INSERT INTO ViewCount (title_id, date, views) VALUES 
-- Thailand (Origin 1)
(1, '2025-05-08', 280000), (1, '2025-05-09', 250000),   -- Pluto 
(2, '2025-05-08', 950000), (2, '2025-05-09', 900000),   -- Girl From Nowhere 
(3, '2025-05-08', 15000), (3, '2025-05-09', 12000),     -- Final Score 
(4, '2025-05-08', 350000), (4, '2025-05-09', 320000),   -- Bangkok Breaking 
(5, '2025-05-08', 420000), (5, '2025-05-09', 380000),   -- Bad Genius 
(6, '2025-05-08', 180000), (6, '2025-05-09', 160000),   -- The Gifted 
(7, '2025-05-08', 120000), (7, '2025-05-09', 110000),   -- In Family We Trust 
(8, '2025-05-08', 80000), (8, '2025-05-09', 75000),     -- The Face Thailand 

-- China (Origin 2)
(9, '2025-05-08', 980000), (9, '2025-05-09', 950000),   -- The Untamed 
(10, '2024-11-07', 350000), (10, '2024-11-08', 320000), -- A Love So Beautiful (expired license 2024-11-09)
(11, '2025-05-08', 850000), (11, '2025-05-09', 800000), -- Ne Zha 
(12, '2025-02-22', 420000), (12, '2025-02-23', 380000), -- Street Dance of China (expired license 2025-02-24)
(13, '2024-12-15', 180000), (13, '2024-12-16', 160000), -- I Am What I Am (expired license 2024-12-17)

-- Japan (Origin 3)
(14, '2025-05-08', 750000), (14, '2025-05-09', 720000), -- Spirited Away 
(15, '2025-05-08', 680000), (15, '2025-05-09', 650000), -- Alice in Borderland 
(16, '2025-05-08', 220000), (16, '2025-05-09', 200000), -- Midnight Diner 
(17, '2025-05-08', 150000), (17, '2025-05-09', 140000), -- Terrace House 
(18, '2025-01-02', 180000), (18, '2025-01-03', 250000),   -- The Solitary Gourmet (expired license 2025-01-04)
(19, '2025-05-08', 580000), (19, '2025-05-09', 550000), -- One Piece 
(20, '2025-05-08', 420000), (20, '2025-05-09', 400000), -- Tokyo Olympics 2020 

-- Korea (Origin 4)
(21, '2025-05-08', 980000), (21, '2025-05-09', 950000), -- Squid Game 
(22, '2025-05-08', 750000), (22, '2025-05-09', 720000), -- Parasite 
(23, '2024-12-12', 350000), (23, '2024-12-13', 320000), -- Crash Landing on You (expired license 2024-12-14)
(24, '2025-05-08', 420000), (24, '2025-05-09', 400000), -- BTS: Permission to Dance 
(25, '2025-05-08', 180000), (25, '2025-05-09', 170000), -- The Return of Superman 

-- India (Origin 5)
(26, '2025-04-10', 220000), (26, '2025-04-11', 200000), -- Mighty little Bheem (expired license 2025-04-12)
(27, '2025-05-08', 280000), (27, '2025-05-09', 260000), -- Indian Matchmaking 
(28, '2025-05-08', 20000), (28, '2025-05-09', 19000), -- Cricket World Cup 2011 
(29, '2024-12-30', 120000), (29, '2024-12-31', 110000), -- Little Krishna (expired license 2025-01-01)

-- USA (Origin 6)
(30, '2025-05-08', 950000), (30, '2025-05-09', 900000), -- Stranger Things 
(31, '2025-04-17', 200000), (31, '2025-04-18', 180000), -- The Last Dance (expired license 2025-04-19)
(32, '2025-05-08', 680000), (32, '2025-05-09', 650000), -- The Mandalorian 
(33, '2025-05-08', 420000), (33, '2025-05-09', 400000), -- Encanto 
(34, '2025-05-08', 280000), (34, '2025-05-09', 260000), -- Beyoncé Bowl 
(35, '2025-05-08', 320000), (35, '2025-05-09', 300000), -- Bohemian Rhapsody 
(36, '2025-03-13', 300000), (36, '2025-03-14', 320000), -- Love, Death + Robots (expired license 2025-03-15)

-- UK (Origin 7)
(37, '2025-05-08', 580000), (37, '2025-05-09', 550000), -- Peaky Blinders 
(38, '2025-05-08', 420000), (38, '2025-05-09', 400000), -- Sherlock 
(39, '2025-05-08', 220000), (39, '2025-05-09', 210000), -- Paddington 
(40, '2025-05-08', 280000), (40, '2025-05-09', 260000), -- The Beatles: Get Back 

-- Australia (Origin 8)
(41, '2025-05-08', 850000), (41, '2025-05-09', 800000), -- Bluey 
(42, '2025-05-08', 8000), (42, '2025-05-09', 7500),     -- The Babadook 
(43, '2025-05-08', 120000), (43, '2025-05-09', 110000), -- Survival Australia 

-- France (Origin 9)
(44, '2025-01-06', 180000), (44, '2025-01-07', 170000), -- Lupin (expired license 2025-01-08)
(45, '2025-05-08', 150000), (45, '2025-05-09', 140000), -- Amélie 
(46, '2025-05-08', 280000), (46, '2025-05-09', 260000), -- Miraculous 
(47, '2025-05-08', 80000), (47, '2025-05-09', 75000),   -- Call My Agent! 

-- Spain (Origin 10)
(48, '2025-04-30', 350000), (48, '2025-05-01', 320000), -- Money Heist (expired license 2025-05-02)
(49, '2025-05-08', 220000), (49, '2025-05-09', 210000), -- Elite 
(50, '2025-05-08', 150000), (50, '2025-05-09', 140000); -- The Platform 

-- INSERT InteractionStats 
INSERT INTO InteractionStats (title_id, date, likes, list_adds) VALUES
-- Thailand (Origin 1)
(1, '2025-05-08', 8400, 2100), (1, '2025-05-09', 7500, 1800),     -- Pluto 
(2, '2025-05-08', 66500, 19000), (2, '2025-05-09', 63000, 18000), -- Girl From Nowhere 
(3, '2025-05-08', 450, 110), (3, '2025-05-09', 360, 90),         -- Final Score 
(4, '2025-05-08', 10500, 2800), (4, '2025-05-09', 9600, 2500),    -- Bangkok Breaking 
(5, '2025-05-08', 12600, 3400), (5, '2025-05-09', 11400, 3000),   -- Bad Genius 
(6, '2025-05-08', 5400, 1400), (6, '2025-05-09', 4800, 1300),     -- The Gifted 
(7, '2025-05-08', 3600, 950), (7, '2025-05-09', 3300, 850),       -- In Family We Trust 
(8, '2025-05-08', 2400, 650), (8, '2025-05-09', 2250, 600),       -- The Face Thailand 

-- China (Origin 2)
(9, '2025-05-08', 88200, 24500), (9, '2025-05-09', 85500, 23750), -- The Untamed 
(10, '2024-11-07', 10500, 2800), (10, '2024-11-08', 9600, 2500),  -- A Love So Beautiful 
(11, '2025-05-08', 68000, 17000), (11, '2025-05-09', 64000, 16000), -- Ne Zha 
(12, '2025-02-23', 12600, 3400), (12, '2025-02-24', 11400, 3000), -- Street Dance of China 
(13, '2024-12-15', 5400, 1400), (13, '2024-12-16', 4800, 1300),   -- I Am What I Am 

-- Japan (Origin 3)
(14, '2025-05-08', 56250, 15000), (14, '2025-05-09', 54000, 14400), -- Spirited Away 
(15, '2025-05-08', 51000, 13600), (15, '2025-05-09', 48750, 13000), -- Alice in Borderland 
(16, '2025-05-08', 6600, 1750), (16, '2025-05-09', 6000, 1600),     -- Midnight Diner 
(17, '2025-05-08', 4500, 1200), (17, '2025-05-09', 4200, 1100),     -- Terrace House 
(18, '2025-01-03', 4900, 1500), (18, '2025-01-04', 6500, 1800),       -- The Solitary Gourmet 
(19, '2025-05-08', 43500, 11600), (19, '2025-05-09', 41250, 11000), -- One Piece 
(20, '2025-05-08', 12600, 3150), (20, '2025-05-09', 12000, 3000),   -- Tokyo Olympics 2020 

-- Korea (Origin 4)
(21, '2025-05-08', 88200, 24500), (21, '2025-05-09', 85500, 23750), -- Squid Game 
(22, '2025-05-08', 56250, 15000), (22, '2025-05-09', 54000, 14400), -- Parasite 
(23, '2024-12-12', 10500, 2800), (23, '2024-12-13', 9600, 2500),    -- Crash Landing on You 
(24, '2025-05-08', 8400, 2100), (24, '2025-05-09', 8000, 2000),   -- BTS: Permission to Dance 
(25, '2025-05-08', 5400, 1350), (25, '2025-05-09', 5100, 1300),     -- The Return of Superman 

-- India (Origin 5)
(26, '2025-04-11', 6600, 1750), (26, '2025-04-12', 6000, 1600),     -- Mighty little Bheem
(27, '2025-05-08', 8400, 2250), (27, '2025-05-09', 7800, 2100),     -- Indian Matchmaking 
(28, '2025-05-08', 450, 190), (28, '2025-05-09', 415, 110), -- Cricket World Cup 2011 
(29, '2024-12-31', 3600, 950), (29, '2025-01-01', 3300, 850),       -- Little Krishna 

-- USA (Origin 6)
(30, '2025-05-08', 85500, 23750), (30, '2025-05-09', 81000, 22500), -- Stranger Things 
(31, '2025-04-18', 10500, 2800), (31, '2025-04-19', 9600, 2500),    -- The Last Dance 
(32, '2025-05-08', 51000, 13600), (32, '2025-05-09', 48750, 13000), -- The Mandalorian 
(33, '2025-05-08', 12600, 3400), (33, '2025-05-09', 12000, 3200),   -- Encanto 
(34, '2025-05-08', 8400, 2250), (34, '2025-05-09', 7800, 2100),     -- Beyoncé Bowl 
(35, '2025-05-08', 9600, 2550), (35, '2025-05-09', 9000, 2400),     -- Bohemian Rhapsody 
(36, '2025-03-14', 5400, 1400), (36, '2025-03-15', 5100, 1300),     -- Love, Death + Robots 

-- UK (Origin 7)
(37, '2025-05-08', 43500, 11600), (37, '2025-05-09', 41250, 11000), -- Peaky Blinders 
(38, '2025-05-08', 12600, 3400), (38, '2025-05-09', 12000, 3200),   -- Sherlock 
(39, '2025-05-08', 6600, 1750), (39, '2025-05-09', 6300, 1700),     -- Paddington 
(40, '2025-05-08', 8400, 2250), (40, '2025-05-09', 7800, 2100),     -- The Beatles: Get Back 

-- Australia (Origin 8)
(41, '2025-05-08', 25500, 6375), (41, '2025-05-09', 24000, 6000), -- Bluey 
(42, '2025-05-08', 240, 60), (42, '2025-05-09', 225, 56),         -- The Babadook
(43, '2025-05-08', 3600, 900), (43, '2025-05-09', 3000, 825),     -- Survival Australia 

-- France (Origin 9)
(44, '2025-01-07', 5400, 1400), (44, '2025-01-08', 5100, 1300),     -- Lupin 
(45, '2025-05-08', 4500, 1200), (45, '2025-05-09', 4200, 1100),     -- Amélie 
(46, '2025-05-08', 8400, 2250), (46, '2025-05-09', 7800, 2100),     -- Miraculous 
(47, '2025-05-08', 2400, 650), (47, '2025-05-09', 2250, 600),       -- Call My Agent! 

-- Spain (Origin 10)
(48, '2025-05-01', 10500, 2800), (48, '2025-05-02', 9600, 2500),    -- Money Heist 
(49, '2025-05-08', 6600, 1750), (49, '2025-05-09', 6300, 1700),     -- Elite 
(50, '2025-05-08', 4500, 1200), (50, '2025-05-09', 4200, 1100);     -- The Platform