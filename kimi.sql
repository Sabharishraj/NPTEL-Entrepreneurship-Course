-- ============================================================
-- NPTEL COURSE MCQ DATABASE
-- Contains: Weeks 1-12 (Total: 120 questions)
-- ============================================================
CREATE DATABASE IF NOT EXISTS nptel_mcq
  CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE nptel_mcq;

CREATE TABLE IF NOT EXISTS questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    week_number INT NOT NULL,
    question_number INT NOT NULL,
    question TEXT NOT NULL,
    option_a VARCHAR(500) NOT NULL,
    option_b VARCHAR(500) NOT NULL,
    option_c VARCHAR(500) NOT NULL,
    option_d VARCHAR(500) NOT NULL,
    correct_option CHAR(1) NOT NULL CHECK (correct_option IN ('A','B','C','D')),
    explanation TEXT,
    UNIQUE KEY uq_week_q (week_number, question_number)
);
-- -------------------- WEEK 1 --------------------
INSERT INTO questions (week_number, question_number, question, option_a, option_b, option_c, option_d, correct_option, explanation) VALUES
(1, 1, 'Most successful new-age start-ups in India deploy the following:',
 'Imported technologies', 'Vintage technologies', 'Social technologies', 'Digital technologies', 'D',
 'Successful new-age Indian start-ups are built on digital technologies such as platforms, apps and data-driven services.'),

(1, 2, 'Government of India has the following qualification criterion for an entity to be called as startup in India, reckoned from the date of inception:',
 'Age of the startup', 'Age of the founders', 'Age of the investors', 'None of the above', 'A',
 'Startup India defines an entity as a startup based on the age of the startup (not more than 10 years from incorporation), reckoned from the date of inception.'),

(1, 3, 'An entrepreneur who enters the market with a product or service which is based on a similar or improved product that is already existing is called:',
 'Innovative entrepreneur', 'Replicative entrepreneur', 'Opportunity entrepreneur', 'Necessity entrepreneur', 'B',
 'A replicative entrepreneur replicates or marginally improves an existing product or service rather than creating something entirely new.'),

(1, 4, 'Most start-ups when established fall under the following industry classification:',
 'Mega', 'MSME', 'PLI', 'Mainstream', 'B',
 'Newly established start-ups typically fall under the MSME (Micro, Small and Medium Enterprises) classification.'),

(1, 5, 'Dedicated incubation infrastructure that supports a start-up in the early stage of the startup life cycle is found in an Institution such as:',
 'IIT Madras Research Park', 'Genome Valley', 'CSIR', 'DRDO', 'A',
 'IIT Madras Research Park provides dedicated plug-and-play incubation infrastructure for early-stage start-ups.'),

(1, 6, 'Which of these startups witnessed rapid growth in the Covid-19 pandemic times?',
 'Food Delivery', 'E-commerce', 'Medtech', 'All the above', 'D',
 'Food delivery, e-commerce and medtech all saw rapid growth during the pandemic due to lockdowns and health needs.'),

(1, 7, 'Which of the following is an example of industry undergoing product transformation?',
 'Highway construction', 'Automobile industry', 'Rail transport', 'Air transport', 'B',
 'The automobile industry is undergoing product transformation through electrification, autonomy and connected vehicles.'),

(1, 8, 'Which of the following represents a transformative convergence of finance and digital technologies, which is yet to see endorsement by the national government as legal tenor?',
 'Microfinance', 'Credit Cards', 'Payment gateways', 'Cryptocurrency', 'D',
 'Cryptocurrency merges finance and digital technology but has not been endorsed by the Government of India as legal tender.'),

(1, 9, 'To achieve customer acceptance, the entrepreneur must:',
 'Identify the problem faced in the marketplace and find a creative solution',
 'Identify the problem faced in financing for the project and raise finance',
 'Identify ideas that qualify for government support and implement them',
 'Identify good talent and build an organisation', 'A',
 'Customer acceptance comes from solving a real marketplace problem with a creative solution.'),

(1, 10, 'What is the fundamental starting stage of an entrepreneurial journey?',
 'Ideation', 'Testing', 'Validation', 'Prototyping', 'A',
 'The entrepreneurial journey begins with ideation - generating the idea before testing, validation or prototyping.');

-- -------------------- WEEK 2 --------------------
INSERT INTO questions (week_number, question_number, question, option_a, option_b, option_c, option_d, correct_option, explanation) VALUES
(2, 1, 'Which stage comes immediately after Ideation in the broad stages of product development?',
 'Testing', 'Validation', 'Prototyping', 'Commercialisation', 'C',
 'The broad product development sequence is Ideation, followed by Prototyping, then Validation/Testing, and finally Commercialisation.'),

(2, 2, 'In MBTI personality typology, ENTJ is the:',
 'Rarest personality type that makes for highly effective leaders and CEOs',
 'Most commonly found personality type that makes for submissive officers',
 'Unique descriptor for product designers',
 'Indicator for rule-book bound CFOs and lawyers', 'A',
 'ENTJ (Extroverted, Intuitive, Thinking, Judging) is one of the rarest MBTI types and is strongly associated with leadership and CEO profiles.'),

(2, 3, 'Kerr, S.P., W.R. Kerr & T. Xu in their paper, "Personality Traits of Entrepreneurs: A review of Recent Literature", HBS Working Paper 18-047, November 2017 held that entrepreneurial characteristics are a part of:',
 'Individual training', 'National culture', 'Industrial development', 'Global economy', 'B',
 'The Kerr, Kerr and Xu review concludes that entrepreneurial personality traits are embedded in national culture rather than individual training.'),

(2, 4, 'Entrepreneurial large-scale firms may succeed in creating:',
 'Self-delusion', 'Conglomerates', 'Excessive competition', 'None of the above', 'B',
 'Large-scale entrepreneurial firms, when successful, tend to grow into conglomerates spanning multiple businesses.'),

(2, 5, 'Compared with conventional entrepreneurs, start-up founders take additional risks primarily by:',
 'Experimenting with innovation and new business models',
 'Experimenting with employees',
 'Experimenting with public policy',
 'Experimenting with customers', 'A',
 'Start-up founders differentiate themselves from conventional entrepreneurs by experimenting with innovation and untested business models.'),

(2, 6, 'The success of many start-ups such as RedBus, Swiggy, Airbnb, Uber and MakeMyTrip was based on:',
 'Treating demand and supply separately',
 'Focussing only on demand',
 'Focussing only on supply',
 'Aggregating and linking demand and supply digitally', 'D',
 'These platform start-ups act as digital aggregators that connect and link demand with supply through technology.'),

(2, 7, 'Paperboat is an Indian startup that succeeded with a thematic grid that combined:',
 'Ethnic Indian beverages with Ethnic Indian packaging',
 'Global beverages with Ethnic Indian packaging',
 'Ethnic Indian beverages with Contemporary modern packaging',
 'Global beverages with Global packaging', 'C',
 'Paperboat combined traditional ethnic Indian beverages with contemporary modern packaging to create its market positioning.'),

(2, 8, 'The fundamental and the first step of design thinking is:',
 'Designing a product or service', 'Empathising with the customer', 'Prototyping', 'Developing a market plan', 'B',
 'The design thinking process begins with empathy: understanding the customer before any design or prototyping occurs.'),

(2, 9, 'A true design thinking and ideation exercise involves:',
 'Accepting the status quo', 'Questioning the basics', 'Relying on experts', 'None of the above', 'B',
 'Genuine ideation requires questioning fundamental assumptions rather than accepting the status quo.'),

(2, 10, 'Which of the following is a serious ideation mistake?',
 'Lack of boundary', 'Lack of predefined purpose', 'Bias and closed-mindedness', 'Imaginary constraints', 'C',
 'Bias and closed-mindedness kill idea generation; boundaries, purpose and even imaginary constraints can actually aid ideation.');

-- -------------------- WEEK 3 --------------------
INSERT INTO questions (week_number, question_number, question, option_a, option_b, option_c, option_d, correct_option, explanation) VALUES
(3, 1, 'An effective Ideation facilitator would ideally be:',
 'A computer analyst', 'An empathetic and creative thinker', 'A time conscious manager', 'A seasoned administrator', 'B',
 'Ideation facilitators need empathy and creativity to draw ideas out of participants, not just administrative or analytical skills.'),

(3, 2, 'What is a native prototype?',
 'An improved product that is a hybrid of new and existing innards',
 'A novel product developed on a zero-base approach',
 'A product that reflects ethnic nativity',
 'A complete clone of an existing product', 'B',
 'A native prototype is built from scratch on a zero-base approach, as opposed to hybrid or cloned products.'),

(3, 3, 'Which of the following is not a Smart Wearable?',
 'Smart watch', 'Smart glass', 'Smart treadmill', 'Smart shoe', 'C',
 'A treadmill is standalone exercise equipment, not a wearable device, whereas watches, glasses and shoes are worn on the body.'),

(3, 4, 'An integrated model of prototype development requires:',
 'Sequential design and manufacture', 'Diversified design and manufacture',
 'Concurrent design and manufacture', 'Completely in-house manufacture', 'C',
 'Integrated prototype development depends on concurrent engineering, where design and manufacturing happen in parallel.'),

(3, 5, 'Under the World Trade Organization''s TRIPS Agreement, patent protection should be available and respected across:',
 'Only the state granting the patent', 'All signatory states',
 'Signatory as well as non-signatory states', 'Neither signatory nor non-signatory states', 'B',
 'TRIPS requires all WTO member (signatory) states to recognise and enforce patent protection.'),

(3, 6, 'Which patent of Amazon granted in 1999 enabled the company dominate online book retailing?',
 '"One-click" online purchase system', '"One-click" offline purchase system',
 '"One-click" page search system', 'None of the above', 'A',
 'Amazon''s 1999 "1-Click" online purchase patent gave it a decisive advantage in online book retailing.'),

(3, 7, 'For the performance testing of a prototype to happen, which of the following is not required as much as the others?',
 'Product specifications', 'Testing methods', 'Testing equipment',
 'External look and feel of the product', 'D',
 'Performance testing evaluates function; appearance and external look-and-feel are not essential for it.'),

(3, 8, 'Which of the following is a variable experience product?',
 'Smart phone', 'Viewing movies from a movie library',
 'Drinking water from a purifier', 'A luxury fashion accessory', 'B',
 'Each movie viewed delivers a different experience, making it a variable experience product, unlike standardised products.'),

(3, 9, 'The Minimum Viable Product (MVP) version of a smart watch, beyond its timekeeping function, must be:',
 'Its colour scheme', 'Its strap', 'Its dial face', 'Its health parameter tracking', 'D',
 'The core value proposition of a smart watch MVP is health parameter tracking, not cosmetic features.'),

(3, 10, 'Field testing of a product should be based on:',
 'Repeat of lab testing', 'Simulated operating conditions',
 'Destruction testing', 'Lifelong testing', 'B',
 'Field testing places the product under simulated real-world operating conditions to validate performance.');

-- -------------------- WEEK 4 --------------------
INSERT INTO questions (week_number, question_number, question, option_a, option_b, option_c, option_d, correct_option, explanation) VALUES
(4, 1, 'Computer software gets typically commercialised as:',
 'Only B2B', 'Only B2C', 'Both B2B and B2C', 'None of the above', 'C',
 'Software is commercialised in both business-to-business and business-to-consumer markets.'),

(4, 2, 'Start-ups become unicorns with their focus on:',
 'Stable profits even at low scale', 'Rapid revenue growth and high market share',
 'High pricing', 'None of the above', 'B',
 'Unicorn status is achieved through rapid revenue growth and capturing high market share rather than early profitability.'),

(4, 3, 'Successful commercialisation rests on which of the following?',
 'Demand creation', 'Demand fulfillment', 'Customer loyalty', 'All of the above', 'D',
 'Successful commercialisation requires creating demand, fulfilling it, and building customer loyalty together.'),

(4, 4, 'A disruptive innovation is a potent combination of:',
 'High technology and Low cost',
 'Creative business model and High technology',
 'Creative business model and Low cost',
 'High technology, Low cost and Creative business model', 'D',
 'Disruption occurs when high technology, low cost and a creative business model are combined.'),

(4, 5, 'In the personal computer industry, disruption was hastened by:',
 'Look and feel of the computers', 'Computer languages',
 'Exponential increase in processing power of the chips', 'Input-Output media', 'C',
 'The exponential growth in chip processing power (per Moore''s law) drove rapid disruption in the PC industry.'),

(4, 6, 'Many of the Indian unicorns are based on:',
 'Contract manufacture', 'Contract research', 'Digital business models', 'Franchising overseas rights', 'C',
 'Most Indian unicorns are built on digital platform business models.'),

(4, 7, 'What is not common between Amazon.com and Flipkart?',
 'Both started with online book selling in the respective starting jurisdictions',
 'Both are now in India as private companies',
 'Both now cater to e-commerce in India',
 'None of the above', 'D',
 'All the listed statements are common to both companies, so the correct choice is "None of the above".'),

(4, 8, 'Because of Covid-19 pandemic, start-ups in the following industry were adversely affected:',
 'E-Commerce', 'Travel and hospitality', 'Medtech', 'Food delivery', 'B',
 'Lockdowns and movement restrictions severely hit travel and hospitality, while e-commerce, medtech and food delivery grew.'),

(4, 9, 'Ninjacart is a successful start-up that addressed the following creatively and comprehensively:',
 'E-Commerce', 'Farm produce supply chain', 'Gaming', 'Food delivery', 'B',
 'Ninjacart built a technology-driven supply chain connecting farmers directly to retailers for fresh produce.'),

(4, 10, 'In the granulated stages of commercialisation, which stage primarily ensures that the manufactured product meets the required standards before reaching the distribution network?',
 'Supply Chain', 'Quality Check', 'Sales and Collections', 'Service and Customer Support', 'B',
 'The Quality Check stage verifies that manufactured products meet standards before they enter the distribution network.');

-- -------------------- WEEK 5 --------------------
INSERT INTO questions (week_number, question_number, question, option_a, option_b, option_c, option_d, correct_option, explanation) VALUES
(5, 1, 'Which type of innovation do start-ups primarily focus on?',
 'Evolutionary Innovation', 'Sustainable Innovation', 'Disruptive Innovation', 'Incremental Innovation', 'C',
 'Start-ups primarily target disruptive innovation that creates new markets or displaces incumbents.'),

(5, 2, '"Every company that has tried to manage mainstream and disruptive businesses within a single organization failed." This quote is from an article in HBR authored by:',
 'Eric Ries', 'Joseph L Bower and Clayton M Christensen',
 'Michael Porter', 'Peter Drucker', 'B',
 'This quote is from the Harvard Business Review article by Joseph L. Bower and Clayton M. Christensen.'),

(5, 3, 'A defining acquisition of Google that took the company to leadership in mobile telephone industry was:',
 'YouTube', 'Android', 'Instagram', 'Nest', 'B',
 'Google''s acquisition of Android in 2005 enabled it to dominate the mobile operating system market.'),

(5, 4, 'The pace of technology development in modern times is characterised as:',
 'Linear', 'Progressive', 'Non-linear', 'Non-Progressive', 'C',
 'Modern technology develops non-linearly, with sudden accelerations and exponential breakthroughs.'),

(5, 5, 'Just as chips revolutionised computing in the past (and will continue to), in future one of the following will revolutionise a whole spectrum of industries.',
 'Radars', 'Lidars', 'Motors', 'Smart Sensors', 'D',
 'Smart sensors are expected to revolutionise industries across the spectrum, analogous to chips in computing.'),

(5, 6, 'In the Pioneering Leadership Model, which form of leadership is positioned at the top?',
 'Cost Leadership', 'Differentiation Leadership', 'Innovation Leadership', 'Pioneering Advantage', 'C',
 'Innovation Leadership sits at the top of the Pioneering Leadership Model hierarchy.'),

(5, 7, 'Within the five technology forces, the power of operating systems is illustrated strikingly by the:',
 'Mobile phone industry', 'Renewable energy industry', 'Textile industry', 'Mining industry', 'A',
 'The mobile phone industry demonstrates how operating systems (Android, iOS) hold decisive power in a technology ecosystem.'),

(5, 8, 'For outstanding product or service success, a company should have:',
 'Individual skills', 'Departmental skills', 'Alchemy of skills', 'Assembly of skills', 'C',
 'The "alchemy of skills" - the right blend of multiple skills - drives outstanding product or service success.'),

(5, 9, 'Which innovator strategy focuses on using new technologies to make aspirational ideas a reality?',
 'Experience Leadership', 'Experimental Leadership', 'Application Leadership', 'Cost Leadership', 'C',
 'Application Leadership is about applying new technologies to turn aspirational concepts into real products.'),

(5, 10, 'Fourth industrial revolution is characterized by:',
 'Division of labour', 'Electricity', 'Cyber-physical-biological systems', 'Mass production', 'C',
 'The Fourth Industrial Revolution is defined by cyber-physical-biological system integration, unlike earlier revolutions defined by mechanisation, electricity and automation.');

-- -------------------- WEEK 6 --------------------
INSERT INTO questions (week_number, question_number, question, option_a, option_b, option_c, option_d, correct_option, explanation) VALUES
(6, 1, 'Completely autonomous vehicle is an example of',
 'Inadequate perfection', 'Inadequate innovation', 'Imperfect innovation', 'Perfect innovation', 'D',
 'A fully autonomous vehicle, where the technology performs the complete function, is an example of perfect innovation.'),

(6, 2, 'Which industry in India has several hundreds of brands for the same generic product?',
 'Cycle industry', 'Automobile industry', 'Pharmaceutical industry', 'None of the above', 'C',
 'The Indian pharmaceutical industry has hundreds of brands marketed for the same generic molecule.'),

(6, 3, 'Which of the following statements is relatively true?',
 'Design is only an integrator of different functionalities into one product',
 'Design is only a tool to promote different products with different functionalities',
 'Design can integrate as well as different(iate) functionalities in one or more products',
 'None of the above', 'C',
 'Design both integrates functionalities into products and differentiates products through functionalities.'),

(6, 4, 'Which of the following statements is true because of automobile electrification and autonomous driving?',
 'There would be opportunities for several technology led startups in the new generation components',
 'Automobile electrification and autonomy are hyped up and offer little opportunity to start-ups',
 'New generation components can be easily done in the facilities of existing auto component makers',
 'All of the above', 'A',
 'Electrification and autonomy create openings for technology-led start-ups in new-generation components.'),

(6, 5, 'What can additive manufacturing do to the automobile industry?',
 'Add weight to components',
 'Make components with just the required amount of materials',
 'Improve look and feel', 'None of the above', 'B',
 'Additive manufacturing (3D printing) builds components using only the material needed, reducing waste and weight.'),

(6, 6, 'From mobile phones, the recovery of which of the following critical materials presents a technological challenge and a potential start-up opportunity?',
 'Steel', 'Aluminium', 'Cobalt', 'Plastic', 'C',
 'Cobalt is a critical and valuable material in phone batteries, and recovering it is both a challenge and a start-up opportunity.'),

(6, 7, 'Speech recognition and NLP qualifies as',
 'Virtual reality', 'Artificial reality', 'Artificial intelligence', 'Mixed reality', 'C',
 'Speech recognition and Natural Language Processing are core subfields of Artificial Intelligence.'),

(6, 8, 'According to the Five Economic Forces Model, strategy and structure should consider which forces as more primal than industrial forces?',
 'Technological forces', 'Social forces', 'Economic forces', 'Competitive forces', 'C',
 'In the Five Economic Forces Model, economic forces are treated as more fundamental than industrial forces when framing strategy and structure.'),

(6, 9, 'Modern products such as Toyota car and Apple iPhone are manufactured through:',
 'Individual country fully integrated production',
 'Globally networked production',
 'Only Chinese manufacture',
 'None of the above', 'B',
 'Modern global products rely on globally networked production, with components and assembly spread across countries.'),

(6, 10, 'Just-in-time inventory system is aligned with:',
 'Push-type demand system',
 'Pull-type demand system',
 'Econometric demand system',
 'Expert demand system', 'B',
 'Just-in-time is a pull-type system where production and inventory respond to actual demand rather than forecasts.');

-- -------------------- WEEK 7 --------------------
INSERT INTO questions (week_number, question_number, question, option_a, option_b, option_c, option_d, correct_option, explanation) VALUES
(7, 1, 'Which of the following is a financial strategy decision?',
 'Diversification strategy decision',
 'Integration strategy decision',
 'Dividend decision',
 'Recruitment strategy decision', 'C',
 'The dividend decision concerns how earnings are distributed to shareholders, making it a core financial strategy decision.'),

(7, 2, 'The following is important for smooth and prudential conduct of a company''s operations:',
 'Periodic equity infusion',
 'Debt on tap',
 'Net positive cash flow from operations',
 'None of the above', 'C',
 'Sustained net positive cash flow from operations is essential for the smooth and prudent running of a company.'),

(7, 3, 'In the early phases of a start-up (say, ideation and prototyping), a start-up usually receives:',
 'Angel funding, typically a form of seed-stage funding',
 'Venture capital funding',
 'Private equity funding',
 'Public issue funding', 'A',
 'Early-stage start-ups are typically funded by angel investors providing seed-stage capital, before VC or PE rounds.'),

(7, 4, 'Which of the following statements is true?',
 'Over the last few years, there has been an increased investor interest in Indian start-ups',
 'Over the last few years, there has been a decreased investor interest in Indian start-ups',
 'Over the last few years, there has been a decline in the number of Indian unicorn start-ups',
 'Over the last few years, there has been no diversification in Indian start-up domains', 'A',
 'Investor interest in Indian start-ups has grown steadily, with expanding unicorn counts and diversified domains.'),

(7, 5, 'One of the most striking examples of a major global corporate transaction involving a strategic investment in an Indian start-up has been:',
 'Snapdeal', 'Practo', 'Walmart-Flipkart', 'Urban Ladder', 'C',
 'Walmart''s acquisition of a controlling stake in Flipkart is the landmark global strategic investment in an Indian start-up.'),

(7, 6, 'Wipro Founder supports start-ups through:',
 'Catamaran', 'Premji Invest', 'Wipro itself', 'None of the above', 'B',
 'Azim Premji backs start-ups through Premji Invest, his family investment office.'),

(7, 7, 'IIT Madras Research Park is primarily a:',
 'Leading plug-and-play incubator',
 'Leading accelerator',
 'Leading angel investor',
 'Leading R&D laboratory', 'A',
 'IIT Madras Research Park functions as a leading plug-and-play incubator for start-ups and industry R&D.'),

(7, 8, 'Government of India directly encourages and supports start-ups financially and procedurally through:',
 'Startup India Platform', 'Banks', 'Regional Rural Banks', 'Microfinance Institutions', 'A',
 'The Startup India initiative is the Government of India''s flagship platform for financial and procedural start-up support.'),

(7, 9, 'The Government of India has established a specialised funding institution to facilitate financing for micro enterprises and small businesses. This institution is called:',
 'Indifi', 'HUDCO', 'MUDRA', 'Kinara', 'C',
 'MUDRA (Micro Units Development and Refinance Agency) finances micro enterprises and small businesses.'),

(7, 10, 'A pitch deck is a vital vehicle for start-up founders to engage with all stakeholders, more specifically:',
 'Its employees', 'The governments', 'The investors', 'The suppliers and vendors', 'C',
 'A pitch deck is primarily the instrument used by founders to communicate with and secure investment from investors.');

 -- -------------------- WEEK 8 --------------------
INSERT INTO questions (week_number, question_number, question, option_a, option_b, option_c, option_d, correct_option, explanation) VALUES
(8, 1, 'PISA stands for:',
 'Programme for International Start-up Assessment',
 'Programme for International Student Assessment',
 'Programme for Indian Student Assessment',
 'Programme for Indian Start-up Assessment', 'B',
 'PISA is the OECD''s Programme for International Student Assessment, which benchmarks student performance worldwide.'),

(8, 2, 'Indian Government''s Make in India thrust is expected to benefit from India''s capabilities in:',
 'Start-ups', 'Software', 'Frugal engineering', 'None of the above', 'C',
 'Make in India leverages India''s frugal engineering strength - delivering quality products at low cost.'),

(8, 3, 'Which of the following is a key measure for assessing the impact of an entrepreneurial ecosystem?',
 'Number of start-ups created', 'Commercial success', 'Industry linkages', 'All of the above', 'D',
 'An entrepreneurial ecosystem is assessed by start-ups created, their commercial success, and the linkages forged with industry.'),

(8, 4, 'Start-ups have a great opportunity to contribute to the ushering in of:',
 'Circular economy', 'Declining economy', 'Volatile economy', 'None of the above', 'A',
 'Start-ups, with lean and sustainable models, can drive the transition to a circular economy.'),

(8, 5, 'According to the dominant-discipline approach, start-ups can be specialised around which combination of disciplines?',
 'Science, technology, mathematics and engineering',
 'Finance, marketing, HR and operations',
 'Arts, history, commerce and law',
 'Economics, sociology, psychology and political science', 'A',
 'The dominant-discipline approach classifies start-ups by their core STEM specialisation.'),

(8, 6, 'Globally, the following US universities are the most famous ones for nurturing a strong and vibrant entrepreneurial ecosystem:',
 'Arizona and Georgia', 'Stanford and MIT', 'Harvard and Columbia', 'Yale and Michigan', 'B',
 'Stanford and MIT are globally renowned for their vibrant entrepreneurial ecosystems, spawning countless start-ups.'),

(8, 7, 'To lead in analytics based start-ups, one needs a strong base of:',
 'Arts', 'Geology', 'Mathematics', 'History', 'C',
 'Analytics start-ups are built on data science, which requires a strong mathematical foundation.'),

(8, 8, 'What is a Founder''s Dilemma?',
 'Which product to choose', 'How much to invest',
 'When to transfer leadership to professionals', 'Where to sell', 'C',
 'The Founder''s Dilemma is the challenge of deciding when and how to hand over leadership to professional managers.'),

(8, 9, 'Co-founders of a successful start-up usually have:',
 'Exactly same skills', 'Opposing attitudes',
 'Complementary skills and attitudes', 'Same family lineage', 'C',
 'Successful founding teams combine complementary skills and attitudes that cover different aspects of the business.'),

(8, 10, 'The succession sagas at Tata Group and Infosys emphasise that for harmonious transition when founders are still the investors or statured leaders, harmony is ensured by:',
 'A complete break with the past',
 'Having all key decisions formally vetted by the founders',
 'Change with Continuity',
 'None of the above', 'C',
 'Smooth leadership transitions, as at Tata and Infosys, are achieved through change with continuity rather than abrupt breaks.');

 -- -------------------- WEEK 9 --------------------
INSERT INTO questions (week_number, question_number, question, option_a, option_b, option_c, option_d, correct_option, explanation) VALUES
(9, 1, 'For Founder to CEO transition to be successful in a start-up, the CEO must possess, beyond, technical and business skills:',
 'Ability to invest in the start-up',
 'Ability to quit at any time',
 'Cultural skills and fit',
 'Constantly questioning attitude', 'C',
 'A successful transition requires the new CEO to fit the start-up''s culture in addition to having technical and business competence.'),

(9, 2, 'In terms of ensuring good corporate governance, the start-up must have the following from the very beginning:',
 'A board comprising independent experts and leaders, including the founder and co-founder',
 'An organisation structure',
 'A recruitment procedure',
 'A hire and fire policy', 'A',
 'Good governance starts with a board that includes independent experts and leaders alongside the founders.'),

(9, 3, 'One of the important characteristics even if for an all-powerful CEOs is to have the',
 'The humility of advocacy',
 'The consensus from all stakeholders',
 'Both (a) and (b)',
 'Neither (a) nor (b)', 'C',
 'Even powerful CEOs need both the humility of advocacy and the ability to build stakeholder consensus.'),

(9, 4, 'Global concerns on climate change can lead to new start-up opportunities in:',
 'Medtech', 'Edtech', 'Cleantech', 'Fintech', 'C',
 'Climate change concerns open major opportunities in cleantech - clean energy, recycling and green technologies.'),

(9, 5, 'Which of the following is NOT a pillar of the Global Entrepreneurship Index?',
 'Risk Acceptance', 'Technology Absorption', 'Product Innovation', 'Financial Sustainability', 'D',
 'The Global Entrepreneurship Index pillars include risk acceptance, technology absorption and product innovation; financial sustainability is not one of them.'),

(9, 6, 'According to the 2019 University Entrepreneurship Index, Indian start-ups have to do a lot more in the following area:',
 'Biopharmaceutical technology', 'Retail and e-commerce', 'Finance', 'Travel and hospitality', 'A',
 'The 2019 University Entrepreneurship Index indicates Indian start-ups need to strengthen biopharmaceutical technology relative to other domains.'),

(9, 7, 'Structurally, the Japanese industrial ecosystem enables technological innovation:',
 'In select pockets of the value chain',
 'All across the value chain',
 'Only where large companies need',
 'Only by large firms', 'B',
 'Japan''s industrial ecosystem is structured so that innovation is enabled across the entire value chain, not just in pockets.'),

(9, 8, 'As a global trend, while the success in start-up will lead to exceptional rewards, start-ups do face:',
 'Little or no failure rate', 'High failure rate',
 'Governmental bailout even in failure', 'Bailout by banks even in failure', 'B',
 'Globally, start-ups carry a high failure rate, even though successful ones earn exceptional rewards.'),

(9, 9, 'Which strategic approach is associated with cost-competitiveness for start-ups?',
 'Innovative Technologists', 'Creative Marketers', 'Operations Leaders', 'Collaborative Networking', 'C',
 'Cost-competitiveness is driven by operational excellence, which corresponds to the Operations Leaders strategic approach.'),

(9, 10, 'Which pillar of the Global Entrepreneurship Index focuses on entrepreneurs'' ability to enter global markets?',
 'High Growth', 'Internationalization', 'Competition', 'Risk Capital', 'B',
 'The Internationalization pillar of the Global Entrepreneurship Index measures the ability of entrepreneurs to enter global markets.');
 -- -------------------- WEEK 10 --------------------
INSERT INTO questions (week_number, question_number, question, option_a, option_b, option_c, option_d, correct_option, explanation) VALUES
(10, 1, 'Continuing its entrepreneurial journey since the establishment of Tata Steel in 1907, Tata Group''s latest aspiration is to develop a:',
 'Super car', 'Super truck', 'Digital super app', 'Super salt', 'C',
 'Tata Group''s latest aspiration is to build a digital super app that integrates its diverse consumer services.'),

(10, 2, 'Which of the following is true?',
 'Employee entrepreneurs will carry out projects dictated by the employers only',
 'Employee entrepreneurs may develop products useful for their companies or for broader industries',
 'Employee entrepreneurs eventually give up on their projects',
 'Organisations lose talent because of employee entrepreneurship', 'B',
 'Employee entrepreneurs can create products that benefit their own companies as well as wider industries.'),

(10, 3, 'HRM strategy primarily supports which of the following?',
 'Organisational structure and roles',
 'Strategic and operational goals',
 'Market competition and growth',
 'Product development and innovation', 'B',
 'HRM strategy exists primarily to support the firm''s strategic and operational goals.'),

(10, 4, 'Entrepreneurs are rendered more distinctive by:',
 'Only passion without energy',
 'Only energy without passion',
 'Fusion of passion and energy',
 'None of the above', 'C',
 'What sets entrepreneurs apart is the fusion of passion with energy, not either one alone.'),

(10, 5, 'Entrepreneurial organisations, when compared to bureaucratic organisations, have:',
 'Higher entropy', 'Lower entropy', 'Equal entropy', 'Zero entropy', 'B',
 'Entrepreneurial organisations exhibit lower entropy than rigid bureaucratic ones because of their flexibility and adaptability.'),

(10, 6, 'The type of talent in a start-up should ideally be determined by:',
 'Available talent in the marketplace',
 'Nature of business strategy of the firm',
 'Management style of the founder',
 'Ability to pay', 'B',
 'Talent needs should flow from the firm''s business strategy rather than market availability or the founder''s style.'),

(10, 7, 'The most common type of organisation for a start-up is:',
 'Functional organisation', 'Product organisation', 'SBU organisation', 'Matrix organisation', 'A',
 'Start-ups most commonly adopt a functional organisation structure in their early stages.'),

(10, 8, 'Matrix organization is usually resorted to by:',
 'Domestic companies', 'Multinational corporations', 'Academic institutions', 'Research laboratories', 'B',
 'Matrix organisations, with dual reporting lines, are typically used by multinational corporations managing complex global operations.'),

(10, 9, 'Which management expert enunciated 14 principles of management?',
 'Frederick Taylor', 'Elton Mayo', 'Henry Fayol', 'Abraham Maslow', 'C',
 'Henry Fayol formulated the 14 principles of management; Taylor is known for scientific management.'),

(10, 10, 'Start-ups offer great opportunity for employees in terms of:',
 'Simple performance', 'Directed behaviour', 'Random behaviour', 'Self-actualisation', 'D',
 'Start-ups give employees scope for self-actualisation - realising their full potential through varied, meaningful work.');
 -- -------------------- WEEK 11 --------------------
INSERT INTO questions (week_number, question_number, question, option_a, option_b, option_c, option_d, correct_option, explanation) VALUES
(11, 1, 'Alexander Kritikos in his paper titled "Entrepreneurs and their impact on jobs and economic growth" in IZA World of Labor (May 2014) used the following phrase to aptly describe the disruption of an industry caused by innovative entrepreneurs:',
 'Hyper disruption', 'Hyper destruction', 'Creative destruction', 'Creative construction', 'C',
 'Kritikos invokes Schumpeter''s classic phrase "creative destruction" for the disruption innovative entrepreneurs cause to existing industries.'),

(11, 2, 'According to ILO statistics (2018), the percentage of employment in the formal sector is:',
 'Less than 10%', 'Between 20 and 30%', 'Between 40 and 50%', 'Above 50%', 'A',
 'ILO 2018 statistics show that less than 10% of global employment is in the formal sector.'),

(11, 3, 'As industries mature:',
 'Employment accelerates', 'Employment decelerates',
 'Junior employees become less important', 'None of the above', 'B',
 'Employment growth decelerates as industries mature and consolidate.'),

(11, 4, 'Food delivery companies such as Zomato and Swiggy brought this change to the employment scenario:',
 'Huge formal employment, all on fulltime rolls',
 'Huge informal employment, all on contract',
 'A mix of huge formal and informal employment, on a mix of fulltime and part-time rolls',
 'None of the above', 'C',
 'Zomato and Swiggy created a blend of formal and informal roles across full-time and part-time employment.'),

(11, 5, 'In terms of employment, entrepreneurship is nothing but:',
 'A divine choice', 'A serendipitous choice', 'An occupational choice', 'A referral choice', 'C',
 'Entrepreneurship is fundamentally an occupational choice among the various ways of earning a livelihood.'),

(11, 6, 'One of the greatest authors on employment and entrepreneurship who wrote a landmark book in 1934 was:',
 'Rensis Likert', 'Joseph Schumpeter', 'Paul Samuelson', 'Abraham Maslow', 'B',
 'Joseph Schumpeter published his landmark work on economic development and entrepreneurship in 1934.'),

(11, 7, 'Village industries (for example, pottery, carpentry, honey extraction) give self-employment to:',
 'Farmers', 'ITI diploma holders',
 'Skilled artisans, whether formally educated or not', 'Migrant labour', 'C',
 'Village industries provide self-employment to skilled artisans regardless of formal education.'),

(11, 8, 'E-Commerce start-up sector''s growth has triggered huge corresponding growth in:',
 'Malls', 'Kirana stores', 'Logistics', 'Advertising', 'C',
 'The explosive growth of e-commerce has driven massive parallel growth in the logistics sector.'),

(11, 9, 'Which of the following statements is true, with reference to a company?',
 'The Board of Directors is not responsible for Corporate Governance',
 'The CEO is not responsible but the Board of Directors is responsible for Corporate Governance',
 'Corporate Governance is the responsibility of shareholders',
 'The Board of Directors and the CEO are responsible for Corporate Governance', 'D',
 'Corporate governance is a shared responsibility of both the Board of Directors and the CEO.'),

(11, 10, 'The following governmental agency takes a lead role in formulating policies for and supervising corporate governance of listed companies in India:',
 'IRDA', 'RBI', 'SEBI', 'National Stock Exchange', 'C',
 'SEBI (Securities and Exchange Board of India) formulates policy and supervises corporate governance for listed companies.');

-- -------------------- WEEK 12 --------------------
INSERT INTO questions (week_number, question_number, question, option_a, option_b, option_c, option_d, correct_option, explanation) VALUES
(12, 1, 'The ideal space for a start-up in the matrix of needs and futurism (the need-marketing pivot) is:',
 'Linear Known', 'Linear Unknown', 'Non-linear Known', 'Non-linear Unknown', 'D',
 'The ideal space for a start-up in the need-marketing pivot matrix is Non-linear Unknown, representing high futurism and unmet latent needs.'),

(12, 2, 'Strategically, marketing is all about:',
 'Selling products to consumers as much as possible', 'Pricing products at the highest possible level',
 'Matching new company capabilities and new consumer needs', 'Convincing others', 'C',
 'Strategically, marketing focuses on matching new company capabilities with emerging or new consumer needs.'),

(12, 3, 'The quote "Like all disciplines, entrepreneurship has models, processes and case studies." is by:',
 'Donald F. Kuratko', 'Peter Drucker', 'Eric Ries', 'Clayton Christensen', 'A',
 'Donald F. Kuratko, a prominent entrepreneurship scholar and author, stated that entrepreneurship has models, processes, and case studies like any other discipline.'),

(12, 4, 'Which of the following represents the highest level of need in Maslow\'s Hierarchy of Needs?',
 'Safety needs', 'Social needs', 'Esteem needs', 'Self-actualisation needs', 'D',
 'In Maslow\'s Hierarchy of Needs, Self-actualisation needs (fulfilling one\'s personal potential) occupy the highest level of the pyramid.'),

(12, 5, 'Chennai Business School was established by senior working executives and became successful despite competition. It demonstrates:',
 'Opportunity Entrepreneurship', 'Replicative Entrepreneurship', 'Employee Entrepreneurship', 'Necessity Entrepreneurship', 'A',
 'Chennai Business School is an example of Opportunity Entrepreneurship, founded by experienced executives who seized an opportunity to offer executive management education.'),

(12, 6, 'Every start-up will have its core competence, but all successful start-ups have a unique additional competency:',
 'Governmental support', 'Industry support',
 'Ability to conceptualise and execute an integrated business strategy and business model', 'None of the above', 'C',
 'Beyond core technical or product skills, successful start-ups must possess the ability to conceptualise and execute an integrated business strategy and business model.'),

(12, 7, 'The unique differentiating competence required for natural products to be medicines is the following:',
 'Finance', 'The technical ability to characterise and isolate the active wellness or therapeutic ingredient',
 'Being in the large-scale sector', 'None of the above', 'B',
 'For natural products to serve as validated medicines, the vital differentiating competence is the technical ability to isolate and characterise the active wellness or therapeutic chemical entity.'),

(12, 8, 'NatSol Laboratories chose a natural product for its business. It is:',
 'Aspartame', 'Stevia', 'Sucralose', 'Ginseng', 'B',
 'NatSol Laboratories focused on Stevia, extracting natural zero-calorie sweeteners as a commercial healthcare and food ingredient venture.'),

(12, 9, 'Which of the following is NOT one of the traditional 4 Ps of marketing?',
 'Product', 'Price', 'Promotion', 'People', 'D',
 'The traditional 4 Ps of marketing are Product, Price, Place, and Promotion. People, Process, and Physical Evidence were added later for services marketing (the 7 Ps).'),

(12, 10, 'Integrated Cleanroom Technology supplies its products primarily to:',
 'Automobile industry', 'Chemical industry', 'Sterile pharmaceutical industry', 'Housing industry', 'C',
 'Integrated Cleanroom Technology specializes in modular contamination-controlled cleanroom environments primarily for the sterile pharmaceutical and healthcare industries.');

 