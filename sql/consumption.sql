create table consumption(
  `consumption_id` int(11) not null auto_increment primary key,
  `consumption_venue` enum('Netflix','Viki','MasterClass','Google Books','Kindle Books','YouTube','PDF download'),
  `item` varchar(200),
  `url` varchar(200),
  `start_date` date,
  `start_date_precision` enum('day','month','year'),
  `end_date` date,
  `end_date_precision` enum('day','month','year'),
  `notes` varchar(2000)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/* MasterClass stuff */
insert into consumption(consumption_venue, item, url, start_date, start_date_precision, end_date, end_date_precision, notes) values
  ('MasterClass','Chris Voss Teaches the Art of Negotiation','https://www.masterclass.com/classes/chris-voss-teaches-the-art-of-negotiation','2020-04-05','day','2020-04-06','day','This class was one of the main motivators for me to sign up for MasterClass. The content seems relevant enough to many day-to-day situations and I expect it''ll influence my real-world behavior. It generally lived up to my expectations. I believe that a single listening was enough for me to absorb and retain almost everything. I also downloaded and saved the workbook.'),
  ('MasterClass','Howard Schultz: Business Leadership','https://www.masterclass.com/classes/howard-schultz-leading-a-values-based-business','2020-04-06','day','2020-04-07','day','This class was reasonably interesting, though it may not be too applicable to my life as I''m not (currently) leading a company or growing a business of the sort his lesson was focused on. Schultz drew on his experience growing Starbucks into an international business to give general business advice. Not everything clicked with me. I may watch parts of it again. I also downloaded and saved the workbook.'),
  ('MasterClass','Bob Woodward Teaches Investigative Journalism','https://www.masterclass.com/classes/bob-woodward-teaches-investigative-journalism','2020-04-07','day','2020-04-11','day','This class was reasonably interesting, though it may not be too applicable to my life, since I am not an investigative journalist. Nonetheless, it''s interesting to compare the spirit of his principles with the principles behind other investigative work and content creation that I do. I may watch parts of it again. I also downloaded and saved the workbook.'),
  ('MasterClass','Daniel Elfman Teaches Music for Film','https://www.masterclass.com/classes/danny-elfman-teaches-music-for-film','2020-04-11','day',NULL,NULL,'Still watching this class (paused for a bit as I want to watch Sara Blakely first).'),
  ('MasterClass','Bob Iger Teaches Business Strategy and Leadership','https://www.masterclass.com/classes/bob-iger-teaches-business-strategy-and-leadership','2020-04-11','day',NULL,NULL,'This class was reasonably interesting, though not everything clicked with me. Overall, I found it less interesting and relevant than the classes by Howard Schultz and Sara Blakely.'),
  ('MasterClass','Sara Blakely Teaches Self-Made Entrepreneurship','https://www.masterclass.com/classes/sara-blakely-teaches-self-made-entrepreneurship','2020-04-11','day','2020-04-18','day','This class was reasonably interesting, though not everything clicked with me. I may watch parts of it again. I also downloaded and saved the workbook.'),
  ('MasterClass','David Axelrod and Karl Rove Teach Campaign Strategy and Messaging','https://www.masterclass.com/classes/david-axelrod-and-karl-rove-teach-campaign-strategy-and-messaging','2020-05-09','day','2020-05-16','day','I started this class out of curiosity. When starting, I was curious if this would increase my disdain of politics or give me newfound appreciation for it. Ultimately, I became more appreciative of the skill and art of political campaigning, but remained as skeptical as before about the correlation between performance on the electoral "test" and the real work of governance.'),
  ('MasterClass','Natalie Portman Teaches Acting','https://www.masterclass.com/classes/natalie-portman-teaches-acting','2020-05-16','day','2020-05-23','day','I started this class mainly out of idle curiosity. I found it reasonably interesting, though not too relevant. It was interesting to see the emphasis on playfulness given by Portman.'),
  ('MasterClass','#MasterClassLive with Chris Voss','https://www.youtube.com/watch?v=nZcBuSCT3Io','2020-05-23','day','2020-05-23','day','I watched this MasterClass Q&A session two months aftere it was aired live; this is a complement to Voss''s Art of Negotiation MasterClass.'),
  ('MasterClass','Paul Krugman Teaches Economics and Society','https://www.masterclass.com/classes/paul-krugman-teaches-economics-and-society','2020-05-23','day','2020-05-30','day','I watched this out of curiosity. Paul Krugman is an eminent economist but has different ideological leanings than I do, and has also been accused of writing biased and sloppy stuff (see https://www.econlib.org/archives/2013/12/why_i_read_paul.html for general background). I found his class reasonably interesting, and got to understand his perspective somewhat better.'),
  ('MasterClass','Ken Burns Teaches Documentary Filmmaking','https://www.masterclass.com/classes/ken-burns-teaches-documentary-filmmaking','2020-05-24','day','2020-07-11','day','I started watching this, then decided to take a detour to watch the Vietnam War documentary. I returned to this MasterClass after finishing the documentary. Overall, I liked the MasterClass and gained more appreciation of documentary filmmaking.');

/* Netflix stuff */
insert into consumption(consumption_venue, item, url, start_date, start_date_precision, end_date, end_date_precision, notes) values
  ('Netflix','The Vietnam War: A Film by Ken Burns and Lynn Novick', 'https://www.netflix.com/title/80997770','2020-05-31','day','2020-06-07','day','I decided to watch this documentary as I became curious about it while watching a MasterClass by its co-creator Ken Burns. I restarted my Netflix subscription because of it.'),
  ('Netflix','13 Reasons Why: Season 4','https://www.netflix.com/title/80117470','2020-06-06','day','2020-06-12','day','I noticed that this season was just released just as I was getting close to finishing my reading of the Vietnam War documentary.'),
  ('Netflix','Madam Secretary: Season 6','https://www.netflix.com/title/80024232','2020-06-13','day','2020-06-14','day','When I reactivated Netflix temporarily in order to watch the Vietnam War documentary, I noticed that this season was now available on Netflix. I decided to watch it while I still had my subscription.'),
  ('Netflix','Tokyo Trial','https://www.netflix.com/title/80091880','2020-06-18','day','2020-06-19','day','I saw this item in the list of recommendations on Netflix (possibly selected because I had watched other historical documentaries). I found it intriguing so I ended up watching it.'),
  ('Netflix','The Crown: Season 3','https://www.netflix.com/title/80025678','2020-06-20','day','2020-06-23','day','While I had a month of Netflix subscription, I decided to catch up on watching The Crown by watching its Season 3.'),
  ('Netflix','26 Years','https://www.netflix.com/title/80198771','2020-06-23','day','2020-06-23','day','I decided to watch this movie at random.'),
  ('Netflix','Kapoor & Sons','https://www.netflix.com/title/80102019','2020-06-25','day','2020-06-25','day','I decided to watch this movie at random.'),
  ('Netflix','Bulbbul','https://www.netflix.com/title/81029150','2020-06-26','day','2020-06-26','day','I decided to watch this movie because Netflix promoted it on the browse page, and reviews were positive.'),
  ('Netflix','Athlete A','https://www.netflix.com/title/81034185','2020-06-26','day','2020-06-27','day','I decideed to watch this movie from the Netflix recommendations, and based on generally positive reviews.');

/* Viki stuff */
insert into consumption(consumption_venue, item, url, start_date, start_date_precision, end_date, end_date_precision, notes) values
  /* Earlier dramas for which we have only approximate dates */
  /* Copied from https://www.viki.com/continue-watching to convert to a better format: Continue Watching
Edit

Fatal Promise
Episode 10 • EN 100%

School 2013
Episode 2 • EN 100%

The Great Doctor
Episode 1 • EN 100%

Pinocchio
Episode 15 • EN 100%

Memorist
Episode 2 • EN 100%

Tell Me What You Saw
Episode 16 • EN 100%

Heirs
Episode 20 • EN 96%

Rebel: Thief Who Stole the People
Episode 30 • EN 99%

Dr. Romantic 2
Episode 3 • EN 100%

Urban Cops
Episode 4 • EN 100%

Juror 8
EN 100%

Pretty Proofreader
Episode 6 • EN 100%

Signal
Episode 10 • EN 99%

Mr. Temporary
Episode 16 • EN 100%

Doctor John
Episode 32 • EN 100%

Search: WWW
Episode 10 • EN 100%

Haechi
Episode 40 • EN 100%

Partners for Justice 2
Episode 20 • EN 100%

Master’s Sun
Episode 17 • EN 100%
  */
  /* Recent dramas for which we have start dates */
  ('Viki','Fatal Promise','https://www.viki.com/tv/37081c-fatal-promise','2020-04-04','day',NULL,NULL,'Daily Korean drama that I started watching after the first week of episodes. Not much rewatch value; just watching during times that I don''t want to do anything too intellectually or emotionally demanding, usually while cooking or eating'),
  ('Viki','Memorist','https://www.viki.com/tv/36983c-memorist','2020-04-07','day',NULL,NULL,'I started watching this drama but paused after episode 2 and started watching something else. I may not return'),
  ('Viki','School 2013','https://www.viki.com/tv/10704c-school-2013','2020-04-11','day','2020-05-02','day','I discovered this drama via https://www.soompi.com/article/1002413wpp/8-k-dramas-will-help-get-pains-growing The drama was well-done; the acting was great, and many of the students in the class had their moments, which was nice!'),
  /* Movies */
  ('Viki','The Attorney','https://www.viki.com/movies/37061c-the-attorney','2020-05-15','day','2020-05-15','day','The Korean movie is partly based on part of the early life of Roh Moo-hyun, who would later become the President of South Korea.');

/* YouTube videos not tied to MasterClass/Viki/Netflix */
insert into consumption(consumption_venue, item, url, start_date, start_date_precision, end_date, end_date_precision, notes) values
  ('YouTube','Never Split the Difference: Chris Voss: Talks at Google','https://www.youtube.com/watch?v=guZa7mQV1l0','2020-05-23','day','2020-05-23','day','YouTube related video recommendation for me after watching other Chris Voss videos'),
  ('YouTube','Master the Art of Negotiating in Business and Life: Lewis Howes','https://www.youtube.com/watch?v=pd7tjnVYMzY','2020-05-23','day','2020-05-23','day','YouTube related video recommendation for me after watching other Chris Voss videos'),
  ('YouTube','The Knowledge Project #27 — Chris Voss','https://www.youtube.com/watch?v=yHjUApypNsU','2020-05-24','day','2020-04-24','day','YouTube related video recommendation for me after watching other Chris Voss videos');

/* Rough notes:
  - Resumed Seearch: WWW on July 12 or so
  - While You Were Sleeping rewatched ~July 13 to July 18
  - Mother rewatched July 18 onward
 */
