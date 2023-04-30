create table ongoing_consumption(
  ongoing_consumption_id int not null auto_increment primary key,
  format enum('Series (such as TV show or web series)','Single video (such as movie)','YouTube channel','Podcast'),
  primary_language enum('English','Korean','Hindi','Japanese','Chinese','Tamil','Arabic','Spanish','Marathi','English/Hindi','English/Korean','German','Kannada','Malayalam','English/Thai','Taiwanese','Ukrainian','Urdu'),
  item varchar(200),
  url varchar(200),
  notes varchar(2000)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4;

insert into ongoing_consumption(format, primary_language, item, url, notes) values
  ('Series (such as TV show or web series)','English','Gilmore Girls','https://www.amazon.com/gp/video/detail/B002DEI4NG/','Starting around 2020 or 2021, I''ve been rewatching Gilmore Girls (seasons 1 through 7, as well as A Year in the life) off and on. I have done both systematic start-to-end rewatches and random watching of specific episodes that I like. I find Gilmore Girls relaxing to watch. I usually don''t watch it during meals, but often watch it when doing somewhat boring and not-fully-engaging work, to provide a little additional stimulation without being distracting (because I know the storyline very well). I own all seasons but not A Year in the Life. So I can watch anything from seasons 1 through 7 whenever I wish, but for A Year in the Life I can only watch it when I''m subscribed to Netflix.'),
  ('Single video (such as movie)','Hindi','Dilwale Dulhania Le Jayenge',NULL,'I bought the VCD for this in 2006 and copied it to disk around 2007, 2008, or 2009 back when I was using a Windows machine. I have watched parts of this classic movie off and on. I didn''t watch it between 2014 and 2019 after I switched to a Macbook. I loaded it up again on my Macbook at the end of 2019 and then watched it a bit in 2020. In 2022, after getting a new, bigger Macbook, I resumed watching it. It''s very familiar to me. I usually don''t watch it during meals, but often watch it when doing somewhat boring and not-fully-engaging work, to provide a little additional stimulation without being distracting (because I know the storyline very well). See https://dontcallitbollywood.com/2017/06/09/dilwale-dulhania-le-jayenge-scene-by-scene-analysis-in-exhaustive-detail-index/ (not by me) for an extensive scene-by-scene review of a large part of the movie.'),
  ('Single video (such as movie)','Hindi','Jab We Met',NULL,'My parents gifted me the VCD for this in the late 2000s or early 2010s. I loaded it on my Windows machine and would watch parts of it. I didn''t watch it between 2014 and 2019 after I switched to a Macbook. I loaded it up again on my Macbook at the end of 2019 and then watched it a bit in 2020. In 2022, after getting a new, bigger Macbook, I resumed watching it. It''s very familiar to me. I usually don''t watch it during meals, but often watch it when doing somewhat boring and not-fully-engaging work, to provide a little additional stimulation without being distracting (because I know the storyline very well).'),
  ('Single video (such as movie)','Hindi','Anjaana Anjaani',NULL,'I bought the VCD for this during a trip to India in 2011. I loaded it on my Windows machine and would watch parts of it. I didn''t watch it between 2014 and 2019 after I switched to a Macbook. I loaded it up again on my Macbook at the end of 2019 and then watched it a bit in 2020. In 2022, after getting a new, bigger Macbook, I resumed watching it. It''s very familiar to me. I usually don''t watch it during meals, but often watch it when doing somewhat boring and not-fully-engaging work, to provide a little additional stimulation without being distracting (because I know the storyline very well).'),
  ('Single video (such as movie)','Hindi','My Name Is Khan',NULL,'My parents may have gifted the VCD to me in the early 2010s or I may have bought it -- I''m not sure.  I didn''t watch it between 2014 and 2019 after I switched to a Macbook. I loaded it up again on my Macbook at the end of 2019 and then watched it a bit in 2020. In 2022, after getting a new, bigger Macbook, I resumed watching it. It''s very familiar to me. I usually don''t watch it during meals, but often watch it when doing somewhat boring and not-fully-engaging work, to provide a little additional stimulation without being distracting (because I know the storyline very well).'),
  ('YouTube channel','English','Veritasium','https://www.youtube.com/c/veritasium','I often watch Veritasium videos while doing not-fully-engaging work. Veritasium provides good intellectual stimulation and I also learn some useful stuff from it. I originally started watching Veritasium in the early 2010s, but then didn''t watch it for several years. I resumed watching Veritasium videos in 2022. I don''t record each individual video viewed, since I watch so many and they are not individually that noteworthy.'),
  ('YouTube channel','English','Ali Abdaal','https://www.youtube.com/channel/UCoOae5nYA7VqaXzerajD0lg','I''ve watched several videos of Ali Abdaal ever since hearing about him in December 2021. I do record individual videos of his that I watch if they were significant for me and/or if they were long. However, I have watched several short videos by him that I don''t feel are worth recording individually.'),
  ('YouTube channel','English','Magnates Media','https://www.youtube.com/c/MagnatesMedia','Starting August 2022, I''ve watched several Magnates Media videos that cover timelines of tech companies and other things in the tech world. I like the format of these. Another motivation for watching them is to get inspiration for how to make timelines on Timelines Wiki better. It doesn''t seem worthwhile to record which specific videos I watched.'),
  ('Podcast','English','Making Sense Podcast (with Sam Harris)','https://www.samharris.org/podcasts','Starting September 2022, I listened to the free (usually truncated) versions of many episodes of the Making Sense podcast by Sam Harris. For the most part, I have not been recording the consumption of individual episodes.'),
  ('YouTube channel','English/Hindi','ThePrint','https://www.youtube.com/c/ThePrintIndia','Starting around September 2021, I''ve watched several YouTube videos from ThePrint. Most of them are in English by Shekhar Gupta and are part of his Cut The Clutter or National Interest series. I''ve also watched videos by others, some of them in Hindi.'),
  ('Podcast','English','I Am All In with Scott Patterson','https://omny.fm/shows/i-am-all-in-with-scott-patterson','I listened to a few episodes through 2022, but started listening to the podcast systematically (listening to their recaps of individual Gilmore Girls episodes) starting 2022-11-06.'),
  ('Single video (such as movie)','Hindi','Chennai Express','https://www.netflix.com/title/70254350','Starting with my Netflix subscription renewal around mid-December 2022, I''ve been rewatching Chennai Express quite a bit (and in many cases listening without looking at the video). I enjoy it quite a bit; see https://dontcallitbollywood.com/2020/08/09/happy-7th-anniversary-of-chennai-express-i-quite-quite-like-this-movie/ (not written by me!) for some reasons.'),
  ('Single video (such as movie)','Hindi','Humpty Sharma Ki Dulhania','https://www.netflix.com/title/80073188','Starting with my Netflix subscription renewal around mid-December 2022, I''ve been rewatching Chennai Express quite a bit (and in many cases listening without looking at the video). I enjoy it quite a bit for its DDLJ-like vibes; see https://dontcallitbollywood.com/2016/07/25/humpty-sharma-ki-dulhania-and-ddlj-why-are-they-the-same-and-why-are-they-different/ and https://dontcallitbollywood.com/2016/07/26/humpty-sharma-part-2-its-important-not-so-much-for-what-it-is-but-for-what-it-says-about-ddlj/ (neither written by me!) for more details.'),
  ('YouTube channel','English','Web Conferences Amsterdam','https://www.youtube.com/@WebConferencesAmsterdam','Starting around January 2023, I began consuming a lot of content on this channel, starting with the 2022 performance.now() conference videos, but then proceeding to other videos such as those from CSS Day 2022. I had been involved in web performance work in a previous job role, so the topic is of some interest to me and I was curious enough to want to stay in touch with developments in the field.'),
  ('YouTube channel','English/Hindi','BeerBiceps','https://www.youtube.com/c/BeerBicepsOfficial','Starting around January 2023, I began consuming several of the podcast episodes of The Ranveer Show, which are in this channel. I had watched excerpts from some of the interviews previously but not connected them together until January 2023.'),
  ('YouTube channel','English','@CineDesi','https://www.youtube.com/@CineDesi','Starting January 2023, I started watching videos from this channel, mostly watch-alongs of Hindi movies. I watched many more in February and March, and also watched other videos from the channel that included watch-alongs of videos by Indian vloggers as well as advertisements. I found the watch-alongs pretty good, and enjoyed some of the commentary coming from different cultural perspectives.'),
  ('YouTube channel','Urdu','The Pakistan Experience','https://www.youtube.com/@ThePakistanExperience','Starting April 2023, I started watching videos from this channel, including interviews with people such as Uzair Younus (whom I had seen featured on The Print), Miftah Ismail and Atif Mian (both of whom were in a video I had watched in February), and Syed Muzammil (whose channel I would go on to watch). I enjoyed watching the videos in this channel.'),
  ('YouTube channel','Urdu','Syed Muzammil Official','https://www.youtube.com/@syedmuzammilofficial7067','Starting April 2023, I started watching videos from this channel. I found many of these videos very interesting and found the style quite fascinating.'),
  ('Podcast','English','Korea and the World','https://www.koreaandtheworld.org/','Starting April 2023, I started listening to episodes of this English podcast about stuff related to Korea. I found several of the episodes quite interesting, including https://www.koreaandtheworld.org/paul-y-chang-2/ about the demographic transition in South Korea and https://www.koreaandtheworld.org/suk-young-kim/ about the use of technology in North Korea.'),
  ('Podcast','English','Darknet Diaries','https://darknetdiaries.com/','Starting April 2023, I started listening to episodes of this podcast. I found a lot of interesting stuff in these podcast episodes, including stuff about physical security and stuff related to the complexity of evading the law while working in a darknet market.');
