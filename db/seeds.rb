require "open-uri"

puts "Cleaning database..."

Meeting.destroy_all
Message.destroy_all
Chat.destroy_all
LocallerActivity.destroy_all
Activity.destroy_all
Localler.destroy_all
User.destroy_all

puts "Creating activities..."
museum = Activity.create!(title: 'Museums & Galleries')
food = Activity.create!(title: 'Eating & Drinking')
shopping = Activity.create!(title: 'Shopping')
outdoors = Activity.create!(title: 'Sports and Outdoors')
nightlife = Activity.create!(title: 'Nightlife')
unique = Activity.create!(title: 'Unique experiences')
art = Activity.create!(title: 'Art & Culture')
history = Activity.create!(title: 'History & Heritage')

puts "Creating users..."

hiroshi_sato = User.create!(email: 'hiroshi.sato@locally.com', password: '123456', username: 'Hiroshi Sato', bio: "Art enthusiast from Tokyo who enjoys exploring unique art scenes and vibrant shopping districts.")
maria_oliveira = User.create!(email: 'maria.oliveira@locally.com', password: '123456', username: 'Maria Oliveira', bio: "Lover of nightlife from Rio de Janeiro, eager to show you the city's vibrant night scene and beautiful outdoors.")
elena_smirnova = User.create!(email: 'elena.smirnova@locally.com', password: '123456', username: 'Elena Smirnova', bio: "Museum aficionado from Moscow, passionate about art and history.")
sophie_martin = User.create!(email: 'sophie.martin@locally.com', password: '123456', username: 'Sophie Martin', bio: "Shopping expert from Paris, ready to guide you through the city's best boutiques and unique art galleries.")
giulia_rossi = User.create!(email: 'giulia.rossi@locally.com', password: '123456', username: 'Giulia Rossi', bio: "Food and wine lover from Rome, excited to share Italian culinary delights and the city's rich history.")
jack_wilson = User.create!(email: 'jack.wilson@locally.com', password: '123456', username: 'Jack Wilson', bio: "Outdoor enthusiast from Vancouver, passionate about nature and adventure.")
lucy_williams = User.create!(email: 'lucy.williams@locally.com', password: '123456', username: 'Lucy Williams', bio: "Art lover from New York, excited to explore the city's vibrant art scene and unique shopping experiences.")
miguel_garcia = User.create!(email: 'miguel.garcia@locally.com', password: '123456', username: 'Miguel Garcia', bio: "History enthusiast from Madrid who loves sharing stories about the city's past and its vibrant nightlife.")
guillaume = User.create!(email: 'guillaume@locally.com', password: '123456', username: 'Guillaume Verlooy', bio: "I'm a tech-savvy traveler, exploring the world while coding my way to new adventures.")
luk = User.create!(email: 'luk@locally.com', password: '123456', username: 'Luk Triquet', bio: "I combine my love for tech and travel, capturing journeys through innovative gadgets.")
mathieu = User.create!(email: 'mathieu@locally.com', password: '123456', username: 'Mathieu Heynen', bio: "As a digital nomad, I love discovering new places and the latest tech trends.")
aika = User.create!(email: 'aika@locally.com', password: '123456', username: 'Aika Balmukhanova', bio: "As a travel and tech enthusiast, I enjoy discovering new places with my favorite gadgets.")
pedro = User.create!(email: 'pedro@locally.com', password: '123456', username: 'Pedro Vilarinho', bio: "I merge my passion for travel with tech, sharing my experiences through cutting-edge devices.")
bruna = User.create!(email: 'bruna@locally.com', password: '123456', username: 'Bruna Caricio', bio: "I explore the world and tech, using innovative tools to document my travels.")
aude = User.create!(email: 'aude@locally.com', password: '123456', username: 'Aude Cordemans', bio: "I combine my tech-savvy skills and travel passion, capturing unique moments globally.")
kenta = User.create!(email: 'kenta@locally.com', password: '123456', username: 'Kenta Merry', bio: "A globetrotter and tech enthusiast, I find joy in tech innovations and new destinations.")
hugo = User.create!(email: 'hugo@locally.com', password: '123456', username: 'Hugo Nieuwenhuyse', bio:  "I travel the world with a backpack and the latest tech, always ready for the next adventure.")
caroline = User.create!(email: 'caroline@locally.com', password: '123456', username: 'Caroline Deuse', bio: "I'm a tech lover and travel enthusiast, exploring cultures with the newest gadgets in hand.")
emma_kim = User.create!(email: 'emma.kim@locally.com', password: '123456', username: 'Emma Kim', bio: "I am a food lover from Seoul, passionate about exploring the city's culinary delights and vibrant nightlife.")
li_mei = User.create!(email: 'li.mei@locally.com', password: '123456', username: 'Li Mei', bio: "A local history buff from Beijing, passionate about sharing the city's ancient stories and unique art.")
anna_schneider = User.create!(email: 'anna.schneider@locally.com', password: '123456', username: 'Anna Schneider', bio: "Art and history lover from Berlin, passionate about museums and vibrant nightlife.")
david_smith = User.create!(email: 'david.smith@locally.com', password: '123456', username: 'David Smith', bio: "Nightlife aficionado from London, ready to show you the best spots for an unforgettable night.")
isabelle_dubois = User.create!(email: 'isabelle.dubois@locally.com', password: '123456', username: 'Isabelle Dubois', bio: "Museum lover from Montreal, passionate about art and history.")
peter_johnson = User.create!(email: 'peter.johnson@locally.com', password: '123456', username: 'Peter Johnson', bio: "Outdoors enthusiast from Cape Town, passionate about nature and adventure sports.")
ana_mendez = User.create!(email: 'ana.mendez@locally.com', password: '123456', username: 'Ana Mendez', bio: "Food and nightlife enthusiast from Mexico City, excited to share the best of both worlds.")
john_clark = User.create!(email: 'john.clark@locally.com', password: '123456', username: 'John Clark', bio: "History and museum enthusiast from Washington D.C., eager to share the city's rich heritage.")
hannah_murphy = User.create!(email: 'hannah.murphy@locally.com', password: '123456', username: 'Hannah Murphy', bio: "Art and nightlife lover from Dublin, ready to show you the city's vibrant art scene and exciting night spots.")
yuki_tanaka = User.create!(email: 'yuki.tanaka@locally.com', password: '123456', username: 'Yuki Tanaka', bio: "Food and history enthusiast from Kyoto, passionate about sharing Japanese culture.")
michael_brown = User.create!(email: 'michael.brown@locally.com', password: '123456', username: 'Michael Brown', bio: "Outdoors enthusiast from Sydney, ready to take you on thrilling adventures.")
camila_silva = User.create!(email: 'camila.silva@locally.com', password: '123456', username: 'Camila Silva', bio: "Nightlife and shopping enthusiast from São Paulo, eager to show you the city's vibrant scene.")
pierre_dupont = User.create!(email: 'pierre.dupont@locally.com', password: '123456', username: 'Pierre Dupont', bio: "Food and history enthusiast from Bordeaux, passionate about sharing French culture and cuisine.")
sara_nilsson = User.create!(email: 'sara.nilsson@locally.com', password: '123456', username: 'Sara Nilsson', bio: "Museum and shopping lover from Stockholm, excited to share the city's cultural and retail gems.")
raj_patel = User.create!(email: 'raj.patel@locally.com', password: '123456', username: 'Raj Patel', bio: "History and food enthusiast from Mumbai, passionate about sharing the city's rich culture.")
julia_kovacs = User.create!(email: 'julia.kovacs@locally.com', password: '123456', username: 'Julia Kovacs', bio: "Art and museum lover from Budapest, eager to share the city's cultural treasures.")
diego_fernandez = User.create!(email: 'diego.fernandez@locally.com', password: '123456', username: 'Diego Fernandez', bio: "Outdoors and nightlife enthusiast from Barcelona, ready to show you the best of both worlds.")
nina_petrova = User.create!(email: 'nina.petrova@locally.com', password: '123456', username: 'Nina Petrova', bio: "History and museum lover from Saint Petersburg, excited to share the city's rich cultural heritage.")
liam_chen = User.create!(email: 'liam.chen@locally.com', password: '123456', username: 'Liam Chen', bio: "Food and shopping enthusiast from Taipei, eager to share the city's vibrant scene.")
sophie_tremblay = User.create!(email: 'sophie.tremblay@locally.com', password: '123456', username: 'Sophie Tremblay', bio: "Museum and history enthusiast from Quebec City, passionate about sharing the city's rich past.")
omar_al_farsi = User.create!(email: 'omar.al-farsi@locally.com', password: '123456', username: 'Omar Al-Farsi', bio: "Art and shopping lover from Dubai, eager to show you the city's luxury and culture.")
emily_clarke = User.create!(email: 'emily.clarke@locally.com', password: '123456', username: 'Emily Clarke', bio: "Outdoors and food enthusiast from Auckland, passionate about nature and local cuisine.")
laura_martinez = User.create!(email: 'laura.martinez@locally.com', password: '123456', username: 'Laura Martinez', bio: "Museum and history lover from Lima, excited to share the city's rich cultural heritage.")
robert_hall = User.create!(email: 'robert.hall@locally.com', password: '123456', username: 'Robert Hall', bio: "Nightlife and food enthusiast from Chicago, eager to show you the city's vibrant scene.")
anita_khan = User.create!(email: 'anita.khan@locally.com', password: '123456', username: 'Anita Khan', bio: "History and museum lover from Istanbul, passionate about sharing the city's rich past.")
kevin_lee = User.create!(email: 'kevin.lee@locally.com', password: '123456', username: 'Kevin Lee', bio: "Shopping and food enthusiast from Hong Kong, excited to show you the city's best spots.")
elena_romanov = User.create!(email: 'elena.romanov@locally.com', password: '123456', username: 'Elena Romanov', bio: "Art and museum enthusiast from Prague, eager to share the city's cultural treasures.")
james_wright = User.create!(email: 'james.wright@locally.com', password: '123456', username: 'James Wright', bio: "Outdoors and nightlife lover from San Francisco, passionate about the city's natural beauty and vibrant scene.")
amilia_rodriguez = User.create!(email: 'amilia.rodriguez@locally.com', password: '123456', username: 'Amilia Rodriguez', bio: "Food and nightlife lover from Buenos Aires, eager to show you the city's vibrant scene.")
alexander_ivankov = User.create!(email: 'alexander.ivankov@locally.com', password: '123456', username: 'Alexander Ivankov', bio: "History and art lover from Moscow, passionate about sharing Russian culture.")
sara_almeida = User.create!(email: 'sara.almeida@locally.com', password: '123456', username: 'Sara Almeida', bio: "Art and shopping enthusiast from Lisbon, eager to show you the city's cultural and retail gems.")
michael_schmidt = User.create!(email: 'michael.schmidt@locally.com', password: '123456', username: 'Michael Schmidt', bio: "Food and nightlife enthusiast from Berlin, eager to show you the city's vibrant scene.")
sophia_leblanc = User.create!(email: 'sophia.leblanc@locally.com', password: '123456', username: 'Sophia Leblanc', bio: "History and museum enthusiast from Paris, passionate about sharing French culture.")
muhammad_ali = User.create!(email: 'muhammad.ali@locally.com', password: '123456', username: 'Muhammad Ali', bio: "Outdoor enthusiast from Lahore, passionate about exploring nature.")
anna_kuznetsova = User.create!(email: 'anna.kuznetsova@locally.com', password: '123456', username: 'Anna Kuznetsova', bio: "Art and museum lover from St. Petersburg, eager to share the city's cultural treasures.")
olivia_andersson = User.create!(email: 'olivia.andersson@locally.com', password: '123456', username: 'Olivia Andersson', bio: "Food and nightlife lover from Stockholm, eager to show you the city's vibrant scene.")
lucas_rodriguez = User.create!(email: 'lucas.rodriguez@locally.com', password: '123456', username: 'Lucas Rodriguez', bio: "History and art lover from Madrid, passionate about sharing Spanish culture.")
anna_korhonen = User.create!(email: 'anna.korhonen@locally.com', password: '123456', username: 'Anna Korhonen', bio: "Outdoor enthusiast from Helsinki, passionate about exploring nature.")
juan_gomez = User.create!(email: 'juan.gomez@locally.com', password: '123456', username: 'Juan Gomez', bio: "Food and nightlife lover from Mexico City, eager to show you the city's vibrant scene.")
lucia_fernandez = User.create!(email: 'lucia.fernandez@locally.com', password: '123456', username: 'Lucia Fernandez', bio: "Art and shopping lover from Buenos Aires, excited to share the city's cultural and retail gems.")
viktor_petrov = User.create!(email: 'viktor.petrov@locally.com', password: '123456', username: 'Viktor Petrov', bio: "History and museum lover from Saint Petersburg, passionate about sharing the city's rich cultural heritage.")
lucia_santos = User.create!(email: 'lucia.santos@locally.com', password: '123456', username: 'Lucia Santos', bio: "Food and nightlife enthusiast from Rio de Janeiro, ready to show you the city's vibrant scene.")
alexander_mueller = User.create!(email: 'alexander.mueller@locally.com', password: '123456', username: 'Alexander Mueller', bio: "Art and museum enthusiast from Vienna, eager to share the city's cultural treasures.")
maria_gonzalez = User.create!(email: 'maria.gonzalez@locally.com', password: '123456', username: 'Maria Gonzalez', bio: "History and museum enthusiast from Madrid, passionate about sharing Spanish culture.")
sophie_lefebvre = User.create!(email: 'sophie.lefebvre@locally.com', password: '123456', username: 'Sophie Lefebvre', bio: "Outdoor enthusiast from Montreal, passionate about exploring nature.")
mohammed_ali = User.create!(email: 'mohammed.ali@locally.com', password: '123456', username: 'Mohammed Ali', bio: "Art and museum enthusiast from Cairo, eager to share the city's cultural treasures.")
lara_silva = User.create!(email: 'lara.silva@locally.com', password: '123456', username: 'Lara Silva', bio: "Food and nightlife enthusiast from Lisbon, eager to show you the city's vibrant scene.")
mikhail_ivanov = User.create!(email: 'mikhail.ivanov@locally.com', password: '123456', username: 'Mikhail Ivanov', bio: "History and art lover from Saint Petersburg, passionate about sharing Russian culture.")
anna_petrova = User.create!(email: 'anna.petrova@locally.com', password: '123456', username: 'Anna Petrova', bio: "Food and nightlife enthusiast from Moscow, eager to show you the city's vibrant scene.")
diego_santos = User.create!(email: 'diego.santos@locally.com', password: '123456', username: 'Diego Santos', bio: "Outdoor enthusiast from São Paulo, ready to show you the city's natural beauty.")
yusuf_ali = User.create!(email: 'yusuf.ali@locally.com', password: '123456', username: 'Yusuf Ali', bio: "Food and nightlife lover from Istanbul, ready to show you the city's vibrant scene.")
lucas_martinez = User.create!(email: 'lucas.martinez2@locally.com', password: '123456', username: 'lucas_martinezl', bio: "History and museum enthusiast from Mexico City, passionate about sharing the city's rich cultural heritage.")
elena_kuznetsova = User.create!(email: 'elena.kuznetsova@locally.com', password: '123456', username: 'Elena Kuznetsova', bio: "Outdoor enthusiast from Oslo, passionate about exploring nature.")
sofia_garcia = User.create!(email: 'sofia.garcia@locally.com', password: '123456', username: 'Sofia Garcia', bio: "Art and shopping lover from Barcelona, excited to share the city's cultural and retail gems.")
daniel_andersen = User.create!(email: 'daniel.andersen@locally.com', password: '123456', username: 'Daniel Andersen', bio: "History and museum enthusiast from Copenhagen, passionate about sharing Danish culture.")
ana_martinez = User.create!(email: 'ana.martinez@locally.com', password: '123456', username: 'Ana Martinez', bio: "Food and nightlife enthusiast from Madrid, eager to show you the city's vibrant scene.")
yulia_petrova = User.create!(email: 'yulia.petrova@locally.com', password: '123456', username: 'Yulia Petrova', bio: "Outdoor enthusiast from Vancouver, passionate about exploring nature.")
luca_rossi = User.create!(email: 'luca.rossi@locally.com', password: '123456', username: 'Luca Rossi', bio: "Art and museum enthusiast from Florence, eager to share the city's cultural treasures.")
isabella_conti = User.create!(email: 'isabella.conti@locally.com', password: '123456', username: 'Isabella Conti', bio: "Food and nightlife lover from Rome, eager to show you the city's vibrant scene.")
antonio_moreno = User.create!(email: 'antonio.moreno@locally.com', password: '123456', username: 'Antonio Moreno', bio: "History and museum enthusiast from Seville, passionate about sharing Spanish culture.")
marta_franco = User.create!(email: 'marta.franco@locally.com', password: '123456', username: 'Marta Franco', bio: "Outdoor enthusiast from Lisbon, passionate about exploring nature.")
mark_johnson = User.create!(email: 'mark.johnson@locally.com', password: '123456', username: 'Mark Johnson', bio: "Food and nightlife enthusiast from Toronto, ready to show you the city's vibrant scene.")
luciana_silva = User.create!(email: 'luciana.silva@locally.com', password: '123456', username: 'Luciana Silva', bio: "Art and shopping lover from São Paulo, excited to share the city's cultural and retail gems.")
giorgio_rossi = User.create!(email: 'giorgio.rossi@locally.com', password: '123456', username: 'Giorgio Rossi', bio: "History and museum enthusiast from Rome, passionate about sharing Italian culture.")
anna_kovacs = User.create!(email: 'anna.kovacs@locally.com', password: '123456', username: 'Anna Kovacs', bio: "Outdoor enthusiast from Budapest, passionate about exploring nature.")
gabriel_silva = User.create!(email: 'gabriel.silva@locally.com', password: '123456', username: 'Gabriel Silva', bio: "Food and nightlife lover from São Paulo, eager to show you the city's vibrant scene.")
emilia_rodriguez = User.create!(email: 'emilia.rodriguez@locally.com', password: '123456', username: 'Emilia Rodriguez', bio: "Art and museum enthusiast from Buenos Aires, eager to share the city's cultural treasures.")
pablo_lopez = User.create!(email: 'pablo.lopez@locally.com', password: '123456', username: 'Pablo Lopez', bio: "History and museum enthusiast from Madrid, passionate about sharing Spanish culture.")
elena_peterson = User.create!(email: 'elena.peterson@locally.com', password: '123456', username: 'Elena Peterson', bio: "Food and nightlife lover from Stockholm, eager to show you the city's vibrant scene.")
giovanni_ricci = User.create!(email: 'giovanni.ricci@locally.com', password: '123456', username: 'Giovanni Ricci', bio: "Art and museum enthusiast from Florence, eager to share the city's cultural treasures.")
maria_rodriguez = User.create!(email: 'maria.rodriguez@locally.com', password: '123456', username: 'maria_rodriguezl', bio: "Outdoor enthusiast from Rio de Janeiro, passionate about exploring nature.")
julia_schmidt = User.create!(email: 'julia.schmidt@locally.com', password: '123456', username: 'Julia Schmidt', bio: "Food and nightlife enthusiast from Berlin, ready to show you the city's vibrant scene.")
david_martinez = User.create!(email: 'david.martinez@locally.com', password: '123456', username: 'David Martinez', bio: "History and museum enthusiast from Mexico City, passionate about sharing the city's rich cultural heritage.")
joseph_wong = User.create!(email: 'joseph.wong@locally.com', password: '123456', username: 'Joseph Wong', bio: "Outdoor enthusiast from Hong Kong, passionate about exploring nature.")
anastasia_kuznetsova = User.create!(email: 'anastasia.kuznetsova@locally.com', password: '123456', username: 'Anastasia Kuznetsova', bio: "Art and shopping lover from Moscow, excited to share the city's cultural and retail gems.")
nicolas_leroy = User.create!(email: 'nicolas.leroy@locally.com', password: '123456', username: 'Nicolas Leroy', bio: "Food and nightlife enthusiast from Paris, ready to show you the city's vibrant scene.")
olga_ivanova = User.create!(email: 'olga.ivanova@locally.com', password: '123456', username: 'Olga Ivanova', bio: "History and museum enthusiast from St. Petersburg, passionate about sharing Russian culture.")
fabio_conti = User.create!(email: 'fabio.conti@locally.com', password: '123456', username: 'Fabio Conti', bio: "Outdoor enthusiast from Rome, passionate about exploring nature.")
carla_garcia = User.create!(email: 'carla.garcia@locally.com', password: '123456', username: 'Carla Garcia', bio: "Art and museum enthusiast from Barcelona, eager to share the city's cultural treasures.")
daniel_nguyen = User.create!(email: 'daniel.nguyen@locally.com', password: '123456', username: 'Daniel Nguyen', bio: "Food and nightlife lover from Ho Chi Minh City, eager to show you the city's vibrant scene.")
lucia_martinez = User.create!(email: 'lucia.martinez@locally.com', password: '123456', username: 'Lucia Martinez', bio: "History and museum enthusiast from Mexico City, passionate about sharing the city's rich cultural heritage.")
jakub_nowak = User.create!(email: 'jakub.nowak@locally.com', password: '123456', username: 'Jakub Nowak', bio: "Outdoor enthusiast from Kraków, passionate about exploring nature.")
anna_smith = User.create!(email: 'anna.smith@locally.com', password: '123456', username: 'Anna Smith', bio: "Food and nightlife enthusiast from New York City, ready to show you the city's vibrant scene.")
marco_rodriguez = User.create!(email: 'marco.rodriguez@locally.com', password: '123456', username: 'Marco Rodriguez', bio: "Art and museum enthusiast from Madrid, eager to share the city's cultural treasures.")
sophie_dubois = User.create!(email: 'sophie.dubois@locally.com', password: '123456', username: 'Sophie Dubois', bio: "History and museum enthusiast from Paris, passionate about sharing French culture.")
maximilian_mueller = User.create!(email: 'maximilian.mueller@locally.com', password: '123456', username: 'Maximilian Mueller', bio: "Food and nightlife enthusiast from Berlin, ready to show you the city's vibrant scene.")
olivia_anderson = User.create!(email: 'olivia.anderson@locally.com', password: '123456', username: 'Olivia Anderson', bio: "Outdoor enthusiast from Sydney, passionate about exploring nature.")
felipe_gomez = User.create!(email: 'felipe.gomez@locally.com', password: '123456', username: 'Felipe Gomez', bio: "Art and museum enthusiast from Mexico City, eager to share the city's cultural treasures.")
sara_müller = User.create!(email: 'sara.müller@locally.com', password: '123456', username: 'Sara Müller', bio: "Food and nightlife lover from Berlin, excited to show you the city's vibrant scene.")
leo_rodriguez = User.create!(email: 'leo.rodriguez@locally.com', password: '123456', username: 'Leo Rodriguez', bio: "History and museum enthusiast from Madrid, passionate about sharing Spanish culture.")
emily_wang = User.create!(email: 'emily.wang@locally.com', password: '123456', username: 'Emily Wang', bio: "Outdoor enthusiast from Vancouver, passionate about exploring nature.")
mikhail_smirnov = User.create!(email: 'mikhail.smirnov@locally.com', password: '123456', username: 'Mikhail Smirnov', bio: "Food and nightlife lover from Moscow, ready to show you the city's vibrant scene.")
anna_schnëider = User.create!(email: 'anna.schnëider@locally.com', password: '123456', username: 'Anna Schnëider', bio: "Art and museum enthusiast from Vienna, eager to share the city's cultural treasures.")
maria_rodrigueze = User.create!(email: 'maria.rodrigueze@locally.com', password: '123456', username: 'Maria Rodriguezle', bio: "Outdoor enthusiast from Buenos Aires, passionate about exploring nature.")
thomas_müller = User.create!(email: 'thomas.müller@locally.com', password: '123456', username: 'Thomas Müller', bio: "History and museum enthusiast from Berlin, eager to share the city's cultural treasures.")
sofia_fernandez = User.create!(email: 'sofia.fernandez@locally.com', password: '123456', username: 'Sofia Fernandez', bio: "Food and nightlife lover from Buenos Aires, ready to show you the city's vibrant scene.")
andreas_schmidt = User.create!(email: 'andreas.schmidt@locally.com', password: '123456', username: 'Andreas Schmidt', bio: "Outdoor enthusiast from Munich, passionate about exploring nature.")
laura_rodriguez = User.create!(email: 'laura.rodriguez@locally.com', password: '123456', username: 'Laura Rodriguez', bio: "Art and museum enthusiast from Barcelona, passionate about sharing Catalan culture.")
alexander_schneider = User.create!(email: 'alexander.schneider@locally.com', password: '123456', username: 'Alexander Schneider', bio: "Food and nightlife lover from Vienna, eager to show you the city's vibrant scene.")
juliana_silva = User.create!(email: 'juliana.silva@locally.com', password: '123456', username: 'Juliana Silva', bio: "History and museum enthusiast from São Paulo, passionate about sharing Brazilian culture.")
matteo_bianchi = User.create!(email: 'matteo.bianchi@locally.com', password: '123456', username: 'Matteo Bianchi', bio: "Outdoor enthusiast from Florence, passionate about exploring nature.")
elena_popova = User.create!(email: 'elena.popova@locally.com', password: '123456', username: 'Elena Popova', bio: "Art and museum enthusiast from Moscow, eager to share the city's cultural treasures.")

puts "Loading profile pics..."

avatar_hiroshi_sato = URI.open("https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww")
avatar_maria_oliveira = URI.open("https://plus.unsplash.com/premium_photo-1686777551229-d8eca134c66e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww")
avatar_elena_smirnova = URI.open("https://images.unsplash.com/photo-1525134479668-1bee5c7c6845?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww")
avatar_sophie_martin = URI.open("https://images.unsplash.com/photo-1526927071144-dbe4c41835e4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjcwfHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_giulia_rossi = URI.open("https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTR8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_jack_wilson = URI.open("https://images.unsplash.com/photo-1539571696357-5a69c17a67c6?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww")
avatar_lucy_williams = URI.open("https://images.unsplash.com/photo-1530785602389-07594beb8b73?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_miguel_garcia = URI.open("https://images.unsplash.com/photo-1500648767791-00dcc994a43e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww")
avatar_guillaume = URI.open("https://avatars.githubusercontent.com/u/166691058?v=4")
avatar_luk = URI.open("https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1713302532/jxs9twp0kbtmkk73nwbt.jpg")
avatar_mathieu = URI.open("https://avatars.githubusercontent.com/u/165482716?v=4")
avatar_aika = URI.open("https://avatars.githubusercontent.com/u/108080915?v=4")
avatar_pedro = URI.open("https://ca.slack-edge.com/T02NE0241-U01BPJHM02Y-9b833d9f20d1-512")
avatar_bruna = URI.open("https://avatars.githubusercontent.com/u/162796074?v=4")
avatar_aude = URI.open("https://avatars.githubusercontent.com/u/163596389?v=4")
avatar_kenta = URI.open("https://avatars.githubusercontent.com/u/166846379?v=4")
avatar_hugo = URI.open("https://avatars.githubusercontent.com/u/167010398?v=4")
avatar_caroline = URI.open("https://ca.slack-edge.com/T02NE0241-U06DUCQK8TB-fa9f85cfeeb9-512")
avatar_emma_kim = URI.open("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww")
avatar_li_mei = URI.open("https://avatars.githubusercontent.com/u/135339304?v=4")
avatar_anna_schneider = URI.open("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww")
avatar_david_smith = URI.open("https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww")
avatar_isabelle_dubois = URI.open("https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_peter_johnson = URI.open("https://images.unsplash.com/photo-1499996860823-5214fcc65f8f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_ana_mendez = URI.open("https://plus.unsplash.com/premium_photo-1689551670902-19b441a6afde?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_john_clark = URI.open("https://images.unsplash.com/photo-1485206412256-701ccc5b93ca?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_hannah_murphy = URI.open("https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_yuki_tanaka = URI.open("https://images.unsplash.com/photo-1492562080023-ab3db95bfbce?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjh8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_michael_brown = URI.open("https://plus.unsplash.com/premium_photo-1669879825881-6d4e4bde67d5?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjV8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_camila_silva = URI.open("https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjZ8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_pierre_dupont = URI.open("https://images.unsplash.com/photo-1496360166961-10a51d5f367a?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_sara_nilsson = URI.open("https://plus.unsplash.com/premium_photo-1664541336896-b3d5f7dec9a3?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzN8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_raj_patel = URI.open("https://images.unsplash.com/photo-1619194617062-5a61b9c6a049?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_julia_kovacs = URI.open("https://images.unsplash.com/photo-1517462964-21fdcec3f25b?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzV8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_diego_fernandez = URI.open("https://images.unsplash.com/photo-1506277886164-e25aa3f4ef7f?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzF8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_nina_petrova = URI.open("https://images.unsplash.com/photo-1490195117352-aa267f47f2d9?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzZ8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_liam_chen = URI.open("https://images.unsplash.com/photo-1489980557514-251d61e3eeb6?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzB8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_sophie_tremblay = URI.open("https://images.unsplash.com/photo-1519419691348-3b3433c4c20e?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDB8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_omar_al_farsi = URI.open("https://images.unsplash.com/photo-1501196354995-cbb51c65aaea?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzh8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_emily_clarke = URI.open("https://images.unsplash.com/photo-1496361001419-80f0d1be777a?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDZ8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_laura_martinez = URI.open("https://images.unsplash.com/photo-1508186225823-0963cf9ab0de?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTR8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_robert_hall = URI.open("https://images.unsplash.com/photo-1492447273231-0f8fecec1e3a?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDR8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_anita_khan = URI.open("https://images.unsplash.com/photo-1534528741775-53994a69daeb?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzl8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_kevin_lee = URI.open("https://images.unsplash.com/photo-1492447166138-50c3889fccb1?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDJ8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_elena_romanov = URI.open("https://images.unsplash.com/photo-1479936343636-73cdc5aae0c3?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTV8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_james_wright = URI.open("https://images.unsplash.com/photo-1521119989659-a83eee488004?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDd8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_amilia_rodriguez = URI.open("https://images.unsplash.com/photo-1534350131724-2a405f7108cb?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjB8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_alexander_ivankov = URI.open("https://images.unsplash.com/photo-1484688493527-670f98f9b195?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTB8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_sara_almeida = URI.open("https://images.unsplash.com/photo-1502767882403-636aee14f873?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTF8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_michael_schmidt = URI.open("https://images.unsplash.com/photo-1518799175676-a0fed7996acb?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDh8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_sophia_leblanc = URI.open("https://images.unsplash.com/photo-1485893086445-ed75865251e0?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjR8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_muhammad_ali = URI.open("https://images.unsplash.com/photo-1621352152645-61f4835b081b?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjN8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_anna_kuznetsova = URI.open("https://images.unsplash.com/photo-1522262590532-a991489a0253?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Njd8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_olivia_andersson = URI.open("https://images.unsplash.com/photo-1525186402429-b4ff38bedec6?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjV8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_lucas_rodriguez = URI.open("https://images.unsplash.com/photo-1488161628813-04466f872be2?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjJ8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_anna_korhonen = URI.open("https://images.unsplash.com/photo-1617315072157-5f1d3f55ddd3?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Njh8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_juan_gomez = URI.open("https://images.unsplash.com/photo-1621353269062-6aa0165576f2?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjZ8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_lucia_fernandez = URI.open("https://images.unsplash.com/photo-1465429167186-266ef03d6277?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NTZ8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_viktor_petrov = URI.open("https://images.unsplash.com/photo-1492446845049-9c50cc313f00?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzR8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_lucia_santos = URI.open("https://images.unsplash.com/photo-1535295972055-1c762f4483e5?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Njl8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_alexander_mueller = URI.open("https://images.unsplash.com/photo-1567186937675-a5131c8a89ea?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzN8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_maria_gonzalez = URI.open("https://images.unsplash.com/photo-1484863137850-59afcfe05386?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzV8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_sophie_lefebvre = URI.open("https://images.unsplash.com/photo-1469334031218-e382a71b716b?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nzd8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_mohammed_ali = URI.open("https://images.unsplash.com/photo-1622031093531-f4e641788763?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nzh8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_lara_silva = URI.open("https://images.unsplash.com/photo-1496360650824-229a83e340db?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nzl8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_mikhail_ivanov = URI.open("https://images.unsplash.com/photo-1489980869433-d1f7c7ac0fcf?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NzJ8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_anna_petrova = URI.open("https://images.unsplash.com/photo-1485178575877-1a13bf489dfe?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODB8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_diego_santos = URI.open("https://images.unsplash.com/photo-1474176857210-7287d38d27c6?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTB8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_yusuf_ali = URI.open("https://images.unsplash.com/photo-1492462543947-040389c4a66c?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODd8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_elena_kuznetsova = URI.open("https://images.unsplash.com/photo-1491349174775-aaafddd81942?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODN8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_sofia_garcia = URI.open("https://images.unsplash.com/photo-1486413869840-a99ac0a4c031?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODR8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_daniel_andersen = URI.open("https://images.unsplash.com/photo-1440133197387-5a6020d5ace2?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODF8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_yulia_petrova = URI.open("https://images.unsplash.com/photo-1509868918748-a554ad25f858?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8ODl8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_luca_rossi = URI.open("https://images.unsplash.com/photo-1473172707857-f9e276582ab6?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTAxfHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_isabella_conti = URI.open("https://images.unsplash.com/photo-1520466809213-7b9a56adcd45?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTN8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_marta_franco = URI.open("https://images.unsplash.com/photo-1504834636679-cd3acd047c06?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTV8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_mark_johnson = URI.open("https://images.unsplash.com/photo-1492567291473-fe3dfc175b45?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTA5fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_luciana_silva = URI.open("https://images.unsplash.com/photo-1496203695688-3b8985780d6a?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTA0fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_anna_kovacs = URI.open("https://images.unsplash.com/photo-1469460340997-2f854421e72f?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTA2fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_gabriel_silva = URI.open("https://images.unsplash.com/photo-1508341591423-4347099e1f19?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTEwfHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_emilia_rodriguez = URI.open("https://images.unsplash.com/photo-1458681708599-e0be9ce54707?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OTl8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_pablo_lopez = URI.open("https://images.unsplash.com/photo-1464746133101-a2c3f88e0dd9?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTE1fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_elena_peterson = URI.open("https://images.unsplash.com/photo-1531746020798-e6953c6e8e04?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTE3fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_giovanni_ricci = URI.open("https://images.unsplash.com/photo-1496346236646-50e985b31ea4?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTE0fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_maria_rodriguez = URI.open("https://images.unsplash.com/photo-1498551172505-8ee7ad69f235?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTE4fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_julia_schmidt = URI.open("https://images.unsplash.com/photo-1440589473619-3cde28941638?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTI3fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_david_martinez = URI.open("https://images.unsplash.com/photo-1492447216082-4726bf04d1d1?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTMyfHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_joseph_wong = URI.open("https://images.unsplash.com/photo-1540569014015-19a7be504e3a?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTMzfHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_anastasia_kuznetsova = URI.open("https://images.unsplash.com/photo-1502323777036-f29e3972d82f?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTI4fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_nicolas_leroy = URI.open("https://images.unsplash.com/photo-1482235225574-c37692835cf3?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTQ1fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_olga_ivanova = URI.open("https://images.unsplash.com/photo-1450297350677-623de575f31c?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTMxfHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3Dhttps://images.unsplash.com/photo-1453396450673-3fe83d2db2c4?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTQ4fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_fabio_conti = URI.open("https://images.unsplash.com/photo-1453396450673-3fe83d2db2c4?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTQ4fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_carla_garcia = URI.open("https://images.unsplash.com/photo-1542596594-649edbc13630?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTM2fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3Dhttps://images.unsplash.com/photo-1473531761844-5a14668fc8f8?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTUzfHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3Dhttps://images.unsplash.com/photo-1500917293891-ef795e70e1f6?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTM5fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_daniel_nguyen = URI.open("https://images.unsplash.com/photo-1473531761844-5a14668fc8f8?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTUzfHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3Dhttps://images.unsplash.com/photo-1500917293891-ef795e70e1f6?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTM5fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_lucia_martinez = URI.open("https://images.unsplash.com/photo-1500917293891-ef795e70e1f6?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTM5fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_jakub_nowak = URI.open("https://images.unsplash.com/photo-1513956589380-bad6acb9b9d4?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTY0fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_anna_smith = URI.open("https://images.unsplash.com/photo-1439402702863-6434b61e6392?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTQ0fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_marco_rodriguez = URI.open("https://images.unsplash.com/photo-1506634572416-48cdfe530110?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTYzfHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_sophie_dubois = URI.open("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww")
avatar_maximilian_mueller = URI.open("https://images.unsplash.com/photo-1496088941920-f7d451d95bf4?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTY4fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_olivia_anderson = URI.open("https://images.unsplash.com/photo-1517677129300-07b130802f46?q=80&w=870&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D")
avatar_felipe_gomez = URI.open("https://images.unsplash.com/photo-1531384441138-2736e62e0919?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTY2fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_sara_müller = URI.open("https://images.unsplash.com/photo-1544005313-94ddf0286df2?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTY5fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_leo_rodriguez = URI.open("https://images.unsplash.com/photo-1484517186945-df8151a1a871?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTcwfHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_emily_wang = URI.open("https://images.unsplash.com/photo-1482849297070-f4fae2173efe?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTc0fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_mikhail_smirnov = URI.open("https://images.unsplash.com/photo-1485528562718-2ae1c8419ae2?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTg0fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_anna_schnëider = URI.open("https://images.unsplash.com/photo-1509783236416-c9ad59bae472?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTcxfHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_maria_rodrigueze = URI.open("https://images.unsplash.com/photo-1492814580460-1f9a2a463cfe?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTg4fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_thomas_müller = URI.open("https://images.unsplash.com/photo-1485893226355-9a1c32a0c81e?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTc2fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_sofia_fernandez = URI.open("https://images.unsplash.com/photo-1487573884658-a5d3c667584e?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTgzfHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_andreas_schmidt = URI.open("https://images.unsplash.com/photo-1476903930099-d0ddfec9a475?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTc4fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_laura_rodriguez = URI.open("https://images.unsplash.com/photo-1580489944761-15a19d654956?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjUyfHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_alexander_schneider = URI.open("https://images.unsplash.com/photo-1568602471122-7832951cc4c5?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjE3fHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_juliana_silva = URI.open("https://images.unsplash.com/photo-1480914362564-9f2c2634e266?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjIwfHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_matteo_bianchi = URI.open("https://images.unsplash.com/photo-1521151716396-b2da27b1a19f?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjAwfHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_elena_popova = URI.open("https://images.unsplash.com/photo-1445384763658-0400939829cd?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTkxfHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_lucas_martinez = URI.open("https://images.unsplash.com/photo-1521151716396-b2da27b1a19f?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjAwfHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_ana_martinez = URI.open("https://images.unsplash.com/photo-1445384763658-0400939829cd?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTkxfHxyYW5kb20lMjBwZW9wbGV8ZW58MHx8MHx8fDA%3D")
avatar_antonio_moreno = URI.open("https://images.unsplash.com/photo-1518799175676-a0fed7996acb?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDh8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")
avatar_giorgio_rossi = URI.open("https://images.unsplash.com/photo-1518799175676-a0fed7996acb?w=400&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDh8fHJhbmRvbSUyMHBlb3BsZXxlbnwwfHwwfHx8MA%3D%3D")

emma_kim.profile_picture.attach(io: avatar_emma_kim, filename: "emma_kim.png", content_type: "image/png")
li_mei.profile_picture.attach(io: avatar_li_mei, filename: "li_mei.png", content_type: "image/png")
hiroshi_sato.profile_picture.attach(io: avatar_hiroshi_sato, filename: "hiroshi_sato.png", content_type: "image/png")
maria_oliveira.profile_picture.attach(io: avatar_maria_oliveira, filename: "maria_oliveira.png", content_type: "image/png")
elena_smirnova.profile_picture.attach(io: avatar_elena_smirnova, filename: "elena_smirnova.png", content_type: "image/png")
sophie_martin.profile_picture.attach(io: avatar_sophie_martin, filename: "sophie_martin.png", content_type: "image/png")
giulia_rossi.profile_picture.attach(io: avatar_giulia_rossi, filename: "giulia_rossi.png", content_type: "image/png")
jack_wilson.profile_picture.attach(io: avatar_jack_wilson, filename: "jack_wilson.png", content_type: "image/png")
guillaume.profile_picture.attach(io: avatar_guillaume, filename: "guy.png", content_type: "image/png")
luk.profile_picture.attach(io: avatar_luk, filename: "luk.jpg", content_type: "image/jpg")
mathieu.profile_picture.attach(io: avatar_mathieu, filename: "mathieu.jpg", content_type: "image/jpg")
aika.profile_picture.attach(io: avatar_aika, filename: "aika.png", content_type: "image/png")
pedro.profile_picture.attach(io: avatar_pedro, filename: "pedro.png", content_type: "image/png")
bruna.profile_picture.attach(io: avatar_bruna, filename: "bruna.png", content_type: "image/png")
aude.profile_picture.attach(io: avatar_aude, filename: "aude.png", content_type: "image/png")
kenta.profile_picture.attach(io: avatar_kenta, filename: "kenta.png", content_type: "image/png")
hugo.profile_picture.attach(io: avatar_hugo, filename: "hugo.png", content_type: "image/png")
caroline.profile_picture.attach(io: avatar_caroline, filename: "caroline.png", content_type: "image/png")
lucy_williams.profile_picture.attach(io: avatar_lucy_williams, filename: "lucy_williams.png", content_type: "image/png")
miguel_garcia.profile_picture.attach(io: avatar_miguel_garcia, filename: "miguel_garcia.png", content_type: "image/png")
anna_schneider.profile_picture.attach(io: avatar_anna_schneider, filename: "anna_schneider.png", content_type: "image/png")
david_smith.profile_picture.attach(io: avatar_david_smith, filename: "david_smith.png", content_type: "image/png")
isabelle_dubois.profile_picture.attach(io: avatar_isabelle_dubois, filename: "isabelle_dubois.png", content_type: "image/png")
peter_johnson.profile_picture.attach(io: avatar_peter_johnson, filename: "peter_johnson.png", content_type: "image/png")
ana_mendez.profile_picture.attach(io: avatar_ana_mendez, filename: "ana_mendez.png", content_type: "image/png")
john_clark.profile_picture.attach(io: avatar_john_clark, filename: "john_clark.png", content_type: "image/png")
hannah_murphy.profile_picture.attach(io: avatar_hannah_murphy, filename: "hannah_murphy.png", content_type: "image/png")
yuki_tanaka.profile_picture.attach(io: avatar_yuki_tanaka, filename: "yuki_tanaka.png", content_type: "image/png")
michael_brown.profile_picture.attach(io: avatar_michael_brown, filename: "michael_brown.png", content_type: "image/png")
camila_silva.profile_picture.attach(io: avatar_camila_silva, filename: "camila_silva.png", content_type: "image/png")
pierre_dupont.profile_picture.attach(io: avatar_pierre_dupont, filename: "pierre_dupont.png", content_type: "image/png")
sara_nilsson.profile_picture.attach(io: avatar_sara_nilsson, filename: "sara_nilsson.png", content_type: "image/png")
raj_patel.profile_picture.attach(io: avatar_raj_patel, filename: "raj_patel.png", content_type: "image/png")
julia_kovacs.profile_picture.attach(io: avatar_julia_kovacs, filename: "julia_kovacs.png", content_type: "image/png")
diego_fernandez.profile_picture.attach(io: avatar_diego_fernandez, filename: "diego_fernandez.png", content_type: "image/png")
nina_petrova.profile_picture.attach(io: avatar_nina_petrova, filename: "nina_petrova.png", content_type: "image/png")
liam_chen.profile_picture.attach(io: avatar_liam_chen, filename: "liam_chen.png", content_type: "image/png")
sophie_tremblay.profile_picture.attach(io: avatar_sophie_tremblay, filename: "sophie_tremblay.png", content_type: "image/png")
omar_al_farsi.profile_picture.attach(io: avatar_omar_al_farsi, filename: "omar_al_farsi.png", content_type: "image/png")
emily_clarke.profile_picture.attach(io: avatar_emily_clarke, filename: "emily_clarke.png", content_type: "image/png")
laura_martinez.profile_picture.attach(io: avatar_laura_martinez, filename: "laura_martinez.png", content_type: "image/png")
robert_hall.profile_picture.attach(io: avatar_robert_hall, filename: "robert_hall.png", content_type: "image/png")
anita_khan.profile_picture.attach(io: avatar_anita_khan, filename: "anita_khan.png", content_type: "image/png")
kevin_lee.profile_picture.attach(io: avatar_kevin_lee, filename: "kevin_lee.png", content_type: "image/png")
elena_romanov.profile_picture.attach(io: avatar_elena_romanov, filename: "elena_romanov.png", content_type: "image/png")
james_wright.profile_picture.attach(io: avatar_james_wright, filename: "james_wright.png", content_type: "image/png")
amilia_rodriguez.profile_picture.attach(io: avatar_amilia_rodriguez, filename: "amilia_rodriguez.png", content_type: "image/png")
alexander_ivankov.profile_picture.attach(io: avatar_alexander_ivankov, filename: "alexander_ivankov.png", content_type: "image/png")
sara_almeida.profile_picture.attach(io: avatar_sara_almeida, filename: "sara_almeida.png", content_type: "image/png")
michael_schmidt.profile_picture.attach(io: avatar_michael_schmidt, filename: "michael_schmidt.png", content_type: "image/png")
sophia_leblanc.profile_picture.attach(io: avatar_sophia_leblanc, filename: "sophia_leblanc.png", content_type: "image/png")
muhammad_ali.profile_picture.attach(io: avatar_muhammad_ali, filename: "muhammad_ali.png", content_type: "image/png")
anna_kuznetsova.profile_picture.attach(io: avatar_anna_kuznetsova, filename: "anna_kuznetsova.png", content_type: "image/png")
olivia_andersson.profile_picture.attach(io: avatar_olivia_andersson, filename: "olivia_andersson.png", content_type: "image/png")
lucas_rodriguez.profile_picture.attach(io: avatar_lucas_rodriguez, filename: "lucas_rodriguez.png", content_type: "image/png")
anna_korhonen.profile_picture.attach(io: avatar_anna_korhonen, filename: "anna_korhonen.png", content_type: "image/png")
juan_gomez.profile_picture.attach(io: avatar_juan_gomez, filename: "juan_gomez.png", content_type: "image/png")
lucia_fernandez.profile_picture.attach(io: avatar_lucia_fernandez, filename: "lucia_fernandez.png", content_type: "image/png")
viktor_petrov.profile_picture.attach(io: avatar_viktor_petrov, filename: "viktor_petrov.png", content_type: "image/png")
lucia_santos.profile_picture.attach(io: avatar_lucia_santos, filename: "lucia_santos.png", content_type: "image/png")
alexander_mueller.profile_picture.attach(io: avatar_alexander_mueller, filename: "alexander_mueller.png", content_type: "image/png")
maria_gonzalez.profile_picture.attach(io: avatar_maria_gonzalez, filename: "maria_gonzalez.png", content_type: "image/png")
sophie_lefebvre.profile_picture.attach(io: avatar_sophie_lefebvre, filename: "sophie_lefebvre.png", content_type: "image/png")
mohammed_ali.profile_picture.attach(io: avatar_mohammed_ali, filename: "mohammed_ali.png", content_type: "image/png")
lara_silva.profile_picture.attach(io: avatar_lara_silva, filename: "lara_silva.png", content_type: "image/png")
mikhail_ivanov.profile_picture.attach(io: avatar_mikhail_ivanov, filename: "mikhail_ivanov.png", content_type: "image/png")
anna_petrova.profile_picture.attach(io: avatar_anna_petrova, filename: "anna_petrova.png", content_type: "image/png")
diego_santos.profile_picture.attach(io: avatar_diego_santos, filename: "diego_santos.png", content_type: "image/png")
yusuf_ali.profile_picture.attach(io: avatar_yusuf_ali, filename: "yusuf_ali.png", content_type: "image/png")
elena_kuznetsova.profile_picture.attach(io: avatar_elena_kuznetsova, filename: "elena_kuznetsova.png", content_type: "image/png")
sofia_garcia.profile_picture.attach(io: avatar_sofia_garcia, filename: "sofia_garcia.png", content_type: "image/png")
daniel_andersen.profile_picture.attach(io: avatar_daniel_andersen, filename: "daniel_andersen.png", content_type: "image/png")
yulia_petrova.profile_picture.attach(io: avatar_yulia_petrova, filename: "yulia_petrova.png", content_type: "image/png")
luca_rossi.profile_picture.attach(io: avatar_luca_rossi, filename: "luca_rossi.png", content_type: "image/png")
isabella_conti.profile_picture.attach(io: avatar_isabella_conti, filename: "isabella_conti.png", content_type: "image/png")
marta_franco.profile_picture.attach(io: avatar_marta_franco, filename: "marta_franco.png", content_type: "image/png")
mark_johnson.profile_picture.attach(io: avatar_mark_johnson, filename: "mark_johnson.png", content_type: "image/png")
luciana_silva.profile_picture.attach(io: avatar_luciana_silva, filename: "luciana_silva.png", content_type: "image/png")
anna_kovacs.profile_picture.attach(io: avatar_anna_kovacs, filename: "anna_kovacs.png", content_type: "image/png")
gabriel_silva.profile_picture.attach(io: avatar_gabriel_silva, filename: "gabriel_silva.png", content_type: "image/png")
emilia_rodriguez.profile_picture.attach(io: avatar_emilia_rodriguez, filename: "emilia_rodriguez.png", content_type: "image/png")
pablo_lopez.profile_picture.attach(io: avatar_pablo_lopez, filename: "pablo_lopez.png", content_type: "image/png")
elena_peterson.profile_picture.attach(io: avatar_elena_peterson, filename: "elena_peterson.png", content_type: "image/png")
giovanni_ricci.profile_picture.attach(io: avatar_giovanni_ricci, filename: "giovanni_ricci.png", content_type: "image/png")
maria_rodriguez.profile_picture.attach(io: avatar_maria_rodriguez, filename: "maria_rodriguez.png", content_type: "image/png")
julia_schmidt.profile_picture.attach(io: avatar_julia_schmidt, filename: "julia_schmidt.png", content_type: "image/png")
david_martinez.profile_picture.attach(io: avatar_david_martinez, filename: "david_martinez.png", content_type: "image/png")
joseph_wong.profile_picture.attach(io: avatar_joseph_wong, filename: "joseph_wong.png", content_type: "image/png")
anastasia_kuznetsova.profile_picture.attach(io: avatar_anastasia_kuznetsova, filename: "anastasia_kuznetsova.png", content_type: "image/png")
nicolas_leroy.profile_picture.attach(io: avatar_nicolas_leroy, filename: "nicolas_leroy.png", content_type: "image/png")
olga_ivanova.profile_picture.attach(io: avatar_olga_ivanova, filename: "olga_ivanova.png", content_type: "image/png")
fabio_conti.profile_picture.attach(io: avatar_fabio_conti, filename: "fabio_conti.png", content_type: "image/png")
carla_garcia.profile_picture.attach(io: avatar_carla_garcia, filename: "carla_garcia.png", content_type: "image/png")
daniel_nguyen.profile_picture.attach(io: avatar_daniel_nguyen, filename: "daniel_nguyen.png", content_type: "image/png")
lucia_martinez.profile_picture.attach(io: avatar_lucia_martinez, filename: "caroline.png", content_type: "image/png")
jakub_nowak.profile_picture.attach(io: avatar_jakub_nowak, filename: "lucia_martinez.png", content_type: "image/png")
anna_smith.profile_picture.attach(io: avatar_anna_smith, filename: "anna_smith.png", content_type: "image/png")
marco_rodriguez.profile_picture.attach(io: avatar_marco_rodriguez, filename: "marco_rodriguez.png", content_type: "image/png")
sophie_dubois.profile_picture.attach(io: avatar_sophie_dubois, filename: "sophie_dubois.png", content_type: "image/png")
maximilian_mueller.profile_picture.attach(io: avatar_maximilian_mueller, filename: "maximilian_mueller.png", content_type: "image/png")
olivia_anderson.profile_picture.attach(io: avatar_olivia_anderson, filename: "olivia_anderson.png", content_type: "image/png")
felipe_gomez.profile_picture.attach(io: avatar_felipe_gomez, filename: "felipe_gomez.png", content_type: "image/png")
sara_müller.profile_picture.attach(io: avatar_sara_müller, filename: "sara_müller.png", content_type: "image/png")
leo_rodriguez.profile_picture.attach(io: avatar_leo_rodriguez, filename: "leo_rodriguez.png", content_type: "image/png")
emily_wang.profile_picture.attach(io: avatar_emily_wang, filename: "emily_wang.png", content_type: "image/png")
mikhail_smirnov.profile_picture.attach(io: avatar_mikhail_smirnov, filename: "mikhail_smirnov.png", content_type: "image/png")
anna_schnëider.profile_picture.attach(io: avatar_anna_schnëider, filename: "anna_schnëider.png", content_type: "image/png")
maria_rodrigueze.profile_picture.attach(io: avatar_maria_rodrigueze, filename: "maria_rodrigueze.png", content_type: "image/png")
thomas_müller.profile_picture.attach(io: avatar_thomas_müller, filename: "thomas_müller.png", content_type: "image/png")
sofia_fernandez.profile_picture.attach(io: avatar_sofia_fernandez, filename: "sofia_fernandez.png", content_type: "image/png")
andreas_schmidt.profile_picture.attach(io: avatar_andreas_schmidt, filename: "andreas_schmidt.png", content_type: "image/png")
laura_rodriguez.profile_picture.attach(io: avatar_laura_rodriguez, filename: "laura_rodriguez.png", content_type: "image/png")
alexander_schneider.profile_picture.attach(io: avatar_alexander_schneider, filename: "alexander_schneider.png", content_type: "image/png")
juliana_silva.profile_picture.attach(io: avatar_juliana_silva, filename: "juliana_silva.png", content_type: "image/png")
matteo_bianchi.profile_picture.attach(io: avatar_matteo_bianchi, filename: "matteo_bianchi.png", content_type: "image/png")
elena_popova.profile_picture.attach(io: avatar_elena_popova, filename: "elena_popova.png", content_type: "image/png")
lucas_martinez.profile_picture.attach(io: avatar_lucas_martinez, filename: "lucas_martinez.png", content_type: "image/png")
ana_martinez.profile_picture.attach(io: avatar_ana_martinez, filename: "ana_martinez.png", content_type: "image/png")
antonio_moreno.profile_picture.attach(io: avatar_antonio_moreno, filename: "antonio_moren.png", content_type: "image/png")
giorgio_rossi.profile_picture.attach(io: avatar_giorgio_rossi, filename: "giorgio_rossi.png", content_type: "image/png")


hiroshi_sato.save
maria_oliveira.save
elena_smirnova.save
sophie_martin.save
giulia_rossi.save
jack_wilson.save
lucy_williams.save
miguel_garcia.save
guillaume.save
luk.save
mathieu.save
aika.save
pedro.save
bruna.save
aude.save
kenta.save
hugo.save
caroline.save
emma_kim.save
li_mei.save
anna_schneider.save
david_smith.save
isabelle_dubois.save
peter_johnson.save
ana_mendez.save
john_clark.save
hannah_murphy.save
yuki_tanaka.save
michael_brown.save
camila_silva.save
pierre_dupont.save
sara_nilsson.save
raj_patel.save
julia_kovacs.save
diego_fernandez.save
nina_petrova.save
liam_chen.save
sophie_tremblay.save
omar_al_farsi.save
emily_clarke.save
laura_martinez.save
robert_hall.save
anita_khan.save
kevin_lee.save
elena_romanov.save
james_wright.save
amilia_rodriguez.save
alexander_ivankov.save
sara_almeida.save
michael_schmidt.save
sophia_leblanc.save
muhammad_ali.save
anna_kuznetsova.save
olivia_andersson.save
lucas_rodriguez.save
anna_korhonen.save
juan_gomez.save
lucia_fernandez.save
viktor_petrov.save
lucia_santos.save
alexander_mueller.save
maria_gonzalez.save
sophie_lefebvre.save
mohammed_ali.save
lara_silva.save
mikhail_ivanov.save
anna_petrova.save
diego_santos.save
yusuf_ali.save
elena_kuznetsova.save
sofia_garcia.save
daniel_andersen.save
yulia_petrova.save
luca_rossi.save
isabella_conti.save
marta_franco.save
mark_johnson.save
luciana_silva.save
anna_kovacs.save
gabriel_silva.save
emilia_rodriguez.save
pablo_lopez.save
elena_peterson.save
giovanni_ricci.save
maria_rodriguez.save
julia_schmidt.save
david_martinez.save
joseph_wong.save
anastasia_kuznetsova.save
nicolas_leroy.save
olga_ivanova.save
fabio_conti.save
carla_garcia.save
daniel_nguyen.save
lucia_martinez.save
jakub_nowak.save
anna_smith.save
marco_rodriguez.save
sophie_dubois.save
maximilian_mueller.save
olivia_anderson.save
felipe_gomez.save
sara_müller.save
leo_rodriguez.save
emily_wang.save
mikhail_smirnov.save
anna_schnëider.save
maria_rodrigueze.save
thomas_müller.save
sofia_fernandez.save
andreas_schmidt.save
laura_rodriguez.save
alexander_schneider.save
juliana_silva.save
matteo_bianchi.save
elena_popova.save
lucas_martinez.save
ana_martinez.save
antonio_moreno.save
giorgio_rossi.save

puts "Creating locallers..."

pedrol = Localler.create!(description: "Hi, I'm Pedro from Bilbao. I love combining outdoor adventures with art and food. Let me take you on a journey through Bilbao's stunning landscapes, vibrant art scene, and delectable cuisine. Whether it's a hike in the mountains or a visit to the Guggenheim, followed by tasting pintxos, you'll get a taste of the best Bilbao has to offer.", availability: false, location: 'Bilbao', user: pedro)
yuki_tanakal = Localler.create!(description: "Kyoto is the heart of traditional Japan. Join me to savor the best of Japanese cuisine and explore historic temples and gardens that showcase our rich cultural heritage.", availability: true, location: "Shijo-dori, Kyoto, Japan", user: yuki_tanaka)
peter_johnsonl = Localler.create!(description: "Cape Town offers breathtaking natural beauty and adventure sports. Join me to explore Table Mountain, go hiking, surfing, and more for an unforgettable outdoor experience.", availability: true, location: "Long Street, Cape Town, South Africa", user: peter_johnson)
brunal = Localler.create!(description: "Hello, I'm Bruna from Madrid. Shopping and the great outdoors are my passions. I'll take you to the best shopping districts and then unwind with outdoor activities in Madrid's beautiful parks. Experience the hustle and bustle of the city and the tranquility of nature, all in one day with me as your guide. Let's explore Madrid's unique blend of urban and natural beauty.", availability: true, location: 'Madrid', user: bruna)
sophie_martinl = Localler.create!(description: "Paris is a shopper's paradise and a hub for art lovers. Join me to explore high-end fashion stores, charming boutiques, hidden markets, and unique art galleries where you can find unique items and great deals.", availability: true, location: "Champs-Élysées, Paris, France", user: sophie_martin)
audel = Localler.create!(description: "Olá, I'm Aude from Lisbon. My heart beats for art and food. Discover Lisbon's artistic heritage through its galleries and street art, and savor the delicious local cuisine with me. From traditional dishes to modern culinary delights, I know where to find the best eats. Join me for an artistic and gastronomic adventure in the charming streets of Lisbon.", availability: true, location: 'Lisbon', user: aude)
kental = Localler.create!(description: "Hi, I'm Kenta from Berlin. If you're looking to dive into Berlin's legendary nightlife and food scene, look no further. I'll guide you through the best clubs, bars, and food spots in the city. From trendy street food markets to upscale dining, followed by an unforgettable night out, Berlin's vibrant energy awaits you. Let's explore the city's dynamic culture together.", availability: true, location: 'Berlin', user: kenta)
hugol = Localler.create!(description: "Hallo, I'm Hugo from Amsterdam. As a fan of shopping and history, I can show you the best of both worlds in this amazing city. Discover Amsterdam's rich history through its museums and historical sites, and enjoy a shopping spree in its trendy boutiques. With me, you'll get to experience the city's unique charm and vibrant past while indulging in some retail therapy.", availability: true, location: 'Amsterdam', user: hugo)
carolinel = Localler.create!(description: "Hi, I'm Caroline from London. I adore museums and food, and I can't wait to share London's treasures with you. From world-class museums to hidden culinary gems, I'll guide you through the best experiences the city has to offer. Whether you're a history buff or a foodie, you'll love exploring London with me. Let's make your visit truly unforgettable.", availability: true, location: 'London', user: caroline)
li_meil = Localler.create!(description: "Beijing is a city where the past meets the present. Let me take you through the historic sites, including the Forbidden City and the Great Wall, and explore unique art galleries that reveal the stories that shaped our culture.", availability: false, location: "Chang'an Avenue, Beijing, China", user: li_mei)
hiroshi_satol = Localler.create!(description: "Tokyo is a hub for contemporary and traditional art. Join me to explore hidden art galleries, vibrant street art, and bustling shopping districts for a truly unique experience.", availability: true, location: "Ginza, Tokyo, Japan", user: hiroshi_sato)
maria_oliveiral = Localler.create!(description: "Experience the excitement of Rio's nightlife and beautiful outdoors! From samba clubs to beach parties and scenic hikes, I'll guide you through the best spots to enjoy music, dance, and nature.", availability: true, location: "Copacabana, Rio de Janeiro, Brazil", user: maria_oliveira)
elena_smirnoval = Localler.create!(description: "Explore Moscow's rich cultural heritage with me. We'll visit the top museums, including the State Historical Museum and the Tretyakov Gallery, and dive deep into Russian art and history.", availability: false, location: "Arbat Street, Moscow, Russia", user: elena_smirnova)
guillaumel = Localler.create!(description: "Hello, I'm Guillaume from Brussels. As a passionate food lover and museum enthusiast, I enjoy exploring the culinary delights and rich art history of this beautiful city. Join me for a day of museum-hopping and taste the best of Belgian cuisine. I can guide you through hidden gems and share fascinating stories behind the art and food scenes in Brussels.", availability: true, location: 'Brussels', user: guillaume)
giulia_rossil = Localler.create!(description: "Join me in Rome to savor the best Italian food and wine and explore the city's rich history. From local trattorias to famous restaurants and historic sites, I'll ensure you have a delicious and memorable experience.", availability: true, location: "Via del Corso, Rome, Italy", user: giulia_rossi)
jack_wilsonl = Localler.create!(description: "Vancouver is a paradise for nature lovers. Join me for an adventure through its stunning parks, mountains, and coastline, offering the best outdoor activities and breathtaking views.", availability: true, location: "Granville Street, Vancouver, Canada", user: jack_wilson)
lucy_williamsl = Localler.create!(description: "New York is a mecca for art enthusiasts and shoppers. Let me show you the best art galleries, street art, museums, and unique shopping spots, including the iconic MoMA and MET.", availability: false, location: "Broadway, New York, USA", user: lucy_williams)
miguel_garcial = Localler.create!(description: "Madrid is rich in history and culture. Let me take you on a journey through its historic sites like the Royal Palace and the Prado Museum, and show you the vibrant nightlife for an unforgettable experience.", availability: true, location: "Gran Via, Madrid, Spain", user: miguel_garcia)
anna_schneiderl = Localler.create!(description: "Berlin is a treasure trove of art and history with a vibrant nightlife. Join me to explore its renowned museums and galleries, including the Pergamon Museum and the East Side Gallery, and enjoy the city's vibrant night scene.", availability: true, location: "Unter den Linden, Berlin, Germany", user: anna_schneider)
david_smithl = Localler.create!(description: "London's nightlife is second to none. Let me guide you through the best pubs, clubs, and music venues for a moment to remember. Discovering the locals party place is my pleasure.", availability: false, location: "Piccadilly, London, UK", user: david_smith)
isabelle_duboisl = Localler.create!(description: "Montreal is a city rich in art and history. Join me to explore its top museums, including the Montreal Museum of Fine Arts and the Pointe-à-Callière Museum, and dive into the city's vibrant cultural scene.", availability: true, location: "Saint Catherine Street, Montreal, Canada", user: isabelle_dubois)
ana_mendezl = Localler.create!(description: "Mexico City is a paradise for foodies and night owls. Let me guide you through its vibrant street food scene, top restaurants, and lively nightspots for an unforgettable experience.", availability: true, location: " Reforma Avenue, Mexico City, Mexico", user: ana_mendez)
lukl = Localler.create!(description: "Hi, I'm Luk from Paris. I have a deep love for art and the outdoors. Whether it's a stroll through the city's iconic parks or a visit to lesser-known art galleries, I'm here to make your Paris experience unique and memorable. Let me show you the artistic soul of Paris, combined with refreshing outdoor activities that will give you a perfect blend of culture and nature.", availability: true, location: 'Paris', user: luk)
john_clarkl = Localler.create!(description: "Washington D.C. is a city steeped in history and culture. Join me to explore the Smithsonian museums, monuments, and historic sites that tell the story of America's past.", availability: true, location: "Independence Avenue, Washington D.C., USA", user: john_clark)
hannah_murphyl = Localler.create!(description: "Dublin is alive with art and nightlife. Let's explore its vibrant galleries, street art, and lively pubs and clubs for an unforgettable experience.", availability: false, location: "Temple Bar, Dublin, Ireland", user: hannah_murphy)
michael_brownl = Localler.create!(description: "Sydney offers stunning natural landscapes and thrilling outdoor activities. Let's explore the beaches, national parks, and enjoy activities like surfing, hiking, and more.", availability: true, location: "Bondi Beach, Sydney, Australia", user: michael_brown)
camila_silval = Localler.create!(description: "São Paulo is known for its vibrant nightlife and shopping. Join me to explore the best clubs, bars, and shopping districts for an exciting experience.", availability: true, location: "Avenida Paulista, São Paulo, Brazil", user: camila_silva)
pierre_dupontl = Localler.create!(description: "Bordeaux is famous for its wine, food, and history. Let me guide you through the best wine tasting experiences, gourmet restaurants, and historic sites in this beautiful city.", availability: true, location: "Rue Sainte-Catherine, Bordeaux, France", user: pierre_dupont)
mathieul = Localler.create!(description: "Ciao, I'm Mathieu from Rome. If you're looking to experience the best of Roman shopping and nightlife, I'm your guide. I know all the chic boutiques and the hottest spots in town for an unforgettable night out. Join me for a day of retail therapy followed by an evening of vibrant nightlife, where ancient history meets modern fun.", availability: true, location: 'Rome', user: mathieu)
sara_nilssonl = Localler.create!(description: "Stockholm offers a mix of culture and modernity. Join me to explore top museums, like the Vasa Museum, and discover the best shopping spots in this beautiful city.", availability: true, location: "Drottninggatan, Stockholm, Sweden", user: sara_nilsson)
raj_patell = Localler.create!(description: "Mumbai is a melting pot of cultures and cuisines. Join me to explore its historic sites, vibrant street food, and hidden gems that make this city unique.", availability: true, location: "Marine Drive, Mumbai, India", user: raj_patel)
julia_kovacsl = Localler.create!(description: "Budapest is a city rich in art and history. Let's explore its top museums, including the Hungarian National Gallery, and discover unique art galleries and historic sites.", availability: true, location: "Andrássy Avenue, Budapest, Hungary", user: julia_kovacs)
diego_fernandezl = Localler.create!(description: "Barcelona is perfect for outdoor adventures and vibrant nightlife. Join me to explore beautiful beaches, parks, and enjoy the best clubs and bars in the city.", availability: false, location: "La Rambla, Barcelona, Spain", user: diego_fernandez)
nina_petroval = Localler.create!(description: "Saint Petersburg is a treasure trove of history and culture. Join me to explore its magnificent museums, including the Hermitage, and historic sites that tell the story of this grand city.", availability: true, location: "Nevsky Prospect, Saint Petersburg, Russia", user: nina_petrova)
liam_chenl = Localler.create!(description: "Taipei is a food lover's paradise and a shopper's dream. Join me to explore the best night markets, gourmet restaurants, and bustling shopping districts.", availability: true, location: "Zhongxiao East Road, Taipei, Taiwan", user: liam_chen)
sophie_tremblayl = Localler.create!(description: "Quebec City is full of history and charm. Join me to explore its historic sites, such as the Old City and Citadelle, and visit the best museums to learn about our rich cultural heritage.", availability: true, location: "Rue Saint-Jean, Quebec City, Canada", user: sophie_tremblay)
omar_al_farsil = Localler.create!(description: "Dubai is a city of luxury and culture. Let me guide you through its top art galleries, iconic shopping malls, and unique cultural experiences for a truly memorable visit.", availability: true, location: "Sheikh Zayed Road, Dubai, UAE", user: omar_al_farsi)
emily_clarkel = Localler.create!(description: "Auckland is a paradise for nature lovers and foodies. Join me to explore stunning parks, beautiful beaches, and enjoy delicious local cuisine for an unforgettable experience.", availability: true, location: "Queen Street, Auckland, New Zealand", user: emily_clarke)
aikal = Localler.create!(description: "Hola, I'm Aika from Barcelona. With a passion for history and nightlife, I can show you the most fascinating historical sites during the day and the best nightlife spots by night. Barcelona's rich cultural heritage and lively nightlife scene are at your fingertips with me as your guide. Discover the secrets of this amazing city and party like a local.", availability: true, location: 'Barcelona', user: aika)
laura_martinezl = Localler.create!(description: "Lima is a city rich in history and culture. Let's explore its top museums, including the Larco Museum, and historic sites that reveal the story of this vibrant city.", availability: true, location: "Miraflores, Lima, Peru", user: laura_martinez)
robert_halll = Localler.create!(description: "Chicago offers a vibrant nightlife and amazing food. Join me to explore the best bars, clubs, and restaurants for an unforgettable experience in the Windy City.", availability: true, location: "Michigan Avenue, Chicago, USA", user: robert_hall)
anita_khanl = Localler.create!(description: "Istanbul is a city where East meets West. Join me to explore its historic sites, such as the Hagia Sophia and Topkapi Palace, and visit top museums to learn about our rich cultural heritage.", availability: true, location: "Sultanahmet, Istanbul, Turkey", user: anita_khan)
kevin_leel = Localler.create!(description: "Hong Kong is a shopper's paradise and a food lover's dream. Join me to explore the best shopping districts and savor delicious local cuisine for a memorable experience.", availability: true, location: "Nathan Road, Hong Kong, China", user: kevin_lee)
elena_romanovl = Localler.create!(description: "Prague is a city rich in art and history. Let's explore its top museums, like the National Gallery, and discover unique art galleries and historic sites that tell the story of this beautiful city.", availability: true, location: "Charles Bridge, Prague, Czech Republic", user: elena_romanov)
emma_kiml = Localler.create!(description: "Welcome to Seoul! Join me in experiencing the rich culinary heritage of Korea and enjoying its vibrant nightlife. From street food to high-end restaurants and lively nightspots, I will guide you through a memorable journey.", availability: true, location: "Itaewon-ro, Seoul, South Korea", user: emma_kim)
james_wrightl = Localler.create!(description: "San Francisco offers stunning natural beauty and vibrant nightlife. Join me to explore its parks, scenic views, and enjoy the best clubs and bars for an unforgettable experience.", availability: true, location: "Market Street, San Francisco, USA", user: james_wright)
amilia_rodriguezl = Localler.create!(description: "Buenos Aires is famous for its delicious food and vibrant nightlife. Let me guide you through the best restaurants, bars, and clubs for an unforgettable experience.", availability: true, location: "Palermo, Buenos Aires, Argentina", user: amilia_rodriguez)
alexander_ivankovl = Localler.create!(description: "Moscow is a city steeped in history and art. Join me to explore its iconic landmarks, such as the Kremlin and Red Square, and discover the rich cultural heritage of Russia.", availability: false, location: "Tverskaya Street, Moscow, Russia", user: alexander_ivankov)
sara_almeidal = Localler.create!(description: "Lisbon is a city full of charm and culture. Let me guide you through its historic neighborhoods, vibrant art scene, and unique shopping districts for an unforgettable experience.", availability: true, location: "Baixa, Lisbon, Portugal", user: sara_almeida)
michael_schmidtl = Localler.create!(description: "Berlin is a city that never sleeps, with a vibrant food and nightlife scene. Let me guide you through its diverse culinary offerings and lively bars and clubs.", availability: false, location: "Friedrichstraße, Berlin, Germany", user: michael_schmidt)
sophia_leblancl = Localler.create!(description: "Paris is a city rich in history and art. Let me guide you through its iconic landmarks, such as the Louvre and Notre-Dame, and discover the rich cultural heritage of France.", availability: true, location: "Rue de Rivoli, Paris, France", user: sophia_leblanc)
muhammad_alil = Localler.create!(description: "Lahore offers breathtaking natural beauty and outdoor adventures. Join me to explore its parks, gardens, and scenic spots for an unforgettable experience.", availability: true, location: "Mall Road, Lahore, Pakistan", user: muhammad_ali)
anna_kuznetsoval = Localler.create!(description: "St. Petersburg is a city rich in art and history. Let me guide you through its world-class museums, stunning architecture, and vibrant cultural scene.", availability: true, location: "Nevsky Prospect, St. Petersburg, Russia", user: anna_kuznetsova)
olivia_anderssonl = Localler.create!(description: "Stockholm is a city of culinary delights and vibrant nightlife. Let me guide you through its diverse restaurants, bars, and clubs for an unforgettable experience.", availability: true, location: "Södermalm, Stockholm, Sweden", user: olivia_andersson)
lucas_rodriguezl = Localler.create!(description: "Madrid is a city rich in history and art. Let me guide you through its historic neighborhoods, world-class museums, and vibrant cultural scene.", availability: false, location: "Gran Vía, Madrid, Spain", user: lucas_rodriguez)
anna_korhonenl = Localler.create!(description: "Helsinki offers stunning natural landscapes and outdoor activities. Join me to explore its parks, forests, and scenic waterfront for an unforgettable experience.", availability: true, location: "Esplanadi, Helsinki, Finland", user: anna_korhonen)
juan_gomezl = Localler.create!(description: "Mexico City is a paradise for foodies and night owls. Let me guide you through its vibrant street food scene, top restaurants, and lively nightspots for an unforgettable experience.", availability: false, location: "Reforma Avenue, Mexico City, Mexico", user: juan_gomez)
lucia_fernandezl = Localler.create!(description: "Buenos Aires is a hub of art and culture. Let me guide you through its vibrant art scene, from street art to world-class galleries, and explore the best shopping districts for unique finds.", availability: true, location: "Recoleta, Buenos Aires, Argentina", user: lucia_fernandez)
viktor_petrovl = Localler.create!(description: "Saint Petersburg is a treasure trove of history and culture. Join me to explore its magnificent museums, including the Hermitage, and historic sites that tell the story of this grand city.", availability: true, location: "Nevsky Prospect, Saint Petersburg, Russia", user: viktor_petrov)
lucia_santosl = Localler.create!(description: "Rio de Janeiro is a city of samba, sun, and delicious cuisine. Let me guide you through its best restaurants, bars, and street food stalls for an unforgettable culinary journey.", availability: true, location: "Copacabana Beach, Rio de Janeiro, Brazil", user: lucia_santos)
alexander_muellerl = Localler.create!(description: "Vienna is a city rich in art and history. Let me guide you through its world-class museums, stunning architecture, and vibrant cultural scene.", availability: true, location: "Ringstraße, Vienna, Austria", user: alexander_mueller)
maria_gonzalezl = Localler.create!(description: "Madrid is a city rich in history and art. Let me guide you through its historic neighborhoods, world-class museums, and vibrant cultural scene.", availability: false, location: "Gran Vía, Madrid, Spain", user: maria_gonzalez)
sophie_lefebvrel = Localler.create!(description: "Montreal offers stunning outdoor experiences, from hiking in Mount Royal Park to kayaking in the Lachine Canal. Join me for an adventure in the heart of nature.", availability: true, location: "Mount Royal Avenue, Montreal, Canada", user: sophie_lefebvre)
mohammed_alil = Localler.create!(description: "Cairo is a city steeped in history and culture. Let me guide you through its ancient landmarks, such as the Pyramids of Giza and the Egyptian Museum, and discover the rich heritage of Egypt.", availability: true, location: "Tahrir Square, Cairo, Egypt", user: mohammed_ali)
lara_silval = Localler.create!(description: "Lisbon is a city of culinary delights and vibrant nightlife. Let me guide you through its diverse restaurants, bars, and clubs for an unforgettable experience.", availability: true, location: "Bairro Alto, Lisbon, Portugal", user: lara_silva)
mikhail_ivanovl = Localler.create!(description: "St. Petersburg is a city rich in history and art. Let me guide you through its world-class museums, stunning architecture, and vibrant cultural scene.", availability: true, location: "Nevsky Prospect, Saint Petersburg, Russia", user: mikhail_ivanov)
anna_petroval = Localler.create!(description: "Moscow is a city that never sleeps, with a vibrant food and nightlife scene. Let me guide you through its diverse culinary offerings and lively bars and clubs.", availability: true, location: "Arbat Street, Moscow, Russia", user: anna_petrova)
diego_santosl = Localler.create!(description: "São Paulo offers breathtaking natural beauty and outdoor activities. Join me to explore its parks, gardens, and scenic spots for an unforgettable outdoor adventure.", availability: false, location: "Ibirapuera Park, São Paulo, Brazil", user: diego_santos)
yusuf_alil = Localler.create!(description: "Istanbul is a city of flavors and rhythms. Let me guide you through its diverse culinary offerings and lively nightlife spots for an unforgettable experience.", availability: true, location: "Istiklal Avenue, Istanbul, Turkey", user: yusuf_ali)
lucas_martinezl = Localler.create!(description: "Mexico City is a treasure trove of history and culture. Join me to explore its magnificent museums, archaeological sites, and historic neighborhoods that tell the story of Mexico.", availability: true, location: "Zocalo, Mexico City, Mexico", user: lucas_martinez)
elena_kuznetsoval = Localler.create!(description: "Oslo offers stunning outdoor experiences, from hiking in Nordmarka forest to sailing in Oslofjord. Join me for an adventure in the heart of nature.", availability: false, location: "Karl Johans Gate, Oslo, Norway", user: elena_kuznetsova)
sofia_garcial = Localler.create!(description: "Barcelona is a city of art and culture. Let me guide you through its vibrant art scene, from iconic landmarks like the Sagrada Familia to hidden art galleries in the Gothic Quarter.", availability: true, location: "Passeig de Gràcia, Barcelona, Spain", user: sofia_garcia)
daniel_andersenl = Localler.create!(description: "Copenhagen is a city rich in history and culture. Let me guide you through its historic landmarks, fascinating museums, and vibrant cultural scene.", availability: true, location: "Strøget, Copenhagen, Denmark", user: daniel_andersen)
ana_martinezl = Localler.create!(description: "Madrid is a city that never sleeps, with a vibrant food and nightlife scene. Let me guide you through its diverse culinary offerings and lively bars and clubs.", availability: true, location: "Puerta del Sol, Madrid, Spain", user: ana_martinez)
yulia_petroval = Localler.create!(description: "Vancouver offers breathtaking outdoor experiences, from hiking in the North Shore mountains to kayaking in False Creek. Join me for an adventure in the heart of nature.", availability: true, location: "Stanley Park Drive, Vancouver, Canada", user: yulia_petrova)
luca_rossil = Localler.create!(description: "Florence is a city rich in art and history. Let me guide you through its world-renowned museums, stunning architecture, and timeless masterpieces.", availability: true, location: "Piazza della Signoria, Florence, Italy", user: luca_rossi)
isabella_contil = Localler.create!(description: "Rome is a city of culinary delights and vibrant nightlife. Let me guide you through its diverse restaurants, bars, and trattorias for an unforgettable experience.", availability: false, location: "Via del Corso, Rome, Italy", user: isabella_conti)
antonio_morenol = Localler.create!(description: "Seville is a city steeped in history and culture. Let me guide you through its majestic palaces, ancient monuments, and world-class museums.", availability: true, location: "Plaza de España, Seville, Spain", user: antonio_moreno)
marta_francol = Localler.create!(description: "Lisbon offers stunning outdoor experiences, from hiking in Sintra-Cascais Natural Park to surfing in Costa da Caparica. Join me for an adventure in the heart of nature.", availability: true, location: "Parque das Nações, Lisbon, Portugal", user: marta_franco)
mark_johnsonl = Localler.create!(description: "Toronto is a melting pot of cuisines and cultures, with a vibrant food scene and lively nightlife. Let me guide you through its diverse neighborhoods and culinary hotspots.", availability: true, location: "Queen Street West, Toronto, Canada", user: mark_johnson)
luciana_silval = Localler.create!(description: "São Paulo is a hub of art and culture. Let me guide you through its vibrant art scene, from street art to world-class galleries, and explore the best shopping districts for unique finds.", availability: true, location: "Avenida Paulista, São Paulo, Brazil", user: luciana_silva)
giorgio_rossil = Localler.create!(description: "Rome is a city rich in history and art. Let me guide you through its historic landmarks, world-class museums, and iconic monuments that tell the story of Italy.", availability: true, location: "Via dei Fori Imperiali, Rome, Italy", user: giorgio_rossi)
anna_kovacsl = Localler.create!(description: "Budapest offers stunning outdoor experiences, from hiking in the Buda Hills to cruising on the Danube River. Join me for an adventure in the heart of nature.", availability: true, location: "Andrassy Avenue, Budapest, Hungary", user: anna_kovacs)
gabriel_silval = Localler.create!(description: "São Paulo is a paradise for foodies and partygoers. Let me guide you through its diverse culinary scene and vibrant nightlife for an unforgettable experience.", availability: true, location: "Rua Augusta, São Paulo, Brazil", user: gabriel_silva)
emilia_rodriguezl = Localler.create!(description: "Buenos Aires is a city rich in art and history. Let me guide you through its world-class museums, stunning architecture, and vibrant cultural scene.", availability: false, location: "Avenida de Mayo, Buenos Aires, Argentina", user: emilia_rodriguez)
pablo_lopezl = Localler.create!(description: "Madrid is a treasure trove of history and culture. Let me guide you through its historic landmarks, fascinating museums, and vibrant cultural scene.", availability: true, location: "Calle Mayor, Madrid, Spain", user: pablo_lopez)
elena_petersonl = Localler.create!(description: "Stockholm is a city of culinary delights and vibrant nightlife. Let me guide you through its diverse restaurants, bars, and clubs for an unforgettable experience.", availability: true, location: "Drottninggatan, Stockholm, Sweden", user: elena_peterson)
giovanni_riccil = Localler.create!(description: "Florence is a city steeped in art and culture. Let me guide you through its world-renowned museums, stunning architecture, and timeless masterpieces.", availability: true, location: "Ponte Vecchio, Florence, Italy", user: giovanni_ricci)
maria_rodriguezl = Localler.create!(description: "Rio de Janeiro offers breathtaking outdoor experiences, from hiking in Tijuca National Park to surfing in Copacabana. Join me for an adventure in the heart of nature.", availability: true, location: "Copacabana Beach, Rio de Janeiro, Brazil", user: maria_rodriguez)
julia_schmidtl = Localler.create!(description: "Berlin is a city that never sleeps, with a vibrant food and nightlife scene. Let me guide you through its diverse culinary offerings and lively bars and clubs.", availability: false, location: "Kurfürstendamm, Berlin, Germany", user: julia_schmidt)
david_martinezl = Localler.create!(description: "Mexico City is a treasure trove of history and culture. Join me to explore its magnificent museums, archaeological sites, and historic neighborhoods that tell the story of Mexico.", availability: true, location: "Zocalo, Mexico City, Mexico", user: david_martinez)
joseph_wongl = Localler.create!(description: "Hong Kong offers stunning outdoor experiences, from hiking in the New Territories to kayaking in Sai Kung. Join me for an adventure in the heart of nature.", availability: true, location: "Victoria Peak, Hong Kong", user: joseph_wong)
anastasia_kuznetsoval = Localler.create!(description: "Moscow is a hub of art and culture. Let me guide you through its vibrant art scene, from street art to world-class galleries, and explore the best shopping districts for unique finds.", availability: true, location: "Arbat Street, Moscow, Russia", user: anastasia_kuznetsova)
nicolas_leroyl = Localler.create!(description: "Paris is a city of gastronomic delights and vibrant nightlife. Let me guide you through its diverse culinary offerings and lively bars and clubs for an unforgettable experience.", availability: true, location: "Belleville, Paris, France", user: nicolas_leroy)
olga_ivanoval = Localler.create!(description: "St. Petersburg is a city rich in history and culture. Let me guide you through its magnificent museums, stunning architecture, and vibrant cultural scene.", availability: false, location: "Nevsky Prospect, St. Petersburg, Russia", user: olga_ivanova)
fabio_contil = Localler.create!(description: "Rome offers stunning outdoor experiences, from exploring ancient ruins to hiking in the nearby hills. Join me for an adventure in the heart of nature.", availability: true, location: "Piazza di Spagna, Rome, Italy", user: fabio_conti)
carla_garcial = Localler.create!(description: "Barcelona is a city rich in art and culture. Let me guide you through its world-class museums, stunning architecture, and vibrant cultural scene.", availability: true, location: "Gothic Quarter, Barcelona, Spain", user: carla_garcia)
daniel_nguyenl = Localler.create!(description: "Ho Chi Minh City is a paradise for foodies and night owls. Let me guide you through its vibrant street food scene, top restaurants, and lively nightspots for an unforgettable experience.", availability: true, location: "Dong Khoi Street, Ho Chi Minh City, Vietnam", user: daniel_nguyen)
lucia_martinezl = Localler.create!(description: "Mexico City is a treasure trove of history and culture. Join me to explore its magnificent museums, archaeological sites, and historic neighborhoods that tell the story of Mexico.", availability: true, location: "Reforma Avenue, Mexico City, Mexico", user: lucia_martinez)
jakub_nowakl = Localler.create!(description: "Kraków offers stunning outdoor experiences, from hiking in the Tatra Mountains to exploring the Wieliczka Salt Mine. Join me for an adventure in the heart of nature.", availability: true, location: "Main Market Square, Kraków, Poland", user: jakub_nowak)
anna_smithl = Localler.create!(description: "New York City is a melting pot of cuisines and cultures, with a vibrant food scene and lively nightlife. Let me guide you through its diverse neighborhoods and culinary hotspots.", availability: true, location: "Times Square, New York City, USA", user: anna_smith)
marco_rodriguezl = Localler.create!(description: "Madrid is a hub of art and culture. Let me guide you through its vibrant art scene, from street art to world-class galleries, and explore the best shopping districts for unique finds.", availability: true, location: "Prado Museum, Madrid, Spain", user: marco_rodriguez)
sophie_duboisl = Localler.create!(description: "Paris is a city rich in history and culture. Let me guide you through its magnificent museums, stunning architecture, and vibrant cultural scene.", availability: true, location: "Montmartre, Paris, France", user: sophie_dubois)
maximilian_muellerl = Localler.create!(description: "Berlin is a city that never sleeps, with a vibrant food and nightlife scene. Let me guide you through its diverse culinary offerings and lively bars and clubs.", availability: true, location: "Friedrichstraße, Berlin, Germany", user: maximilian_mueller)
olivia_andersonl = Localler.create!(description: "Sydney offers stunning outdoor experiences, from coastal walks to bushland trails. Join me for an adventure in the heart of nature.", availability: true, location: "Bondi Beach, Sydney, Australia", user: olivia_anderson)
felipe_gomezl = Localler.create!(description: "Mexico City is a treasure trove of art and culture. Let me guide you through its vibrant art scene, from contemporary galleries to historic murals.", availability: true, location: "Bellas Artes, Mexico City, Mexico", user: felipe_gomez)
sara_müllerl = Localler.create!(description: "Berlin is a melting pot of cuisines and cultures. Let me guide you through its diverse food scene, from traditional German dishes to international delights.", availability: true, location: "Alexanderplatz, Berlin, Germany", user: sara_müller)
leo_rodriguezl = Localler.create!(description: "Madrid is a city steeped in history and culture. Let me guide you through its historic landmarks, fascinating museums, and vibrant cultural scene.", availability: true, location: "Plaza Mayor, Madrid, Spain", user: leo_rodriguez)
emily_wangl = Localler.create!(description: "Vancouver offers breathtaking outdoor experiences, from hiking in the mountains to kayaking in the ocean. Join me for an adventure in the heart of nature.", availability: true, location: "Granville Island, Vancouver, Canada", user: emily_wang)
mikhail_smirnovl = Localler.create!(description: "Moscow is a city that never sleeps, with a vibrant food and nightlife scene. Let me guide you through its diverse culinary offerings and lively bars and clubs.", availability: true, location: "Red Square, Moscow, Russia", user: mikhail_smirnov)
anna_schnëiderl = Localler.create!(description: "Vienna is a city rich in art and culture. Let me guide you through its world-class museums, stunning architecture, and vibrant cultural scene.", availability: true, location: "Ringstrasse, Vienna, Austria", user: anna_schnëider)
maria_rodriguezel = Localler.create!(description: "Buenos Aires offers stunning outdoor experiences, from exploring ecological reserves to horseback riding in the countryside. Join me for an adventure in the heart of nature.", availability: true, location: "Palermo, Buenos Aires, Argentina", user: maria_rodrigueze)
thomas_müllerl = Localler.create!(description: "Berlin is a city rich in history and culture. Let me guide you through its fascinating museums, historic landmarks, and vibrant arts scene.", availability: true, location: "Checkpoint Charlie, Berlin, Germany", user: thomas_müller)
sofia_fernandezl = Localler.create!(description: "Buenos Aires is a paradise for foodies and partygoers. Let me guide you through its diverse culinary scene and vibrant nightlife for an unforgettable experience.", availability: true, location: "Palermo Soho, Buenos Aires, Argentina", user: sofia_fernandez)
andreas_schmidtl = Localler.create!(description: "Munich offers stunning outdoor experiences, from hiking in the Alps to cycling along the Isar River. Join me for an adventure in the heart of Bavaria.", availability: true, location: "Englischer Garten, Munich, Germany", user: andreas_schmidt)
laura_rodriguezl = Localler.create!(description: "Barcelona is a city rich in art and culture. Let me guide you through its world-class museums, stunning architecture, and vibrant cultural scene.", availability: false, location: "Park Güell, Barcelona, Spain", user: laura_rodriguez)
alexander_schneiderl = Localler.create!(description: "Vienna is a city of culinary delights and vibrant nightlife. Let me guide you through its diverse restaurants, bars, and cafés for an unforgettable dining experience.", availability: false, location: "Naschmarkt, Vienna, Austria", user: alexander_schneider)
juliana_silval = Localler.create!(description: "São Paulo is a city rich in history and culture. Let me guide you through its historic landmarks, fascinating museums, and vibrant cultural scene.", availability: true, location: "Liberdade, São Paulo, Brazil", user: juliana_silva)
matteo_bianchil = Localler.create!(description: "Florence offers breathtaking outdoor experiences, from hiking in the hills to cycling along the Arno River. Join me for an adventure in the heart of Tuscany.", availability: true, location: "Piazzale Michelangelo, Florence, Italy", user: matteo_bianchi)
elena_popoval = Localler.create!(description: "Moscow is a hub of art and culture. Let me guide you through its vibrant art scene, from contemporary galleries to historic museums, and explore the best shopping districts for unique finds.", availability: false, location: "Tretyakov Gallery, Moscow, Russia", user: elena_popova)


puts "Creating localler_activities..."

localler_activities = [

  { localler: hiroshi_satol, activity: art },
  { localler: hiroshi_satol, activity: shopping },
  { localler: hiroshi_satol, activity: food },
  { localler: maria_oliveiral, activity: nightlife },
  { localler: maria_oliveiral, activity: outdoors },
  { localler: maria_oliveiral, activity: food },
  { localler: maria_oliveiral, activity: shopping },
  { localler: elena_smirnoval, activity: museum },
  { localler: elena_smirnoval, activity: history },
  { localler: elena_smirnoval, activity: art },
  { localler: elena_smirnoval, activity: shopping },
  { localler: sophie_martinl, activity: shopping },
  { localler: sophie_martinl, activity: art },
  { localler: sophie_martinl, activity: food },
  { localler: sophie_martinl, activity: museum },
  { localler: giulia_rossil, activity: food },
  { localler: giulia_rossil, activity: history },
  { localler: giulia_rossil, activity: art },
  { localler: jack_wilsonl, activity: outdoors },
  { localler: jack_wilsonl, activity: unique },
  { localler: jack_wilsonl, activity: nightlife },
  { localler: jack_wilsonl, activity: food },
  { localler: lucy_williamsl, activity: art },
  { localler: lucy_williamsl, activity: shopping },
  { localler: lucy_williamsl, activity: nightlife },
  { localler: lucy_williamsl, activity: museum },
  { localler: miguel_garcial, activity: history },
  { localler: miguel_garcial, activity: nightlife },
  { localler: miguel_garcial, activity: food },
  { localler: anna_schneiderl, activity: museum },
  { localler: anna_schneiderl, activity: art },
  { localler: anna_schneiderl, activity: nightlife },
  { localler: anna_schneiderl, activity: shopping },
  { localler: david_smithl, activity: nightlife },
  { localler: david_smithl, activity: food },
  { localler: david_smithl, activity: shopping },
  { localler: guillaumel, activity: museum },
  { localler: guillaumel, activity: food },
  { localler: guillaumel, activity: nightlife },
  { localler: guillaumel, activity: outdoors },
  { localler: lukl, activity: art },
  { localler: lukl, activity: museum },
  { localler: lukl, activity: history },
  { localler: lukl, activity: food },
  { localler: mathieul, activity: nightlife },
  { localler: mathieul, activity: shopping },
  { localler: mathieul, activity: art },
  { localler: mathieul, activity: museum },
  { localler: aikal, activity: history },
  { localler: aikal, activity: nightlife },
  { localler: aikal, activity: shopping },
  { localler: aikal, activity: art },
  { localler: aikal, activity: food },
  { localler: pedrol, activity: outdoors },
  { localler: pedrol, activity: art },
  { localler: pedrol, activity: food },
  { localler: pedrol, activity: nightlife },
  { localler: brunal, activity: unique },
  { localler: brunal, activity: outdoors },
  { localler: brunal, activity: shopping },
  { localler: audel, activity: art },
  { localler: audel, activity: food },
  { localler: audel, activity: shopping },
  { localler: kental, activity: museum },
  { localler: kental, activity: art },
  { localler: kental, activity: food },
  { localler: kental, activity: nightlife },
  { localler: hugol, activity: shopping },
  { localler: hugol, activity: history },
  { localler: hugol, activity: outdoors },
  { localler: carolinel, activity: museum },
  { localler: carolinel, activity: food },
  { localler: emma_kiml, activity: food },
  { localler: emma_kiml, activity: nightlife },
  { localler: emma_kiml, activity: shopping },
  { localler: li_meil, activity: history },
  { localler: li_meil, activity: art },
  { localler: li_meil, activity: museum },
  { localler: isabelle_duboisl, activity: museum },
  { localler: isabelle_duboisl, activity: art },
  { localler: isabelle_duboisl, activity: history },
  { localler: peter_johnsonl, activity: outdoors },
  { localler: peter_johnsonl, activity: unique },
  { localler: peter_johnsonl, activity: food },
  { localler: peter_johnsonl, activity: history },
  { localler: ana_mendezl, activity: food },
  { localler: ana_mendezl, activity: nightlife },
  { localler: ana_mendezl, activity: history },
  { localler: john_clarkl, activity: museum },
  { localler: john_clarkl, activity: history },
  { localler: john_clarkl, activity: unique },
  { localler: hannah_murphyl, activity: art },
  { localler: hannah_murphyl, activity: nightlife },
  { localler: hannah_murphyl, activity: museum },
  { localler: yuki_tanakal, activity: food },
  { localler: yuki_tanakal, activity: history },
  { localler: yuki_tanakal, activity: art },
  { localler: michael_brownl, activity: outdoors },
  { localler: michael_brownl, activity: unique },
  { localler: michael_brownl, activity: nightlife },
  { localler: camila_silval, activity: nightlife },
  { localler: camila_silval, activity: shopping },
  { localler: camila_silval, activity: food },
  { localler: pierre_dupontl, activity: food },
  { localler: pierre_dupontl, activity: history },
  { localler: pierre_dupontl, activity: unique },
  { localler: sara_nilssonl, activity: museum },
  { localler: sara_nilssonl, activity: shopping },
  { localler: sara_nilssonl, activity: art },
  { localler: raj_patell, activity: history },
  { localler: raj_patell, activity: food },
  { localler: raj_patell, activity: shopping },
  { localler: julia_kovacsl, activity: art },
  { localler: julia_kovacsl, activity: museum },
  { localler: julia_kovacsl, activity: history },
  { localler: diego_fernandezl, activity: outdoors },
  { localler: diego_fernandezl, activity: nightlife },
  { localler: diego_fernandezl, activity: food },
  { localler: nina_petroval, activity: history },
  { localler: nina_petroval, activity: museum },
  { localler: nina_petroval, activity: art },
  { localler: liam_chenl, activity: food },
  { localler: liam_chenl, activity: shopping },
  { localler: liam_chenl, activity: nightlife },
  { localler: sophie_tremblayl, activity: museum },
  { localler: sophie_tremblayl, activity: history },
  { localler: sophie_tremblayl, activity: art },
  { localler: omar_al_farsil, activity: art },
  { localler: omar_al_farsil, activity: shopping },
  { localler: omar_al_farsil, activity: unique },
  { localler: emily_clarkel, activity: outdoors },
  { localler: emily_clarkel, activity: food },
  { localler: emily_clarkel, activity: unique },
  { localler: laura_martinezl, activity: museum },
  { localler: laura_martinezl, activity: history },
  { localler: laura_martinezl, activity: art },
  { localler: robert_halll, activity: nightlife },
  { localler: robert_halll, activity: food },
  { localler: robert_halll, activity: shopping },
  { localler: anita_khanl, activity: history },
  { localler: anita_khanl, activity: museum },
  { localler: anita_khanl, activity: art },
  { localler: kevin_leel, activity: shopping },
  { localler: kevin_leel, activity: food },
  { localler: kevin_leel, activity: nightlife },
  { localler: elena_romanovl, activity: art },
  { localler: elena_romanovl, activity: museum },
  { localler: elena_romanovl, activity: history },
  { localler: james_wrightl, activity: outdoors },
  { localler: james_wrightl, activity: nightlife },
  { localler: james_wrightl, activity: food },
  { localler: amilia_rodriguezl , activity: food },
  { localler: amilia_rodriguezl , activity: nightlife },
  { localler: amilia_rodriguezl , activity: shopping },
  { localler: alexander_ivankovl, activity: history },
  { localler: alexander_ivankovl, activity: art },
  { localler: alexander_ivankovl, activity: museum },
  { localler: sara_almeidal, activity: art },
  { localler: sara_almeidal, activity: shopping },
  { localler: sara_almeidal, activity: history },
  { localler: michael_schmidtl, activity: food },
  { localler: michael_schmidtl, activity: nightlife },
  { localler: michael_schmidtl, activity: unique },
  { localler: sophia_leblancl, activity: museum },
  { localler: sophia_leblancl, activity: history },
  { localler: sophia_leblancl, activity: art },
  { localler: muhammad_alil, activity: outdoors },
  { localler: muhammad_alil, activity: unique },
  { localler: muhammad_alil, activity: history },
  { localler: anna_kuznetsoval, activity: art },
  { localler: anna_kuznetsoval, activity: museum },
  { localler: anna_kuznetsoval, activity: history },
  { localler: olivia_anderssonl, activity: food },
  { localler: olivia_anderssonl, activity: nightlife },
  { localler: olivia_anderssonl, activity: shopping },
  { localler: lucas_rodriguezl, activity: history },
  { localler: lucas_rodriguezl, activity: art },
  { localler: lucas_rodriguezl, activity: museum },
  { localler: anna_korhonenl, activity: outdoors },
  { localler: anna_korhonenl, activity: unique },
  { localler: anna_korhonenl, activity: history },
  { localler: juan_gomezl, activity: food },
  { localler: juan_gomezl, activity: nightlife },
  { localler: juan_gomezl, activity: history },
  { localler: lucia_fernandezl, activity: art },
  { localler: lucia_fernandezl, activity: shopping },
  { localler: lucia_fernandezl, activity: museum },
  { localler: viktor_petrovl, activity: history },
  { localler: viktor_petrovl, activity: museum },
  { localler: viktor_petrovl, activity: art },
  { localler: lucia_santosl, activity: food },
  { localler: lucia_santosl, activity: nightlife },
  { localler: lucia_santosl, activity: unique },
  { localler: alexander_muellerl, activity: art },
  { localler: alexander_muellerl, activity: museum },
  { localler: alexander_muellerl, activity: history },
  { localler: maria_gonzalezl, activity: history },
  { localler: maria_gonzalezl, activity: museum },
  { localler: maria_gonzalezl, activity: art },
  { localler: sophie_lefebvrel, activity: outdoors },
  { localler: sophie_lefebvrel, activity: unique },
  { localler: sophie_lefebvrel, activity: history },
  { localler: mohammed_alil, activity: art },
  { localler: mohammed_alil, activity: museum },
  { localler: mohammed_alil, activity: history },
  { localler: lara_silval, activity: food },
  { localler: lara_silval, activity: nightlife },
  { localler: lara_silval, activity: shopping },
  { localler: mikhail_ivanovl, activity: history },
  { localler: mikhail_ivanovl, activity: museum },
  { localler: mikhail_ivanovl, activity: art },
  { localler: anna_petroval, activity: food },
  { localler: anna_petroval, activity: nightlife },
  { localler: anna_petroval, activity: shopping },
  { localler: diego_santosl, activity: outdoors },
  { localler: diego_santosl, activity: unique },
  { localler: diego_santosl, activity: history },
  { localler: yusuf_alil, activity: food },
  { localler: yusuf_alil, activity: nightlife },
  { localler: yusuf_alil, activity: unique },
  { localler: lucas_martinezl, activity: history },
  { localler: lucas_martinezl, activity: museum },
  { localler: lucas_martinezl, activity: art },
  { localler: elena_kuznetsoval, activity: outdoors },
  { localler: elena_kuznetsoval, activity: unique },
  { localler: elena_kuznetsoval, activity: history },
  { localler: sofia_garcial, activity: art },
  { localler: sofia_garcial, activity: shopping },
  { localler: sofia_garcial, activity: museum },
  { localler: daniel_andersenl, activity: history },
  { localler: daniel_andersenl, activity: museum },
  { localler: daniel_andersenl, activity: art },
  { localler: ana_martinezl, activity: food },
  { localler: ana_martinezl, activity: nightlife },
  { localler: ana_martinezl, activity: shopping },
  { localler: yulia_petroval, activity: outdoors },
  { localler: yulia_petroval, activity: unique },
  { localler: yulia_petroval, activity: history },
  { localler: luca_rossil, activity: art },
  { localler: luca_rossil, activity: museum },
  { localler: luca_rossil, activity: history },
  { localler: isabella_contil, activity: food },
  { localler: isabella_contil, activity: nightlife },
  { localler: isabella_contil, activity: shopping },
  { localler: antonio_morenol, activity: history },
  { localler: antonio_morenol, activity: museum },
  { localler: antonio_morenol, activity: art },
  { localler: marta_francol, activity: outdoors },
  { localler: marta_francol, activity: unique },
  { localler: marta_francol, activity: history },
  { localler: mark_johnsonl, activity: food },
  { localler: mark_johnsonl, activity: nightlife },
  { localler: mark_johnsonl, activity: shopping },
  { localler: luciana_silval, activity: art },
  { localler: luciana_silval, activity: shopping },
  { localler: luciana_silval, activity: museum },
  { localler: giorgio_rossil, activity: history },
  { localler: giorgio_rossil, activity: museum },
  { localler: giorgio_rossil, activity: art },
  { localler: anna_kovacsl, activity: outdoors },
  { localler: anna_kovacsl, activity: unique },
  { localler: anna_kovacsl, activity: history },
  { localler: gabriel_silval, activity: food },
  { localler: gabriel_silval, activity: nightlife },
  { localler: gabriel_silval, activity: shopping },
  { localler: emilia_rodriguezl , activity: art },
  { localler: emilia_rodriguezl , activity: museum },
  { localler: emilia_rodriguezl , activity: history },
  { localler: pablo_lopezl, activity: history },
  { localler: pablo_lopezl, activity: museum },
  { localler: pablo_lopezl, activity: art },
  { localler: elena_petersonl, activity: food },
  { localler: elena_petersonl, activity: nightlife },
  { localler: elena_petersonl, activity: shopping },
  { localler: giovanni_riccil, activity: art },
  { localler: giovanni_riccil, activity: museum },
  { localler: giovanni_riccil, activity: history },
  { localler: maria_rodriguezl, activity: outdoors },
  { localler: maria_rodriguezl, activity: unique },
  { localler: maria_rodriguezl, activity: history },
  { localler: julia_schmidtl, activity: food },
  { localler: julia_schmidtl, activity: nightlife },
  { localler: julia_schmidtl, activity: shopping },
  { localler: david_martinezl, activity: history },
  { localler: david_martinezl, activity: museum },
  { localler: david_martinezl, activity: art },
  { localler: joseph_wongl, activity: outdoors },
  { localler: joseph_wongl, activity: unique },
  { localler: joseph_wongl, activity: history },
  { localler: anastasia_kuznetsoval, activity: art },
  { localler: anastasia_kuznetsoval, activity: shopping },
  { localler: anastasia_kuznetsoval, activity: museum },
  { localler: nicolas_leroyl, activity: food },
  { localler: nicolas_leroyl, activity: nightlife },
  { localler: nicolas_leroyl, activity: shopping },
  { localler: olga_ivanoval, activity: history },
  { localler: olga_ivanoval, activity: museum },
  { localler: olga_ivanoval, activity: art },
  { localler: fabio_contil, activity: outdoors },
  { localler: fabio_contil, activity: unique },
  { localler: fabio_contil, activity: history },
  { localler: carla_garcial, activity: art },
  { localler: carla_garcial, activity: museum },
  { localler: carla_garcial, activity: history },
  { localler: daniel_nguyenl, activity: food },
  { localler: daniel_nguyenl, activity: nightlife },
  { localler: daniel_nguyenl, activity: shopping },
  { localler: lucia_martinezl, activity: history },
  { localler: lucia_martinezl, activity: museum },
  { localler: lucia_martinezl, activity: art },
  { localler: jakub_nowakl, activity: outdoors },
  { localler: jakub_nowakl, activity: unique },
  { localler: jakub_nowakl, activity: history },
  { localler: anna_smithl, activity: food },
  { localler: anna_smithl, activity: nightlife },
  { localler: anna_smithl, activity: shopping },
  { localler: marco_rodriguezl, activity: art },
  { localler: marco_rodriguezl, activity: shopping },
  { localler: marco_rodriguezl, activity: museum },
  { localler: sophie_duboisl, activity: history },
  { localler: sophie_duboisl, activity: museum },
  { localler: sophie_duboisl, activity: art },
  { localler: maximilian_muellerl, activity: food },
  { localler: maximilian_muellerl, activity: nightlife },
  { localler: maximilian_muellerl, activity: shopping },
  { localler: olivia_andersonl, activity: outdoors },
  { localler: olivia_andersonl, activity: unique },
  { localler: olivia_andersonl, activity: history },
  { localler: felipe_gomezl, activity: art },
  { localler: felipe_gomezl, activity: museum },
  { localler: felipe_gomezl, activity: history },
  { localler: sara_müllerl, activity: food },
  { localler: sara_müllerl, activity: nightlife },
  { localler: sara_müllerl, activity: shopping },
  { localler: leo_rodriguezl, activity: history },
  { localler: leo_rodriguezl, activity: museum },
  { localler: leo_rodriguezl, activity: art },
  { localler: emily_wangl, activity: outdoors },
  { localler: emily_wangl, activity: unique },
  { localler: emily_wangl, activity: history },
  { localler: mikhail_smirnovl, activity: food },
  { localler: mikhail_smirnovl, activity: nightlife },
  { localler: mikhail_smirnovl, activity: shopping },
  { localler: anna_schnëiderl, activity: art },
  { localler: anna_schnëiderl, activity: museum },
  { localler: anna_schnëiderl, activity: history },
  { localler: maria_rodriguezel, activity: outdoors },
  { localler: maria_rodriguezel, activity: unique },
  { localler: maria_rodriguezel, activity: history },
  { localler: thomas_müllerl, activity: history },
  { localler: thomas_müllerl, activity: museum },
  { localler: thomas_müllerl, activity: art },
  { localler: sofia_fernandezl, activity: food },
  { localler: sofia_fernandezl, activity: nightlife },
  { localler: sofia_fernandezl, activity: shopping },
  { localler: andreas_schmidtl, activity: outdoors },
  { localler: andreas_schmidtl, activity: unique },
  { localler: andreas_schmidtl, activity: history },
  { localler: laura_rodriguezl, activity: art },
  { localler: laura_rodriguezl, activity: museum },
  { localler: laura_rodriguezl, activity: history },
  { localler: alexander_schneiderl, activity: food },
  { localler: alexander_schneiderl, activity: nightlife },
  { localler: alexander_schneiderl, activity: shopping },
  { localler: juliana_silval, activity: history },
  { localler: juliana_silval, activity: museum },
  { localler: juliana_silval, activity: art },
  { localler: matteo_bianchil, activity: outdoors },
  { localler: matteo_bianchil, activity: unique },
  { localler: matteo_bianchil, activity: history },
  { localler: elena_popoval, activity: art },
  { localler: elena_popoval, activity: museum },
  { localler: elena_popoval, activity: shopping },
]

localler_activities.each do |localler_activity|
  LocallerActivity.create!(localler_activity)
end

puts "Finished!"
