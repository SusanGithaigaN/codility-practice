puts "seeding..🪴🪴🪴"

# Creating Users
  user1=User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password'
  )
  user2=User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password'
  )
  user3=User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password'
  )
  user4=User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password'
  )
  user5=User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'password'
  )

  # creating profiles for each user
profile = Profile.new(
  name: user1.name,
  email: user1.email,
  bio: "Think programmers have an easy life? Try building and designing an app only to have the customer say: 'oh, just a website is fine!'  ",
  social_account: Faker::Internet.username,
  is_active: [true, false].sample,
  cohort: ["SDF-FT2","SDF-FT3","SDF-PT2"].sample,
  graduation_year: [2020,2019,2018,2023,2022,2021].sample,
  profession: 'UI/UX Designer',
  privacy: [true, false].sample,
  user_id: user1.id
)
profile.profile_picture.attach(io: File.open(Rails.root.join('app', 'assets', 'boy1.jpeg')), filename: 'boy1.jpeg', content_type: 'image/jpeg')
profile.save

profile = Profile.new(
  name: user2.name,
  email: user2.email,
  bio: "The life of programming — the perfect mistake, I call it.",
  social_account: Faker::Internet.username,
  is_active: [true, false].sample,
  cohort: ["SDF-FT2","SDF-FT3","SDF-PT2"].sample,
  graduation_year: [2020,2019,2018,2023,2022,2021].sample,
  profession: 'Software Engineer',
  privacy: [true, false].sample,
  user_id: user2.id
)
profile.profile_picture.attach(io: File.open(Rails.root.join('app', 'assets', 'girl1.jpeg')), filename: 'girl1.jpeg', content_type: 'image/jpeg')
profile.save

profile = Profile.new(
  name: user3.name,
  email: user3.email,
  bio: "Build, create, design, and have it fail. Learn, read, fix, and start over. Such is the engineer's way.",
  social_account: Faker::Internet.username,
  is_active: [true, false].sample,
  cohort: ["SDF-FT2","SDF-FT3","SDF-PT2"].sample,
  graduation_year: [2020,2019,2018,2023,2022,2021].sample,
  profession: 'Data Scientist',
  privacy: [true, false].sample,
  user_id: user3.id
)
profile.profile_picture.attach(io: File.open(Rails.root.join('app', 'assets', 'boy2.jpeg')), filename: 'boy2.jpeg', content_type: 'image/jpeg')
profile.save

profile = Profile.new(
  name: user4.name,
  email: user4.email,
  bio: "Big skill comes from humble beginnings and ideas.",
  social_account: Faker::Internet.username,
  is_active: [true, false].sample,
  cohort: ["SDF-FT2","SDF-FT3","SDF-PT2"].sample,
  graduation_year: [2020,2019,2018,2023,2022,2021].sample,
  profession: 'DevOps Engineer',
  privacy: [true, false].sample,
  user_id: user4.id
)
profile.profile_picture.attach(io: File.open(Rails.root.join('app', 'assets', 'girl2.jpeg')), filename: 'girl2.jpeg', content_type: 'image/jpeg')
profile.save

profile = Profile.new(
  name: user5.name,
  email: user5.email,
  bio: "The world always needs more good programmers!",
  social_account: Faker::Internet.username,
  is_active: [true, false].sample,
  cohort: ["SDF-FT2","SDF-FT3","SDF-PT2"].sample,
  graduation_year: [2020,2019,2018,2023,2022,2021].sample,
  profession: 'Cyber Security',
  privacy: [true, false].sample,
  user_id: user5.id
)
profile.profile_picture.attach(io: File.open(Rails.root.join('app', 'assets', 'boy3.jpeg')), filename: 'boy3.jpeg', content_type: 'image/jpeg')
profile.save


# Create Admins data
Admin.create(
  name: 'Susan Githaiga',
  email: 'susan.githaiga@student.moringaschool.com',
  password: 'password'
)
Admin.create(
  name: 'Darlene Nandabi',
  email: 'darlene.nandabi@student.moringaschool.com',
  password: 'password1'
)
Admin.create(
  name: 'Keith Kiama',
  email: 'keith.kiama@student.moringaschool.com',
  password: 'password2'
)
Admin.create(
  name: ' Justine Limo',
  email: 'justine.limo@student.moringaschool.com',
  password: 'password3'
)
Admin.create(
  name: 'Emmanuel Chacha',
  email: 'emmanuel.chacha@student.moringaschool.com',
  password: 'password4'
)
Admin.create(
  name: 'Leonard Mukanda',
  email: 'leonard.mukanda@student.moringaschool.com',
  password: 'password5'
)

# Creating Events data    
Event.create!(
  name:'Training on Mobile Data Collection using KoBoToolBox', 
  description:'KoBoToolbox is a set of tools for collecting data in challenging environments via Android devices and online servers. Our training equips participants to develop and manage this platform. It includes practical activities, theory, and case studies, with materials and venue covered in the fee.', 
  image:'event1.png', 
  date: Date.new(2023, 5, 11),
  venue:'Nairobi . Online', 
  time:Time.parse('10:30:00'),
  admin_id: 5
)
Event.create!(
  name:'Research Design, Data Management and Statistical Analysis using SPSS workshop', 
  description:'"Promoting organisational effectiveness" INTRODUCTION Informed decision making is facilitated through research. Different techniques and data sets for research are helpful to businesses and consumers. The skills to conduct a research and analyze the data using SPSS are crucial to researchers. At the end of this course participants should have acquired knowledge and skills in the systemic undertaking of a research using quantitative techniques, data collection methods and data analysis and interpretation. COURSE OBJECTIVES A· Understand the terms and concepts of statistical data A· Design and conduct a research A· Use SPSS for data analysis A· Manage research data using software A· Carry out statistical tests using software A· Writing reports from survey data', 
  image:'event2.png', 
  date: Date.new(2023, 5, 15),
  venue:'Nairobi . Online', 
  time:Time.parse('13:00:00'),
  admin_id: 6
)
Event.create!(
  name:'Advanced Data Visualizing and Analysis using Microsoft Power BI', 
  description:'Monitoring and evaluation professionals and researchers work with vast data that if not well handled can be overwhelming and difficult to use in decision making. Microsoft Power BI aids in visualizing data and sharing insights. The program helps in extracting, analyzing and comprehending large quantities of data thereby ensuring easier data presentation and informed decision making. In this course, participants will learn how to analyze data using Microsoft Power BI analytics tools and create user-friendly visualization dashboards and reports.', 
  image:'event3.png',
  date: Date.new(2023, 5, 21),
  venue:' Fahari Palace Serviced Apartments, Nairobi, Kenya', 
  time:Time.parse('11:00:00'),
  admin_id: 1
)
Event.create!(
  name:'Quantitative Data Analysis and Visualization using Python Training Course', 
  description:'Python has been one of the premier, flexible, and powerful open-source language that is easy to learn, easy to use, and has powerful libraries for data manipulation and analysis. This training is a step by step guide to Python and Statistical Data Analysis with extensive hands on. The course is delivered with several activity problems, assignments and scenarios that help participants gain practical experience in data handling, analysis, interpretation as well as reporting. This course starts by exploring basic statistics such as mean, median and mode and commence to advanced exploratory features such as groups comparisons, regression, test of relationships, classification, clustering, just to mention a few.', 
  image:'event4.jpeg', 
  date: Date.new(2023, 6, 10),
  venue:' Sarova Whitesands Beach Resort, Mombasa, Kenya', 
  time:Time.parse('12:00:00'),
  admin_id: 2
)
Event.create!(
  name:'Edtech Expo-Africa', 
  description:'The summit: Takes a dive into the revolution of Education in Africa through the fast-evolving technology & digital landscape.Explores and gives insight into new formats of digital and tech intervention in education and discusses opportunities and implementation strategies. Gears up participants to drive actionable outcomes & contribute to advancing the African Ed Tech regulatory space. Helps highlight, define and consolidate Ed Tech Key players and upcoming start upsa€™ efforts in the region. Focuses on the alignment of institutionsa€™ digital and technological infrastructure with teaching and learning.', 
  image:'event5.jpeg', 
  date: Date.new(2023, 6, 19),
  venue:'The Sarit Centre, Nairobi, Kenya', 
  time:'TBA',
  admin_id: 3
)
Event.create!(
  name:'Training on Quantitative Data Management and Analysis using SPSS', 
  description:'In the socio-economic and business context, conducting research, data management, and data analysis are imperative for informed decision making. IBM SPSS Statistics is a powerful statistical software platform. It delivers a robust set of features that lets your organization extract actionable insights from its data. The software is more popular in social sciences. Sound knowledge about the methodology of conducting research and the use of SPSS is very beneficial for to researchers. Upon completion of workshop, participants will develop competence in quantitative techniques in research design, data collection, and management, statistical data analysis, interpretation and reporting of results.', 
  image:'event6.jpeg', 
  date: Date.new(2023, 6, 21),
  venue:'Hilton Nairobi, Nairobi, Kenya', 
  time:'TBA',
  admin_id: 4
)
Event.create!(
  name:'Training Course in Data Management, Analysis and Visualization using Microsoft Excel', 
  description:'This training aims at making the process of conversion of aa‚¬A"Dataaa‚¬A to aa‚¬A"Informationaa‚¬A efficient and cost effective. This course explore the powers of Microsoft Excel in data science while utilizing at a maximum, the most basic, easily available and affordable data analysis and reporting tool. This training equips participants with technical know-how in data manipulation, statistical analysis, reporting through the use of high-impact, meaningful and appealing reporting solutions (dashboards). After the uptake of this course, most participants often adopt the use of Microsoft Excel in place of specialized software such as SPSS, Stata, R, just to mention a few.', 
  image:'event7.png', 
  date: Date.new(2023, 7, 11),
  venue:'Nairobi CBD, Nairobi, Kenya', 
  time:Time.parse('12:00:00'),
  admin_id: 5
)
Event.create!(
  name:'PostGIS and PostgreSQL course', 
  description:'PostGIS is a spatial database extender for PostgreSQL object-relational database. It adds support for geographic objects allowing location queries to be run in SQL.', 
  image:'event8.jpeg', 
  date: Date.new(2023, 8, 17),
  venue:' FineResults Research, Nairobi, Kenya', 
  time:Time.parse('11:00:00'),
  admin_id: 6
)
Event.create!(
  name:'International Conference on Science, Engineering & Technology', 
  description:'International Conference on Science, Engineering & Technology will provide an excellent international forum for sharing knowledge and result in Science, Engineering & Technology. The aim of the Conference is to provide a platform for researchers and practitioners from both academia as well as industry to meet the share cutting-edge development in the field.', 
  image:'event9.jpeg', 
  date: Date.new(2023, 8, 21),
  venue:'Radisson Blu Hotel Nairobi Upper Hill, Nairobi, Kenya', 
  time:'TBA',
  admin_id: 1
)
Event.create!(
  name:'Quantitative Data Management, Graphical Visualization and Statistical Analysis using R', 
  description:'This course is designed for participants who plan to use R for the management, coding, analysis and visualization of qualitative data. In this training you will learn how to use R for effective data management and analysis. The training is job oriented and covers practical issues in statistical computing which includes programming in R, reading data into R, accessing R packages, and organizing and manipulating data. Topics in statistical data analysis will provide working examples.', 
  image:'event10.jpeg', 
  date: Date.new(2023, 9, 9),
  venue:'Mombasa, Kenya', 
  time:'TBA',
  admin_id: 2
)


# Create projects seeds
moringa_funding = Project.create(
  name: 'Moringa School Funding',
  description: 'Support Moringa School students with tuition and other expenses',
  amount: 1000000,
  start_date: Date.today.next_month,
  end_date: Date.new(2023, 12, 31),
  admin_id: 1,
  paybill: 556459,
  acc_no: '00801051711810'
)

walkathon = Project.create(
  name: 'Walkathon',
  description: 'Join us for our annual walkathon to raise funds for charity',
  amount: 500000,
  start_date: Date.today.next_month,
  end_date: Date.new(2023, 11, 30),
  admin_id: 2,
  paybill: 7856458,
  acc_no: '00801051711810'
)

further_studies = Project.create(
  name: 'Further Studies Fund',
  description: 'Support students pursuing higher education and advanced tech courses in our programs',
  amount: 1500000,
  start_date: Date.today.next_month,
  end_date: Date.new(2024, 1, 31),
  admin_id: 3,
  paybill: 5782459,
  acc_no: '00801051711810' 
)

luncheon = Project.create(
  name: 'Luncheon',
  description: 'Have monthly luncheon with a guest speaker to discuss tech or the latest trends.',
  amount: 875000,
  start_date: Date.today.next_month,
  end_date: Date.new(2024, 1, 31),
  admin_id: 4
)

puts "done seeding...🌳🌳🌳"