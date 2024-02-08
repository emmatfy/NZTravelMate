-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 03, 2023 at 05:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `name` varchar(100) NOT NULL,
  `main_pic_name` varchar(100) NOT NULL,
  `introduction_pic_name` varchar(100) NOT NULL,
  `introduction_destination` varchar(10000) NOT NULL,
  `brief_introduction_destination` varchar(1000) NOT NULL,
  `id` int(11) NOT NULL,
  `area` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`name`, `main_pic_name`, `introduction_pic_name`, `introduction_destination`, `brief_introduction_destination`, `id`, `area`) VALUES
('Auckland', 'main_Auckland', 'introduction_Auckland', 'Auckland is a special place for its environment, its people and the lifestyles it offers.T?maki Makaurau, the M?ori name for Auckland, means T?maki desired by many.This name refers to the abundance of natural resources, strategic vantage points, portage routes, and mahinga kai which first attracted M?ori, and then other settlers.The spiritual and cultural connection M?ori have to T?maki Makaurau is tied to their relationship with the land, maunga, harbours and waters.</p><p>Auckland has a worldwide reputation for its quality of life. In large part this is because of its outstandingly beautiful natural environment and the lifestyle opportunities it offers.Auckland\'s beaches, harbours, rainforest-covered ranges, maunga, productive rural areas and gulf islands are all within relatively easy proximity for residents and visitors to enjoy.This stunning natural environment is blended with world-class universities, major arts, cultural and sporting events, museums, theatres, galleries, and history-rich urban villages.Auckland is increasingly displaying unique characteristics as a dynamic Asia-Pacific hub.</p><p>There has been sustained population growth in Auckland because it is a place of opportunity. People want to raise a family and pursue personal, business and career aspirations here.Auckland is ethnically and culturally diverse. It is home to people from over 120 different ethnicities.</p><p>Most Aucklanders consider that growing cultural and lifestyle diversity has made Auckland a better place to live.\r\n\r\nThe Auckland Plan 2050 acknowledges the special place of M?ori as the tangata whenua of Aotearoa New Zealand.\r\n\r\nThe Crown has specific obligations to M?ori under the nation’s founding document, te Tiriti o Waitangi/the Treaty of Waitangi.\r\n\r\nLegislation places obligations and decision making requirements on local government that are specific to M?ori.', 'Auckland is a special place for its environment, its people and the lifestyles it offers.T?maki Makaurau, the M?ori name for Auckland, means T?maki desired by many.This name refers to the abundance of natural resources, strategic vantage points, portage routes, and mahinga kai which first attracted M?ori, and then other settlers.The spiritual and cultural connection M?ori have to T?maki Makaurau is tied to their relationship with the land, maunga, harbours and waters.', 1, 'n'),
('Wellington', 'main_Wellington', 'introduction_Wellington', 'Wellington, capital city, port, and major commercial centre of New Zealand, located in the extreme south of North Island. It lies on the shores and hills surrounding Wellington Harbour (Port Nicholson), an almost landlocked bay that is ranked among the world’s finest harbours. Mount Victoria rises 643 feet (196 metres) near the centre of the city. Wellington is in a fault zone and has survived several earthquakes.</p><p>In 1839 a ship belonging to the New Zealand Company arrived with officials who were to select a site for the company’s first settlement. The site chosen, at the mouth of the Hutt River, proved unsuitable, and a move was made to Lambton Harbour on the west shore. The settlement was named in 1840 in recognition of the aid given the company by Arthur Wellesley, 1st duke of Wellington. It was made a borough in 1842 and a city in 1886. In 1865 the seat of the central government was transferred there from Auckland. The city is part of the Wellington local government region.</p><p>Wellington is the country’s transportation and communications hub. Rail and road services extend from it to all parts of North Island, and ferries to Picton link the capital to South Island. The city’s international airport is the focal point of the country’s internal aviation network. The harbour, serving domestic and international shipping, imports petroleum products, motor vehicles, and minerals and exports meats, wood products, dairy products, wool, and fruit. The economy is primarily service-based, with an emphasis on finance, business services, and government. Wellington is also a regional health and education centre. Tourism is important, and there is a growing film industry. Although manufacturing in the city itself has declined since the late 1980s, the region still has a printing industry and produces chemicals, plastics, and machinery. Victoria and Massey universities are in Wellington.</p><p>Much of the city is built on land reclaimed from the bay. Notable institutions include the Parliament buildings (among them the distinctive “Beehive” building), the National Library, the City Gallery Wellington (housing contemporary art), and the New Zealand Academy of Fine Arts (featuring the work of New Zealand artists). Te Papa Tongarewa, the national museum, moved to new quarters in 1998. The zoo and botanical gardens feature local species. The Old Government Building (built in 1876) is one of the world’s largest wooden structures. Wellington is the home of the Royal New Zealand Ballet and the National Symphony Orchestra. Pop. (2006) city, 178,671; urban agglom., 397,974; (2012 est.) city, 201,300; urban agglom., 395,600.', 'Wellington, capital city, port, and major commercial centre of New Zealand, located in the extreme south of North Island. It lies on the shores and hills surrounding Wellington Harbour (Port Nicholson), an almost landlocked bay that is ranked among the world’s finest harbours. Mount Victoria rises 643 feet (196 metres) near the centre of the city. Wellington is in a fault zone and has survived several earthquakes. In 1839 a ship belonging to the New Zealand Company arrived with officials who were to select a site for the company’s first settlement. The site chosen, at the mouth of the Hutt River, proved unsuitable, and a move was made to Lambton Harbour on the west shore. The settlement was named in 1840 in recognition of the aid given the company by Arthur Wellesley, 1st duke of Wellington. It was made a borough in 1842 and a city in 1886. In 1865 the seat of the central government was transferred there from Auckland. The city is part of the Wellington local government region.', 2, 'n'),
('Christchurch', 'main_Christchurch', 'introduction_Christchurch', 'Christchurch became a city by Royal Charter on 31 July 1856, making it officially the oldest established city in New Zealand. The Canterbury Association, which settled the Canterbury Plains, named the city after Christ Church, Oxford.Christchurch has an interesting history going back as far as the moa hunting tribes in the 1200s. They hunted one of New Zealand’s most magnificent birds to extinction. Maori tribes followed often fighting each other in civil wars and depleting their numbers severely. It wasn’t until the early Europeans settled after James Cooks discovered New Zealand in 1870 that civilization as we know it was established.</p><p>Archaeological evidence has shown Christchurch was first settled by humans about 1250. In a cave in Redcliffs in Christchurch moa bones have been found indicating moa hunting tribes were there.The moa was a large, flightless bird which supplied the huntsmen with abundant food. Some of the species were relatively small, however, the South Island giant moa stood as high at two metres. It is the tallest bird species known. From their bones, the Huntsman made ornaments, fish hooks, bird spears, and other items. The moa hunters trapped the birds between 1300 and 1500 and cleared large areas of forest by fire so by 1450 the moa\'s were extinct. Without the forests, the land eroded and the rivers spread across the plains burying all traces of the original forests.The remaining moa-hunters were either killed or taken into the tribes of the North Island Maori that arrived into Canterbury in the 1500s.</p><p>Another more recent event which has had a significant impact on the city was the deadly earthquake on Tuesday 22 February 2011. At lunchtime, Christchurch suffered a magnitude 6.3 earthquake caused severe damage. One hundred and eighty-five people were killed and several thousand injured.The earthquake\'s epicenter was near Lyttelton, just 10 km southeast of Christchurch\'s central business district. While the initial quake only lasted approximately 10 seconds the damage was severe because of the location and shallowness. The central city and eastern suburbs were badly affected. What made it worse was some buildings had already been weakened by a magnitude 7.1 earthquake which rocked the region in September 2009.Over 1,500 buildings in the city were demolished, leading to an ongoing recovery and rebuilding project.', 'Christchurch became a city by Royal Charter on 31 July 1856, making it officially the oldest established city in New Zealand. The Canterbury Association, which settled the Canterbury Plains, named the city after Christ Church, Oxford.Christchurch has an interesting history going back as far as the moa hunting tribes in the 1200s. They hunted one of New Zealand’s most magnificent birds to extinction. Maori tribes followed often fighting each other in civil wars and depleting their numbers severely. It wasn’t until the early Europeans settled after James Cooks discovered New Zealand in 1870 that civilization as we know it was established.', 3, 's'),
('Queenstown', 'main_Queenstown', 'introduction_Queenstown', 'Queenstown sits on the shore of Lake Wakatipu among dramatic alpine ranges. It’s rumoured that gold prospectors - captivated by the majestic beauty of the surrounding mountains and rivers - gave this now cosmopolitan town its name.There’s skiing from winter right through to spring, and activities such as bungy jumping, sky diving, canyon swinging, jet boating, horse trekking and river rafting all year round. It is also a renowned cycling destination, providing everything from easy scenic tracks to backcountry trails, road rides to heli-biking and the Southern Hemisphere’s only gondola accessed downhill mountain biking.If hardcore adventure isn\'t your thing, there are plenty of mellow options available. Experience one of the many walking and hiking trails, sightseeing tours or indulge yourself with spa treatments, boutique shopping and excellent food and wine.</p><p>A popular holiday spot at any time of the year, Queenstown is renowned for its four distinctive seasons. Winter brings crisp, blue-sky days, spring retains the snow but blooms into longer, warmer days, summer offers sunshine and long twilights, and autumn a burst of brilliant red and gold.</p><p>Head out of Queenstown and the drama of the Central Otago landscape unfolds around you. If you’re a Lord of the Rings fan you’ll recognise many Middle?earth™ locations here. Nearby Arrowtown’s gold-mining history is alive and vibrant; visit the Lakes District Museum or go gold panning. At the northern tip of Lake Wakatipu is rural Glenorchy and Paradise Valley. From here it’s a short drive into the Mt Aspiring National Park and the start of some of New Zealand’s great walks.', 'Queenstown sits on the shore of Lake Wakatipu among dramatic alpine ranges. It’s rumoured that gold prospectors - captivated by the majestic beauty of the surrounding mountains and rivers - gave this now cosmopolitan town its name.There’s skiing from winter right through to spring, and activities such as bungy jumping, sky diving, canyon swinging, jet boating, horse trekking and river rafting all year round. It is also a renowned cycling destination, providing everything from easy scenic tracks to backcountry trails, road rides to heli-biking and the Southern Hemisphere’s only gondola accessed downhill mountain biking.', 4, 's');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `location` varchar(100) NOT NULL,
  `review_title` varchar(1000) NOT NULL,
  `review_content` varchar(10000) NOT NULL,
  `year` int(4) NOT NULL,
  `month` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  `review_image_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`location`, `review_title`, `review_content`, `year`, `month`, `id`, `review_image_url`) VALUES
('Auckland', 'Why I recommend visiting Auckland', 'You may ask “Why?” But there is no disputing Auckland is New Zealand’s biggest city with about 1/3 of the country’s 4.3m population living here.\r\n\r\nBuilt on a couple of dozen volcano’s and with only one old and questionable 8-lane bridge North, (the alternative through West Harbour takes a lot longer and is not practical for most), people from other parts of the country consider Aucklanders to be a bit crazy to want to live here.\r\n\r\nAuckland’s traffic jams and the strain on infrastructure due to rapid growth are well publicised as is the fact that it is becoming harder to meet a genuine Kiwi in the city, such is the rate of immigration with ethnic communities expanding in most suburbs.\r\n\r\nhttps://www.tripadvisor.com/ShowUserReviews-g255106-r48520736-Auckland_Central_North_Island.html#', 2021, 'April', 1, 'IMG-656c7f0611cd07.50121878.png'),
('Wellington', 'Wow Wow Wow', 'What a fabulous place to visit. If you have a free couple of hours in Wellington make sure you visit and don&#039;t forget your binoculars. The conservation work these guys are doing to make the area predator proof and reintroducing the endangered species is truly breathtaking. If you care about conservation this is a must see.', 2022, 'June', 2, 'IMG-656c7fec0bb268.08634117.jpg'),
('Queenstown', 'Disappointing', 'Disappointing end to an amazing time in New Zealand. Far too crowded, lift passes clearly oversold. Queues for buses up and down the mountain. Hour+ long queue to pick up equipment in the morning. While the food was fine, only having 1 place to eat the queues are long. All lessons end at 12:30 for lunch so make sure to go another time if you can. Queues for the chair lifts are long. More time spend queuing than skiing. Would return to Europe to ski in the future like I have in the past. Far better experience for the price.', 2015, 'May', 3, ''),
('Queenstown', 'Great snow but very busy', 'First I suggest you prebook your ski pass, rental gear and bus tickets online (we went through NZSki). The busses sell out quickly especially during school holidays (best to check before you plan your trip). Staff at the town centre are exceptionally patient, helpful and knowledgeable.\r\nWhen catching the bus ensure you are at the town centre’s meeting place 30 mins early with your gear to line up for your allocated bus.\r\nThe trip up to the mountain is long and if there’s any incident on the road up it can take up to 1.5+ hours.\r\nOnce there it seems to be chaotic with queues, crowds and a sense of urgency! You can hire lockers for the day.\r\nThe ski runs are great - I’m a beginner and hubby is experienced. Only the beginners area is overly congested- the other chair lifts run smoothly with very little wait times.\r\nUnfortunately when it comes to food and sitting down for lunch, this is a fail. Unhealthy fried food, large pre-made sandwiches (more gourmet than basic sandwiches), sushi and the salads on offer didn’t look very appealing. (TBH I’d suggest bringing your own lunch and snacks - especially if you have kids). It’s almost impossible to find tables from about 11:30-1:30. (All ski lessons stop for lunch 12:30-1:30).\r\nThe amenities do not accommodate the amount of people on any given day.\r\nStaff are friendly, but perhaps an info booth would help.', 2011, 'November', 4, ''),
('Wellington', 'lacks depth or makes only trivial use of one of the languages', 'I visited on a discount combination ticket, both the Apsley House and the Wellington Arch. I used the audio guide in the house. The house was interesting. After returning home, I saw the new &quot;Napoleon&quot; movie which depicts Waterlook including the Duke of Wellington which made the prior visit to the mansion every more worthwhile!', 2018, 'June', 5, 'IMG-656ca5dc23b2a1.65941057.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `destination_id` int(100) NOT NULL,
  `view_name` varchar(100) NOT NULL,
  `view_introduction` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`destination_id`, `view_name`, `view_introduction`) VALUES
(1, 'Mount Victoria', 'It\'s a 12 minute ferry crossing to the pretty seaside village of Devonport and the location of arguably the best view of the Auckland skyline.  At the top of the High street, take the 15 minute steep walk or, drive and park at the summit of Mount Victoria to enjoy panoroamic views of Auckland city, the Hauraki Gulf, Rangitoto Island and the North Shore.'),
(1, 'Waiheke Island', 'A 35 minute ferry is all it takes to reach Waiheke Island which is home to an array of award-winning vineyards and stunning beaches. It\'s a cliche but true - there are stunning views at every turn. Oneora and Onetangi are the beaches to head to, while many of the vineyards enjoy fabulous views and wines to sample!'),
(2, 'Cable Car Lookout', 'One of the easiest lookouts to reach, it offers great views across the city centre and across to the Rimutaka Range. You can walk up to the lookout through the Botanic Gardens. Or take the scenic route and head up on the cable car which runs from Lambton Quay.'),
(2, 'Mount Kaukau', 'This viewpoint is part of the Skyline Walkway and is one of the highest around the city. Views to the city are more distant, but on a clear day, you can see across to the Kaikoura Mountain Range on the South Island.'),
(3, 'Godley Head', 'Godley Head is one of my favourite places in Christchurch. It’s isolated location and gorgeous views feel like the edge of the Earth, and with snippets of history along the way it’s a fascinating short walk to take along the coast.</p><p>The Godley Head walk can be as long or as short as you’d like. The benefit of an elevated carpark is you’re treated to amazing views across the coastline throughout the walk, so there’s no effort required to enjoy the the rewarding scenery.'),
(3, 'Banks Peninsula', 'Admittedly not actually in Christchurch, Banks Peninsula and Akaroa are still very close at just an hour and half drive along the twists and turns of the hilly roads. Steeped in French influence and charming history, Akaroa and the surrounding bays on the peninsula have some of the best views of the Pacific Ocean!Take a little drive up the road from Akaroa, and you’ll find plenty of areas to (safely) pull over and catch the views from anywhere along Summit Road. Head towards Le Bons Bay and you’ll get a panorama of views from Akaroa and the bays, over to Le Bons Bay and out to the ocean in the east.'),
(4, 'Skyline Gondola', 'A short walk from the town centre on Brecon Street, The Skyline Gondola is an obvious choice to take in the picture postcard views of Lake Wakatipu and the aptly named \'Remarkables mountains. Along with the hypnotic scenery, there are plenty of other attractions including the \'Luge\', bike park, stargazing, cafe and restaurant.'),
(4, 'Lake Hayes', 'A local\'s favourite, Lake Hayes is less than 15 minutes drive from Queenstown, just off State Highway 6 heading to Gibbston.  The lake is a lovely spot for picnics and a has a great loop track that\'s popular for walks, jogging and bike rides.  The view of the tranquil lake framed by the mountains is reason enough to visit.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
