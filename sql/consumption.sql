create table consumption(
  `consumption_id` int(11) not null auto_increment primary key,
  `consumption_venue` enum('Netflix','Viki','MasterClass','Google Books','Kindle Books','YouTube','PDF download','EconLib','Amazon Video'),
  `format` enum('Series (such as TV show or web series)','Single video (such as movie)'),
  `live_watch` boolean default false, /* true if minimum distance between watching period and release period is less than 45 days */
  `primary_language` enum('English','Korean','Hindi','Japanese','Chinese','Tamil','Spanish','Marathi'),
  `item` varchar(200),
  `url` varchar(200),
  `start_date` date,
  `start_date_precision` enum('day','month','year'),
  `end_date` date,
  `end_date_precision` enum('day','month','year'),
  `rewatch` boolean default false,
  `notes` varchar(2000)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/* MasterClass stuff */
insert into consumption(consumption_venue, format, primary_language, item, url, start_date, start_date_precision, end_date, end_date_precision, notes) values
  ('MasterClass','Series (such as TV show or web series)','English','Chris Voss Teaches the Art of Negotiation','https://www.masterclass.com/classes/chris-voss-teaches-the-art-of-negotiation','2020-04-05','day','2020-04-06','day','This class was one of the main motivators for me to sign up for MasterClass. The content seems relevant enough to many day-to-day situations and I expect it''ll influence my real-world behavior. It generally lived up to my expectations. I believe that a single listening was enough for me to absorb and retain almost everything. I also downloaded and saved the workbook.'),
  ('MasterClass','Series (such as TV show or web series)','English','Howard Schultz: Business Leadership','https://www.masterclass.com/classes/howard-schultz-leading-a-values-based-business','2020-04-06','day','2020-04-07','day','This class was reasonably interesting, though it may not be too applicable to my life as I''m not (currently) leading a company or growing a business of the sort his lesson was focused on. Schultz drew on his experience growing Starbucks into an international business to give general business advice. Not everything clicked with me. I may watch parts of it again. I also downloaded and saved the workbook.'),
  ('MasterClass','Series (such as TV show or web series)','English','Bob Woodward Teaches Investigative Journalism','https://www.masterclass.com/classes/bob-woodward-teaches-investigative-journalism','2020-04-07','day','2020-04-11','day','This class was reasonably interesting, though it may not be too applicable to my life, since I am not an investigative journalist. Nonetheless, it''s interesting to compare the spirit of his principles with the principles behind other investigative work and content creation that I do. I may watch parts of it again. I also downloaded and saved the workbook.'),
  ('MasterClass','Series (such as TV show or web series)','English','Daniel Elfman Teaches Music for Film','https://www.masterclass.com/classes/danny-elfman-teaches-music-for-film','2020-04-11','day',NULL,NULL,'Still watching this class (paused for a bit as I want to watch Sara Blakely first).'),
  ('MasterClass','Series (such as TV show or web series)','English','Bob Iger Teaches Business Strategy and Leadership','https://www.masterclass.com/classes/bob-iger-teaches-business-strategy-and-leadership','2020-04-11','day',NULL,NULL,'This class was reasonably interesting, though not everything clicked with me. Overall, I found it less interesting and relevant than the classes by Howard Schultz and Sara Blakely.'),
  ('MasterClass','Series (such as TV show or web series)','English','Sara Blakely Teaches Self-Made Entrepreneurship','https://www.masterclass.com/classes/sara-blakely-teaches-self-made-entrepreneurship','2020-04-11','day','2020-04-18','day','This class was reasonably interesting, though not everything clicked with me. I may watch parts of it again. I also downloaded and saved the workbook.'),
  ('MasterClass','Series (such as TV show or web series)','English','David Axelrod and Karl Rove Teach Campaign Strategy and Messaging','https://www.masterclass.com/classes/david-axelrod-and-karl-rove-teach-campaign-strategy-and-messaging','2020-05-09','day','2020-05-16','day','I started this class out of curiosity. When starting, I was curious if this would increase my disdain of politics or give me newfound appreciation for it. Ultimately, I became more appreciative of the skill and art of political campaigning, but remained as skeptical as before about the correlation between performance on the electoral "test" and the real work of governance.'),
  ('MasterClass','Series (such as TV show or web series)','English','Natalie Portman Teaches Acting','https://www.masterclass.com/classes/natalie-portman-teaches-acting','2020-05-16','day','2020-05-23','day','I started this class mainly out of idle curiosity. I found it reasonably interesting, though not too relevant. It was interesting to see the emphasis on playfulness given by Portman.'),
  ('MasterClass','Series (such as TV show or web series)','English','#MasterClassLive with Chris Voss','https://www.youtube.com/watch?v=nZcBuSCT3Io','2020-05-23','day','2020-05-23','day','I watched this MasterClass Q&A session two months aftere it was aired live; this is a complement to Voss''s Art of Negotiation MasterClass.'),
  ('MasterClass','Series (such as TV show or web series)','English','Paul Krugman Teaches Economics and Society','https://www.masterclass.com/classes/paul-krugman-teaches-economics-and-society','2020-05-23','day','2020-05-30','day','I watched this out of curiosity. Paul Krugman is an eminent economist but has different ideological leanings than I do, and has also been accused of writing biased and sloppy stuff (see https://www.econlib.org/archives/2013/12/why_i_read_paul.html for general background). I found his class reasonably interesting, and got to understand his perspective somewhat better.'),
  ('MasterClass','Series (such as TV show or web series)','English','Ken Burns Teaches Documentary Filmmaking','https://www.masterclass.com/classes/ken-burns-teaches-documentary-filmmaking','2020-05-24','day','2020-07-11','day','I started watching this, then decided to take a detour to watch the Vietnam War documentary. I returned to this MasterClass after finishing the documentary. Overall, I liked the MasterClass and gained more appreciation of documentary filmmaking.'),
  ('MasterClass','Series (such as TV show or web series)','English','Doris Kearns Goodwin Teaches U.S. Presidential History and Leadership','https://www.masterclass.com/classes/doris-kearns-goodwin-teaches-us-presidential-history-and-leadership','2020-07-23','day',NULL,NULL,'I started watching this out of interest in history, and how a person with more positive views of politics might see that history.');

/* Netflix stuff */
insert into consumption(consumption_venue, format, live_watch, primary_language, item, url, start_date, start_date_precision, end_date, end_date_precision, notes) values
  ('Netflix','Series (such as TV show or web series)',true,'English','Gilmore Girls: A Year in the Life','https://www.netflix.com/title/80109415','2017-02-01','month','2017-02-01','month','I got a Netflix subscription mainly for the purpose of watching this miniseries, and watched the miniseries promptly after getting the subscription.'),
  /* Brief subscription renewal for one month (2020-06) */
  ('Netflix','Series (such as TV show or web series)',false,'English','The Vietnam War: A Film by Ken Burns and Lynn Novick','https://www.netflix.com/title/80997770','2020-05-31','day','2020-06-07','day','I decided to watch this documentary as I became curious about it while watching a MasterClass by its co-creator Ken Burns. I restarted my Netflix subscription because of it.'),
  ('Netflix','Series (such as TV show or web series)',true,'English','13 Reasons Why: Season 4','https://www.netflix.com/title/80117470','2020-06-06','day','2020-06-12','day','I noticed that this season was just released just as I was getting close to finishing my reading of the Vietnam War documentary.'),
  ('Netflix','Series (such as TV show or web series)',true,'English','Madam Secretary: Season 6','https://www.netflix.com/title/80024232','2020-06-13','day','2020-06-14','day','When I reactivated Netflix temporarily in order to watch the Vietnam War documentary, I noticed that this season was now available on Netflix. I decided to watch it while I still had my subscription.'),
  ('Netflix','Series (such as TV show or web series)',false,'English','Tokyo Trial','https://www.netflix.com/title/80091880','2020-06-18','day','2020-06-19','day','I saw this item in the list of recommendations on Netflix (possibly selected because I had watched other historical documentaries). I found it intriguing so I ended up watching it.'),
  ('Netflix','Series (such as TV show or web series)',false,'English','The Crown: Season 3','https://www.netflix.com/title/80025678','2020-06-20','day','2020-06-23','day','While I had a month of Netflix subscription, I decided to catch up on watching The Crown by watching its Season 3.'),
  ('Netflix','Single video (such as movie)',false,'Korean','26 Years','https://www.netflix.com/title/80198771','2020-06-23','day','2020-06-23','day','I decided to watch this movie at random.'),
  ('Netflix','Single video (such as movie)',false,'Hindi','Kapoor & Sons','https://www.netflix.com/title/80102019','2020-06-25','day','2020-06-25','day','I decided to watch this movie at random.'),
  ('Netflix','Single video (such as movie)',false,'Hindi','Bulbbul','https://www.netflix.com/title/81029150','2020-06-26','day','2020-06-26','day','I decided to watch this movie because Netflix promoted it on the browse page, and reviews were positive.'),
  ('Netflix','Single video (such as movie)',true,'English','Athlete A','https://www.netflix.com/title/81034185','2020-06-26','day','2020-06-27','day','I decideed to watch this movie from the Netflix recommendations, and based on generally positive reviews.');

/* Viki stuff */
insert into consumption(consumption_venue, format, live_watch, primary_language, item, url, start_date, start_date_precision, end_date, end_date_precision, notes) values
  /* 2015/2016 */
  ('Viki','Series (such as TV show or web series)',true,'Korean','Remember','https://www.viki.com/tv/29411c-remember','2015-12-01','month','2016-02-01','month','I watched this TV show while it was live, shortly after discovering Viki. It was my first Korean drama.'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','Madame Antoine','https://www.viki.com/tv/29584c-madame-antoine','2016-01-01','month','2016-03-01','month','I watched this TV show while it was live. It was probably my second full TV show after Remember.'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','Descendants of the Sun','https://www.viki.com/tv/23205c-descendants-of-the-sun','2016-02-01','month','2016-04-01','month','I watched this TV show while it was live. It was one of my first few Korean dramas.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','High Society','https://www.viki.com/tv/27124c-high-society','2016-06-01','month','2016-06-01','month','I believe I binged on the show around this time. My records only show that I had recently finished watching it as of 2016-07.'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','Marriage Contract','https://www.viki.com/tv/30292c-marriage-contract','2016-03-01','month','2016-05-01','month','I watched this TV show roughly around the time it was live.'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','The Flower in Prison','https://www.viki.com/tv/29937c-the-flower-in-prison','2016-06-01','month','2016-11-01','month','I watched this TV show while it was live (I started watching it once somewhere between 10 and 20 episodes had been released). It was probably my first historical Korean drama (Sageuk).'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','Doctors','https://www.viki.com/tv/31066c-doctors','2016-06-01','month','2016-08-01','month','I watched this TV show while it was live.'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','W','https://www.viki.com/tv/30854c-w','2016-08-01','month','2016-09-01','month','I started watching this TV show shortly after it went live.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Dong Yi (Jewel in the Crown)','https://www.viki.com/tv/651c-jewel-in-the-crown','2016-08-01','month','2016-09-01','month','The months entered may not be accurate. I have a note that I had watched part of the show by 2016-08-20, and that I finished watching it by 2016-09-25. I made a lot of progress during the Labor Day holiday in the United States, while working on my Linode migration.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Oh My Venus','https://www.viki.com/tv/28538c-oh-my-venus','2016-09-01','month','2016-10-01','month','I have a note that I was in the middle of this show around 2016-09-25; the months are extrapolated from that information.'),
  ('Viki','Series (such as TV show or web series)',false,'Japanese','Mischievous Kiss: Love in TOKYO','https://www.viki.com/tv/22593c-mischievous-kiss-love-in-tokyo','2016-10-01','month','2016-10-01','month','I have a note that I finished watching this by 2016-10-24.'),
  ('Viki','Series (such as TV show or web series)',false,'Japanese','Mischievous Kiss 2: Love in TOKYO','https://www.viki.com/tv/25563c-mischievous-kiss-2-love-in-tokyo','2016-10-01','month','2016-11-01','month','This is the sequel to Mischievous Kiss. I watched it after Mischievous Kiss and before moving to Jin.'),
  ('Viki','Series (such as TV show or web series)',false,'Japanese','Jin','https://www.viki.com/tv/32981c-jin','2016-11-01','month','2017-01-01','month','I remember watching this TV show in November 2016, after both parts of Mischievous Kiss, around the time of Thanksgiving, but had to abort watching due to incomplete subtitles. I returned in January 2017 once the subtitles had beeen completed.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Playful Kiss','https://www.viki.com/tv/504c-playful-kiss','2016-11-01','month','2016-12-01','month','I remember watching this shortly after watching the equivalent Japanse TV series.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','City Hunter','https://www.viki.com/tv/1820c-city-hunter','2016-01-01','year','2016-01-01','year','I don''t remember the exact time I watched this, but it was in 2016; I think it was in the later part of the first half of 2016.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Healer','https://www.viki.com/tv/23730c-healer','2016-01-01','year','2016-01-01','year','I don''t remember the exact time I watched this, but it was in 2016; I think it was between somewhere in the middle of the year.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Pinocchio','https://www.viki.com/tv/23066c-pinocchio','2016-01-01','year','2016-01-01','year','Based on rough estimates, I believe I first watched Pinocchio in 2016. However, it''s possible I watched it as late as 2017 (I definitely had finished watching it by November 2017).'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Doctor Stranger','https://www.viki.com/tv/22343c-doctor-stranger','2016-01-01','year','2016-01-01','year','I watched this show some time in 2016; I skipped many episodes in between (roughly, episodes 10 to 14).'),
  /* 2017 */
  ('Viki','Series (such as TV show or web series)',false,'Japanese','Jin Final','https://www.viki.com/tv/32982c-jin-final','2017-01-01','year','2017-01-01','year','This is the sequel to Jin. Thee months are based on rough estimates; I believe I watched this shortly after finishing Jin.'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','Defendant','https://www.viki.com/tv/32810c-defendant','2017-01-01','month','2017-03-01','month','I watched this TV show around the time of its release,'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','Good Manager','https://www.viki.com/tv/32747c-good-manager','2017-02-01','month','2017-03-01','month','I watched this TV show (also called Chief Kim) roughly while it was live.'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','Saimdang, Light''s Diary','https://www.viki.com/tv/25434c-saimdang-lights-diary','2017-02-01','month','2017-05-01','month','I watched this TV show at around the time of its release.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Dae Jang Geum (Jewel in the Palace)','https://www.viki.com/tv/614c-jewel-in-the-palace','2017-01-01','year','2017-01-01','year','I don''t remember exactly when I watched this TV show but it was some time after watching Dong Yi and Saimdang. So I place it roughly in the year of 2017.'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','Whisper','https://www.viki.com/tv/33856c-whisper','2017-04-01','month','2017-05-01','month','I watched this show shortly after it started.'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','Suspicious Partner','https://www.viki.com/tv/34557c-suspicious-partner','2017-05-01','month','2017-06-01','I watched this show as it was progressing. I stopped watching midway (around Episode 24 or so).'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','Bad Thief, Good Thief','https://www.viki.com/tv/35480c-bad-thief-good-thief','2017-05-01','month','2017-07-01','month','I watched the show as it was progressing, and gave up around the middle of it.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Scandal','https://www.viki.com/tv/20171c-scandal','2017-04-01','month','2017-07-01','month','The months are approximate. I mainly remember that I watched this at around the same time as Suspicious Partner and Bad Thief, Good Thief.'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','While You Were Sleeping','https://www.viki.com/tv/33538c-while-you-were-sleeping','2017-11-01','month','2017-11-01','month','I remember watching this TV show while on vacation in India. My interest in watching this stemmed from my having watched a similar drama, Pinocchio, previously. I started watching this drama at around the time of the end of its release.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Ghost','https://www.viki.com/tv/8112c-ghost','2017-11-01','month','2017-11-01','month','I remember watching this TV show while on vacation in India. At the time, this TV show was not available in the United States, so I made use of some of my time in India to watch it.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Monster','https://www.viki.com/tv/29774c-monster','2017-11-01','month','2017-11-01','month','I started watching this while in India; the content is available in India but not in the United States. I did not complete it in India, and therefore abandoned it upon returning to the United States.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Six Flying Dragons','https://www.viki.com/tv/26480c-six-flying-dragons','2017-11-01','month','2018-01-01','month','I remember starting this TV show toward the end of my vacation in India.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','The Gang Doctor (Yong Pal)','https://www.viki.com/tv/27693c-the-gang-doctor','2017-01-01','year','2017-01-01','year','I don''t remember exactly when I watched this TV show, but I think it was some time in 2017.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Two Weeks','https://www.viki.com/tv/20014c-two-weeks','2017-01-01','year','2017-01-01','year','I don''t remember exactly when I watched this TV show, but I think it was some time in either 2017 or 2018.'),
  /* 2018 */
  ('Viki','Series (such as TV show or web series)',false,'Korean','Because This Is My First Life','https://www.viki.com/tv/35630c-because-this-is-my-first-life','2018-01-01','month','2018-03-01','month','I remember watching this TV show in the first quarter of the year, but I don''t remember exactly when. I''m not sure enouggh of timing to know if it qualifies as a "live" watch.'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','Mother','https://www.viki.com/tv/35736c-mother','2018-02-01','month','2018-03-01','month','I watched this show around the time it was released. It was one of the most highly rated dramas, and I found it one of the dramas with the best acting and production values.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Tree with Deep Roots','https://www.viki.com/tv/1585c-tree-with-deep-roots','2018-01-01','month','2018-03-01','month','I watched this TV show a few months after finishing the watching of Six Flying Dragons.'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','Lawless Lawyer','https://www.viki.com/tv/35833c-lawless-lawyer','2018-05-01','month','2018-07-01','month','I watched this TV show around the time of its release.'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','What''s Wrong With Secretary Kim','https://www.viki.com/tv/35835c-whats-wrong-with-secretary-kim','2018-06-01','month','2018-08-01','month','I remember watching this show around the time it was released.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Yi San','https://www.viki.com/tv/29542c-yi-san','2018-01-01','year','2019-01-01','year','I believe I watched this TV show some time in 2018, though it may have spilled over into early 2019. I did not end up finishing the TV show, fatiguing of it a few episodes before the finish.'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','My ID Is Gangnam Beauty','https://www.viki.com/tv/36424c-my-id-is-gangnam-beauty','2018-07-01','month','2018-09-01','month','I remember watchingg this TV show around the time of its release. I went only till around Episode 12.'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','SKY Castle','https://www.viki.com/tv/36348c-sky-castle','2018-12-01','month','2019-01-01','month','I watched this TV show aruond the time of its release. I may be a bit off on the exact months I watched it.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','I Hear Your Voice','https://www.viki.com/tv/12147c-i-hear-your-voice','2018-01-01','year','2018-01-01','year','I don''t remember for sure if I watched this show in 2018 or early 2019. It was the missing piece of the trilogy whose other pieces were Pinocchio and While You Were Sleeping.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Kill Me Heal Me','https://www.viki.com/tv/22811c-kill-me-heal-me','2018-01-01','year','2018-01-01','year','I remember watching this TV show in this period, but not sure exactly when I watched it.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Dr. Romantic (Romantic Doctor Kim)','https://www.viki.com/tv/32754c-dr-romantic','2018-01-01','year','2018-01-01','year','This was a pretty good show! I don''t remember for sure if I watched this show in 2018 or early 2019, but I think it was 2018.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Solomon''s Perjury','https://www.viki.com/tv/33359c-solomons-perjury','2018-01-01','year','2018-01-01','year','This was a pretty good show! I am not sure if I watched it in 2017 or 2018, but I believe it was 2018.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Good Doctor','https://www.viki.com/tv/20218c-good-doctor','2018-01-01','year','2018-01-01','year','This was a pretty good show! I am not sure if I watched it in 2017 or 2018, but I believe it was 2018.'),
  /* 2019 */
  ('Viki','Series (such as TV show or web series)',false,'Korean','The Rebel (Rebel: Thief Who Stole the People)','https://www.viki.com/tv/30926c-the-rebel','2019-01-01','month','2019-02-01','month','I don''t remember exactly when I watched this, but I believe it was in early 2019, before Haechi.'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','Haechi','https://www.viki.com/tv/36418c-haechi','2019-02-01','month','2019-05-01','month','I watched this TV show around the time that it was released.'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','Doctor John','https://www.viki.com/tv/36646c-doctor-john','2019-07-01','month','2019-09-01','month','I watched this TV show around the time of its release.'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','Mr. Temporary (Class of Lies)','https://www.viki.com/tv/36621c-mr-temporary','2019-09-01','month','2019-10-01','month','I believe I started watching this show around the end of its release. I don''t have exact dates.'),
  ('Viki','Series (such as TV show or web series)',false,'Japanese','Signal','https://www.viki.com/tv/36291c-signal','2019-10-01','month','2019-11-01','month','I had previously watched the Korean equivalent of this, so I was interested enough to watch the Japanese version. I don''t have the exact months I watched it; the months here are an approximation.'),
  ('Viki','Series (such as TV show or web series)',false,'Japanese','Pretty Proofreader','https://www.viki.com/tv/35763c-pretty-proofreader','2019-11-01','month','2019-12-01','month','The months are approximate. I paused watching this TV show around episode 6.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Master''s Sun','https://www.viki.com/tv/11915c-masters-sun','2019-01-01','year','2019-01-01','year','I watched the TV show some time in the year, but I don''t remember exactly when.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Partners for Justice 2','https://www.viki.com/tv/36623c-partners-for-justice-2','2019-01-01','year','2019-01-01','year','I watched a few episodes (up to episode 20) of this TV show. I had not watched the prequel (Partners for Justice).'),
  /* 2020 */
  ('Viki','Single video (such as movie)',false,'Korean','Juror 8','https://www.viki.com/movies/36650c-juror-8','2020-01-01','month','2020-01-01','month','I don''t remember exactly when I watched this, but based on the relative ordering of items in my history, I believe it was around January 2020.'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','Dr. Romantic 2 (Romantic Doctor Kim 2)','https://www.viki.com/tv/36929c-dr-romantic-2','2020-02-01','month','2020-02-01','month','I watched this TV show around the time of its release (I believe I discovered it in February 2020 even though it started in January 2020).'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Heirs','https://www.viki.com/tv/12699c-heirs','2020-03-01','month','2020-03-01','month','While I don''t have exact dates, triangulation suggests that I started and finished the drama during this time period.'),
  ('Viki','Series (such as TV show or web series)',true,'Korean','Tell Me What You Saw','https://www.viki.com/tv/36926c-tell-me-what-you-saw','2020-02-01','month','2020-03-01','month','I watched this show around the time of its release.'),
  ('Viki','Series (such as TV show or web series)',false,'Korean','Urban Cops','https://www.viki.com/tv/36582c-urban-cops','2020-03-01','month','2020-03-01','month','I started watching this show in March 2020, and then paused watching after getting partly through the fourth episode. I might resume.'),
  /* Recent dramas for which we have precise start dates */
  ('Viki','Series (such as TV show or web series)','Korean','Fatal Promise','https://www.viki.com/tv/37081c-fatal-promise','2020-04-04','day',NULL,NULL,'Daily Korean drama that I started watching after the first week of episodes. Not much rewatch value; just watching during times that I don''t want to do anything too intellectually or emotionally demanding, usually while cooking or eating'),
  ('Viki','Series (such as TV show or web series)','Korean','Memorist','https://www.viki.com/tv/36983c-memorist','2020-04-07','day','2020-04-01','month','I started watching this drama but paused after episode 2 and started watching something else.'),
  ('Viki','Series (such as TV show or web series)','Korean','School 2013','https://www.viki.com/tv/10704c-school-2013','2020-04-11','day','2020-05-02','day','I discovered this drama via https://www.soompi.com/article/1002413wpp/8-k-dramas-will-help-get-pains-growing The drama was well-done; the acting was great, and many of the students in the class had their moments, which was nice!'),
  ('Viki','Series (such as TV show or web series)','Korean','Search: WWW','https://www.viki.com/tv/36618c-search-www','2019-05-01','month','2020-08-03','day','I started the drama around May 2019 (not too sure of the exact start date) then switched to other stuff. I resumed it around July 12, 2020 and finished it on August 3.'),
  /* Movies */
  ('Viki','Series (such as TV show or web series)','Korean','The Attorney','https://www.viki.com/movies/37061c-the-attorney','2020-05-15','day','2020-05-15','day','The Korean movie is partly based on part of the early life of Roh Moo-hyun, who would later become the President of South Korea.');

/* Viki rewatches */
insert into consumption(consumption_venue, item, url, start_date, start_date_precision, end_date, end_date_precision, rewatch, notes) values
  ('Viki','Series (such as TV show or web series)','Korean','Pinocchio','https://www.viki.com/tv/23066c-pinocchio','2020-06-01','month','2020-07-12','day',true,'I had watched Pinocchio several years ago (in 2016 or 2017) and decided to rewatch it, as I had found it one of the best dramas.'),
  ('Viki','Series (such as TV show or web series)','Korean','While You Were Sleeping','https://www.viki.com/tv/33538c-while-you-were-sleeping','2020-07-13','day',true,'2020-07-18','day','After finishing a rewatch of Pinocchio, I decided to watch While You Were Sleeping, also written by Park Hye-run and with Lee Jong-suk as the male lead.'),
  ('Viki','Series (such as TV show or web series)','Korean','Mother','https://www.viki.com/tv/35736c-mother','2020-07-18','day','2020-07-25','day',true,'Mother is one of the most highly rated dramas I have ever watched. The acting and production values are among the best I''ve seen. I had first watched it in 2018 shortly after it came out; I decidede to rewatch it on a whim.');

/* Amazon video stuff */
insert into consumption(consumption_venue, item, url, start_date, start_date_precision, end_date, end_date_precision, notes) values
  ('Amazon Video','Harry Potter and the Order of the Phoenix','https://www.amazon.com/Harry-Potter-Phoenix-Daniel-Radcliffe/dp/B0012GE91W/','2020-08-06','day','2020-08-06','day','I had watched some other Harry Potter films previously, and I just decided to watch this one.');

/* YouTube videos not tied to MasterClass/Viki/Netflix */
insert into consumption(consumption_venue, item, url, start_date, start_date_precision, end_date, end_date_precision, notes) values
  ('YouTube','Never Split the Difference: Chris Voss: Talks at Google','https://www.youtube.com/watch?v=guZa7mQV1l0','2020-05-23','day','2020-05-23','day','YouTube related video recommendation for me after watching other Chris Voss videos'),
  ('YouTube','Master the Art of Negotiating in Business and Life: Lewis Howes','https://www.youtube.com/watch?v=pd7tjnVYMzY','2020-05-23','day','2020-05-23','day','YouTube related video recommendation for me after watching other Chris Voss videos'),
  ('YouTube','The Knowledge Project #27 — Chris Voss','https://www.youtube.com/watch?v=yHjUApypNsU','2020-05-24','day','2020-04-24','day','YouTube related video recommendation for me after watching other Chris Voss videos'),
  ('YouTube','Conceived in Liberty, Volume 5 | Patrick Newman','https://www.youtube.com/watch?v=duzmFvKGJU0','2020-07-26','day','2020-07-26','day','YouTube video discovered via Bryan Caplan''s blog post https://www.econlib.org/rothbards-conceived-in-liberty-the-new-republic/'),
  ('YouTube','Should Libertarians Vote for Biden, Jorgensen, or Trump? A Soho Forum Debate','https://reason.com/video/should-libertarians-vote-for-biden-jorgensen-or-trump-a-soho-forum-debate/','2020-08-01','day','2020-08-01','day','A Soho Forum debate that I came across'),
  ('YouTube','Is the Criminal Justice System Racist? A Soho Forum Debate','https://reason.com/video/is-the-criminal-justice-system-racist-a-soho-forum-debate/','2020-08-01','day','2020-08-01','day','A Soho Forum debate I viewed after getting interested in Soho Forum'),
  ('YouTube','Should the Coronavirus Lockdowns End Immediately? A Soho Forum Debate','https://www.youtube.com/watch?v=YWxtevzvk5g','2020-08-01','day','2020-08-01','day','A Soho Forum debate I viewed after getting interested in Soho Forum; I had also previously read some blog posts by David Henderson (one of the debaters) about the debate but had not been motivated enough to learn about it at the time.'),
  ('YouTube','Is Trump''s Trade War on China Good for America? A Soho Forum Debate','https://www.youtube.com/watch?v=Vdbhib6NJBg','2020-08-04','day','2020-08-04','day','A Soho Forum debate I viewed after getting interested in Soho Forum'),
  ('YouTube','Did the Lockdowns Save Thousands of Lives? A Soho Forum Debate','https://reason.com/video/did-the-lockdowns-save-thousands-of-lives-a-soho-forum-debate/','2020-08-05','day','2020-08-05','day','A Soho Forum debate I viewed after getting interested in Soho Forum');

insert into consumption(consumption_venue, item, url, start_date, start_date_precision, end_date, end_date_precision, notes) values
  ('EconLib','Bryan Caplan on Homeschooling','https://www.econlib.org/bryan-caplan-on-homeschooling/','2020-07-22','day','2020-07-22','day','Encountered while browsing EconLib');

/* Rough notes:
  - Resumed Search: WWW on July 12 or so
 */
