# Table name: users

#  name            :text
#  email           :text
#  password_digest :string
#  phone           :text
#  user_type       :text

User.destroy_all
u1 = User.create(:name => 'Jack Stewart', :email => 'jack.stewart@gmail.com', :password => 'Jack', :phone => '0412345678', :user_type => 'Parent')
u2 = User.create(:name => 'Harry Sullivan', :email => 'harry.sullivan@yahoo.com', :password => 'Harry', :phone => '0432233222', :user_type => 'Parent')
u3 = User.create(:name => 'Sally Jensen', :email => 'sally.jensen@gmail.com', :password => 'Sally', :phone => '0412345678', :user_type => 'Parent')
u4 = User.create(:name => 'Patrick Jackson', :email => 'patrick.jackson@gmail.com', :password => 'Patrick', :phone => '0411223344', :user_type => 'Parent')
u5 = User.create(:name => 'Administrator', :email => 'manager1@gmail.com', :password => 'Manager1', :phone => '012345678', :user_type => 'Admin')

#Table name: instructors
#
#  name          :text
#  qualification :text
#  instrument    :text
#  description   :text
#  likes         :integer

Instructor.destroy_all
i1 = Instructor.create(:name => 'Norman Williams', :qualification => 'Bachelor of Arts', :instrument => 'Piano',:photo =>'https://d1qb2nb5cznatu.cloudfront.net/users/7428972-large?1517665435', :description => 'Norman completed his Bachelor degree in Piano in 2010 and has been teaching kids Piano since 2002. He is passionate about music education and has taught over 270 kids over the years.')
i2 = Instructor.create(:name => 'Annie McManus', :qualification => 'Master of Arts', :instrument => 'Guitar',:photo =>'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSI_nnYe7HiF4PSbW35Fh1lPope3pYbaOPo-dnkO7M7qQxC332IOg', :description => 'Annie completed her Masters degree in Guitar in 2012 and has been teaching kids Guitar and Ukulele since 2000. She loves Guitars and has a collection of over 30 guitars. She has taught over 320 kids over the years.')
i3 = Instructor.create(:name => 'Jhonnie Tran', :qualification => 'Master of Arts', :instrument => 'Piano',:photo =>'https://ccmcollege.com/wp-content/grand-media/image/thumb/Alessandro_Bertoni_-_03.jpg', :description => 'Jhonnie completed his Masters degree in Piano in 2017 and has been teaching kids Piano and Harpsichord since 2012. He is a part of Sydney Royal Orchestra and plays in a cover band in his spare time. He has taught over 50 kids over the years.')

# Table name: students
#
#  name          :text
#  phone         :text
#  dob           :date
#  instructor_id :integer
#  user_id       :integer

Student.destroy_all
s1 = Student.create(:name => 'Rod Stewart', :phone => '0412123123', :dob => '2012-02-22')
s2 = Student.create(:name => 'Mary Stewart', :phone => '0444123123', :dob => '2010-02-22')
s3 = Student.create(:name => 'Hercule Stewart', :phone => '0444111222', :dob => '2008-06-22')
s4 = Student.create(:name => 'Jane Sullivan', :phone => '0499999888', :dob => '2008-09-10')
s5 = Student.create(:name => 'Mark Sullivan', :phone => '0422334433', :dob => '2002-02-02')
s6 = Student.create(:name => 'Cindy Jensen', :phone => '042277554', :dob => '2006-11-22')
s7 = Student.create(:name => 'Luke Jensen', :phone => '043322221', :dob => '2007-02-28')
s9 = Student.create(:name => 'Susan Jackson', :phone => '049988776', :dob => '2001-12-22')
s10 = Student.create(:name => 'Andy Jackson', :phone => '0432123123', :dob => '2005-11-22')
s11 = Student.create(:name => 'Mark Jackson', :phone => '049988776', :dob => '2001-12-22')
s12 = Student.create(:name => 'Sirius Jackson', :phone => '0421234523', :dob => '2002-12-18')

# Table name: performances
#  student_id       :integer
#  performance_date :date
#  description      :text
#  media            :text

Performance.destroy_all
p1 = Performance.create(:performance_date => '2017-12-18',:name => 'Going Baroque',:description => 'The designs echo the busy ornate style of Baroque art and music characterized by great drama, rich, deep color, with intense light and dark shadows. A sense of delight permeates his performance of the Ravel waltzes; he digs into the scrunchy textures and lets the composers lime-and-soda harmonies fizz and gleam throughout this rhythm-driven yet never hurried interpretation. The challenge in the finale of the First Cello Sonata is to whip up a storm around the Bach-inspired fugue and rescue it from academicism. Here it is accurate and polite but doesn’t lift off the page.', :media => 'https://www.youtube.com/watch?v=yXOJVuF2tzI')
p2 = Performance.create(:performance_date => '2017-12-18',:name => 'Jive Turkey', :description => 'His Chopin Nocturne is cool and pure, the G minor Ballade refulgent with drama (though theres a moment of sound distortion in the coda, unfortunately); and the Andante spianato and grande polonaise has a mischievous flair that culminates in an unscheduled treble whoosh in the final bars – understandably, it brings the house down. Shame about the sound quality, which makes the recital sound much older than it is. But it’s still a concert to treasure, full of Rubinsteins unquenchable spirit.', :media => 'https://www.youtube.com/watch?v=rEGOihjqO9w')
p3 = Performance.create(:performance_date => '2017-12-18',:name => 'Warmy Starry Nights', :description => 'delivers interpretations that blend religious fervour with heady excitement, producing a conclusion that inspires without a hint of pomposity. This is a beguiling triptych of beautiful works from Marc-Andre Dalbavie. All three are inspired responses to material from former times, yet are unmistakably of the present. The Sonnets set texts by Louise Labe. Dalbavie has loved her 16th-century poems since his teens, but it was hearing Philippe Jaroussky sing that prompted this setting for countertenor, composed in 2008. Ukrainian Yuriy Mynenkos voice generally matches Dalbavies glistening textures with an intense clarity. A pity, then, that he has a slight rasp in a couple of mid-range notes, an especially noticeable trait in the enraptured stillness of Lut, compagnon de ma calamite.', :media => 'https://www.youtube.com/watch?v=_asI5WvGVQs')
p4 = Performance.create(:performance_date => '2018-01-18',:name => 'Dance  of the gnomes',:description => 'Dalbavie wrote the Trois chansons populaires for Mynenko to sing alongside the Sonnets, creating stylish settings for the three songs quoted by Debussy in his orchestral Images. They provide genial fun, even with Mynenkos (presumed) attempt at a Scottish accent for The Keel Row migrating across the Irish Sea and even the Atlantic. The mesmerising Sextine-Cyclus, composed in 2000, also reimagines songs from earlier centuries, and is beguilingly sung here by Jean-Paul Fouchecourt, whose recital of troubadour songs inspired the cycle in the first place.', :media => 'https://www.youtube.com/watch?v=2bFo65szAP0')
p5= Performance.create(:performance_date => '2018-01-18',:name => 'A wild chase', :description => 'The best performance here is an extraordinary rendition of the First Violin Sonata. Transferred to the cellos upper strings, and played with limpid elegance, its musing character is given an amplified radiance Id not heard before. Its puzzling, because Jonathan Aasgaards rather careful readings of the two Cello Sonatas never achieve that warmth or fluency. Roscoe contributes to this with his wonderfully clear and light, but sometimes self-effacing, playing. He seems too eager not to dominate Aasgard, rather to the detriment of the stormy character of these two great first movements, and especially the fiery scherzo of the F major Sonata and Forbess arrangement of the F-A-E Sonata. Theres a sense of holding back and playing safe when the music itself is going for broke.', :media => 'https://www.youtube.com/watch?v=YT_63UntRJE')

# Linking the tables
# Instructor links to students
i1.students << s1 << s2 << s7 << s9
i2.students << s3 << s4 << s5 << s6
i3.students << s10 << s11 << s12

# User (parent) links to students
u1.students << s1 << s2 << s3
u2.students << s4 << s5
u3.students << s7 << s6
u4.students << s9 << s10 << s11 << s12


# Student links to performances
s5.performances << p1 << p4
s1.performances << p2 << p5
s6.performances << p3
