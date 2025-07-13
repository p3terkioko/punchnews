-- Punch News Database Schema and Data
-- Amateur-style SQL file to mimic the JSON articles data
-- Created for basic web development class project

-- Create database (uncomment if needed)
-- CREATE DATABASE punch_news;
-- USE punch_news;

-- Drop table if exists (for testing)
DROP TABLE IF EXISTS articles;

-- Create articles table
CREATE TABLE articles (
    id INT PRIMARY KEY,
    title VARCHAR(500) NOT NULL,
    content TEXT NOT NULL,
    category VARCHAR(50) NOT NULL,
    author VARCHAR(100) NOT NULL,
    date DATE NOT NULL,
    image VARCHAR(500),
    excerpt VARCHAR(1000)
);

-- Insert all the articles data
INSERT INTO articles (id, title, content, category, author, date, image, excerpt) VALUES 
(1, 'Major Economic Recovery Shows Strong Growth in 2025', 
'The global economy has shown remarkable resilience in 2025, with major indicators pointing to sustained growth across multiple sectors. Financial analysts report that consumer confidence has reached a five-year high, driven by improved employment rates and increased spending power.

Government officials announced today that unemployment rates have dropped to 3.2%, the lowest in recent history. This development comes as businesses continue to expand their operations and create new job opportunities across various industries.

The technology sector leads the charge with a 15% growth rate this quarter, followed closely by renewable energy and healthcare industries. Manufacturing has also seen significant improvements, with production output increasing by 12% compared to the same period last year.

Economists predict that this positive trend will continue throughout 2025, with projections showing steady growth in GDP and continued improvement in living standards for working families.', 
'breaking-news', 'Sarah Johnson', '2025-07-12', 
'https://via.placeholder.com/400x250/90EE90/000000?text=Economic+Growth',
'Global economy shows remarkable resilience with unemployment dropping to 3.2% and strong growth across multiple sectors.');

INSERT INTO articles (id, title, content, category, author, date, image, excerpt) VALUES 
(2, 'Climate Summit Reaches Historic Agreement on Carbon Emissions',
'World leaders have reached a groundbreaking agreement at the International Climate Summit, setting ambitious targets for carbon emission reductions over the next decade. The accord, signed by 195 countries, represents the most comprehensive climate action plan in history.

The agreement includes commitments to reduce global carbon emissions by 50% by 2030 and achieve net-zero emissions by 2040. Developed nations have pledged $500 billion in funding to support developing countries in their transition to renewable energy sources.

Environmental scientists have praised the agreement as a crucial step toward preventing catastrophic climate change. Dr. Maria Rodriguez, lead climate researcher at the Global Environmental Institute, stated that these commitments could limit global warming to 1.5 degrees Celsius above pre-industrial levels.

The implementation plan includes massive investments in solar and wind energy infrastructure, electric vehicle adoption, and reforestation projects worldwide. Several major corporations have already announced their support for the initiative.',
'breaking-news', 'Michael Chen', '2025-07-11',
'https://via.placeholder.com/400x250/90EE90/000000?text=Climate+Summit',
'195 countries sign historic climate agreement with commitments to reduce carbon emissions by 50% by 2030.');

INSERT INTO articles (id, title, content, category, author, date, image, excerpt) VALUES 
(3, 'Revolutionary Medical Breakthrough in Cancer Treatment',
'Medical researchers at Johns Hopkins University have announced a revolutionary breakthrough in cancer treatment that could potentially cure 90% of cases within the next five years. The new treatment combines advanced immunotherapy with precision gene editing techniques.

The clinical trials, conducted over three years with 2,000 participants, showed remarkable success rates across various types of cancer including lung, breast, and pancreatic cancers. Patients who received the new treatment showed complete remission rates of 87%, compared to 23% with traditional treatments.

Dr. Elizabeth Martinez, who led the research team, explained that the treatment works by reprogramming the patient''s immune system to specifically target and eliminate cancer cells while leaving healthy tissue unharmed. The procedure takes approximately four hours and requires only one session in most cases.

The FDA has fast-tracked the approval process, and the treatment could be available to patients by early 2026. Major health insurance companies have already indicated their willingness to cover the costs of this groundbreaking therapy.',
'breaking-news', 'Dr. Robert Williams', '2025-07-10',
'https://via.placeholder.com/400x250/90EE90/000000?text=Medical+Breakthrough',
'Johns Hopkins researchers develop revolutionary cancer treatment showing 87% complete remission rates in clinical trials.');

INSERT INTO articles (id, title, content, category, author, date, image, excerpt) VALUES 
(4, 'Tech Giants Report Record Profits as AI Integration Accelerates',
'Major technology companies have reported unprecedented profits in the second quarter of 2025, driven primarily by the rapid integration of artificial intelligence across their product lines. Combined revenues for the top five tech companies exceeded $800 billion, representing a 28% increase from the previous year.

Artificial intelligence has become the primary growth driver, with AI-powered services accounting for 60% of total revenue growth. Companies have successfully integrated AI into everything from customer service to product development, resulting in significant cost savings and improved efficiency.

The surge in AI adoption has also created thousands of new job opportunities in AI engineering, data science, and machine learning specializations. Industry experts predict that this trend will continue as more businesses recognize the competitive advantages of AI integration.

Investors have responded positively to these developments, with tech stocks reaching all-time highs. The NASDAQ technology index has gained 45% year-to-date, outperforming all other market sectors by a significant margin.',
'business', 'Jennifer Davis', '2025-07-09',
'https://via.placeholder.com/400x250/90EE90/000000?text=Tech+Profits',
'Major tech companies report record $800 billion combined revenues driven by AI integration and unprecedented growth.');

INSERT INTO articles (id, title, content, category, author, date, image, excerpt) VALUES 
(5, 'Small Business Renaissance: Entrepreneurship Reaches New Heights',
'The entrepreneurial spirit is alive and thriving in 2025, with small business registrations reaching a 20-year high. Government data shows that over 2.3 million new businesses were registered in the first half of 2025, representing a 35% increase compared to the same period last year.

This surge in entrepreneurship is attributed to several factors including improved access to funding, simplified business registration processes, and the growing popularity of e-commerce platforms. Many new entrepreneurs are leveraging digital tools to start businesses with minimal initial investment.

The Small Business Administration reports that 78% of new businesses are achieving profitability within their first year, a significant improvement from previous decades. This success rate is largely due to better business education resources and mentorship programs available to new entrepreneurs.

Women and minority entrepreneurs are leading this business renaissance, accounting for 65% of all new business registrations. These diverse business owners are creating innovative solutions in sectors ranging from sustainable products to digital services.',
'business', 'Carlos Rodriguez', '2025-07-08',
'https://via.placeholder.com/400x250/90EE90/000000?text=Small+Business',
'Small business registrations hit 20-year high with 2.3 million new businesses and 78% achieving first-year profitability.');

INSERT INTO articles (id, title, content, category, author, date, image, excerpt) VALUES 
(6, 'Hollywood Summer Blockbusters Break Box Office Records',
'The 2025 summer movie season has shattered all previous box office records, with total ticket sales exceeding $8 billion globally. This remarkable achievement comes as theaters worldwide report the highest attendance numbers since the golden age of cinema.

The success is driven by a combination of highly anticipated sequels, original blockbusters, and the return of audiences to theaters after years of streaming dominance. ''Galaxy Warriors: Final Battle'' alone has generated over $1.2 billion in worldwide revenue, making it the highest-grossing film of the year.

Industry analysts credit the success to improved theater experiences, including advanced sound systems, comfortable seating, and enhanced food services. Many theaters have also introduced premium experiences with reclining seats and in-theater dining options.

Streaming services have responded by increasing their investment in original content, with several platforms announcing billion-dollar production budgets for exclusive films and series. This competition between theaters and streaming has ultimately benefited consumers with more high-quality entertainment options.',
'entertainment', 'Amanda Thompson', '2025-07-07',
'https://via.placeholder.com/400x250/90EE90/000000?text=Box+Office',
'Summer blockbusters generate record $8 billion globally as ''Galaxy Warriors: Final Battle'' leads with $1.2 billion revenue.');

INSERT INTO articles (id, title, content, category, author, date, image, excerpt) VALUES 
(7, 'Music Streaming Reaches New Milestone with 5 Billion Users',
'The global music streaming industry has reached an unprecedented milestone with over 5 billion active users worldwide, representing a 400% increase from just five years ago. This explosive growth has fundamentally transformed how people consume and discover music.

Streaming platforms have revolutionized the music industry by making vast catalogs of songs instantly accessible to users anywhere in the world. Artists now release music directly to streaming services, often bypassing traditional record label distribution methods.

The rise of AI-powered music recommendation systems has helped users discover new artists and genres, leading to more diverse listening habits. Independent artists have particularly benefited from this democratization of music distribution, with many achieving global success without major label backing.

Revenue from streaming now accounts for 89% of all music industry income, with total industry revenue reaching $45 billion annually. This growth has enabled record labels to invest more heavily in artist development and new technology platforms.',
'entertainment', 'David Kim', '2025-07-06',
'https://via.placeholder.com/400x250/90EE90/000000?text=Music+Streaming',
'Music streaming industry reaches 5 billion users globally, accounting for 89% of music industry revenue worth $45 billion.');

INSERT INTO articles (id, title, content, category, author, date, image, excerpt) VALUES 
(8, 'Olympic Games 2025: Record-Breaking Performances and Global Unity',
'The 2025 Summer Olympic Games have concluded with spectacular performances and a record number of world records broken across multiple disciplines. Athletes from 206 countries participated in this celebration of human achievement and international cooperation.

A total of 47 world records were broken during the games, surpassing the previous record of 43 set in 2008. Swimming and track and field events saw the most impressive performances, with several athletes achieving times and distances previously thought impossible.

The games were notable not just for athletic achievements but also for their emphasis on sustainability and environmental responsibility. The host city implemented comprehensive recycling programs and used 100% renewable energy for all Olympic venues.

Beyond the competition, the Olympics served as a powerful symbol of global unity, bringing together athletes from diverse backgrounds to compete in the spirit of fair play and mutual respect. The closing ceremony celebrated both individual achievements and the collective human spirit.',
'sports', 'Lisa Anderson', '2025-07-05',
'https://via.placeholder.com/400x250/90EE90/000000?text=Olympics+2025',
'2025 Summer Olympics conclude with 47 world records broken and powerful demonstration of global unity and sustainability.');

INSERT INTO articles (id, title, content, category, author, date, image, excerpt) VALUES 
(9, 'Professional Soccer League Expands with Record Fan Attendance',
'Professional soccer continues its remarkable growth trajectory with the announcement of league expansion and record-breaking attendance numbers. The major soccer league reported an average attendance of 68,000 fans per game, the highest in the sport''s history.

The league will add four new teams next season, bringing the total to 32 teams across the country. This expansion reflects the sport''s growing popularity and the increasing investment from both domestic and international stakeholders.

Youth soccer participation has also reached new heights, with over 4.2 million children enrolled in organized soccer programs nationwide. This grassroots growth is expected to continue feeding talent into professional leagues for years to come.

Television viewership has increased by 85% over the past three years, with major broadcasting networks competing for rights to air games. The increased media attention has also led to significant growth in merchandise sales and sponsor investments.',
'sports', 'Mark Johnson', '2025-07-04',
'https://via.placeholder.com/400x250/90EE90/000000?text=Soccer+League',
'Soccer league expansion announced as attendance hits record 68,000 per game with 4.2 million youth participants.');

INSERT INTO articles (id, title, content, category, author, date, image, excerpt) VALUES 
(10, 'The Future of Education: Embracing Technology While Preserving Human Connection',
'As we navigate the rapidly evolving landscape of education in 2025, we find ourselves at a critical juncture where technology and human connection must work in harmony. The past few years have demonstrated both the incredible potential and the important limitations of digital learning.

While online learning platforms have made education more accessible than ever before, we must not lose sight of the irreplaceable value of human interaction in the learning process. The most effective educational approaches combine the efficiency of technology with the inspiration that comes from great teachers and collaborative learning environments.

Students today have access to virtually unlimited information, but they need guidance in developing critical thinking skills to evaluate and synthesize this information effectively. This is where skilled educators become more important than ever, serving not just as sources of information but as mentors who help students navigate complex ideas.

The future of education lies not in choosing between traditional and digital methods, but in thoughtfully integrating both to create learning experiences that are both engaging and deeply meaningful. We must invest in teacher training and educational infrastructure while embracing the tools that can enhance rather than replace human connection in learning.',
'opinion', 'Dr. Patricia Moore', '2025-07-03',
'https://via.placeholder.com/400x250/90EE90/000000?text=Future+Education',
'Education must balance technological innovation with human connection to create meaningful learning experiences for students.');

-- Some basic queries for testing
-- SELECT * FROM articles;
-- SELECT * FROM articles WHERE category = 'breaking-news';
-- SELECT * FROM articles WHERE author = 'Sarah Johnson';
-- SELECT title, author, date FROM articles ORDER BY date DESC;
-- SELECT category, COUNT(*) as article_count FROM articles GROUP BY category;

-- Create index for better performance (optional)
CREATE INDEX idx_category ON articles(category);
CREATE INDEX idx_date ON articles(date);
CREATE INDEX idx_author ON articles(author);

-- Show all tables
-- SHOW TABLES;

-- Show table structure
-- DESCRIBE articles;
