require 'date'

puts "----------------------------"
puts "USERS"

puts "Destroying all users"
User.destroy_all

puts "Creating 4 users"

matt = User.new(
    email: "matt@gmail.com",
    password: "123456",
  )
matt_avatar_url = "https://culturebox.francetvinfo.fr/sites/default/files/assets/images/2017/06/maxnewsspecial093147.jpg"
matt.remote_avatar_url = matt_avatar_url

matt.save!

puts "created #{matt.email}"


charles = User.new(
    email: "charles@gmail.com",
    password: "123456"
  )
charles_avatar_url = "https://storage.googleapis.com/images.frenchmorning.com/2018/02/breakbot-696x378.jpg"
charles.remote_avatar_url = charles_avatar_url

charles.save!

puts "created #{charles.email}"


paul = User.new(
    email: "paul@gmail.com",
    password: "123456"
  )
paul_avatar_url = "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/DJ_Mehdi.jpg/260px-DJ_Mehdi.jpg"
paul.remote_avatar_url = paul_avatar_url

paul.save!

puts "created #{paul.email}"


pierre = User.new(
    email: "pierre@gmail.com",
    password: "123456"
  )
pierre_avatar_url = "http://stoneyroads.com/wp-content/uploads/2017/09/uffie.jpg"
pierre.remote_avatar_url = pierre_avatar_url

pierre.save!

puts "created #{pierre.email}"


puts "----------------------------"
puts "VENUES"

puts "Destroying all venues"
Venue.destroy_all

puts "Creating 2 venues"

tiger = Venue.create!(
    name: "Tiger",
    address: "13c rue princesse, 75006 Paris",
    description: "Localisé dans le 6 eme arrondissement de Paris dans le quartier très festif de Saint-Germain-des-Prés, Le Tiger est le premier bar à gin de la capitale ! Vous pourrez y déguster de nombreux alcools, plus ou moins forts, pour le plus grand bonheur de vos invités.
Dans une ambiance cosy, presque feutrée, avec un fond musical intriguant, le bar Le Tiger vous accueille avec plus de 120 références prêtes à être goûtées : entre le gin Normand fait maison, les cocktails et les gins accompagnés du délicieux tonic maison, vous n'avez que l'embarras du choix. Les boissons seront servies avec des glaçons, taillés sur place dans un énorme bloc de glace ! Et pour accompagner les alcools, de délicieuses tapas aux saveurs exotiques raviront vos papilles et se marieront agréablement en bouche avec la saveur de vos boissons.
Pour fêter dignement un anniversaire ou se réunir agréablement pour une soirée d'entreprise ou un cocktail chic, Le Tiger sera parfaitement adapté. Pas la peine d'être un fin connaisseur de gin pour apprécier !
Vous avez la possibilité de réserver quelques tables, de privatiser l'espace du Bar ou l'intégralité de l'établissement tous les jours de 18h à 2h. Pas de doute, votre soirée s'annonce aussi festive que désaltérante !",
    category: "Bar à Cocktails",
    ambiance: "animée",
    size: 120,
    user_id: charles.id
  )
puts "created #{tiger.name}"

url1 = "https://s3-eu-west-1.amazonaws.com/privateaser-media/etab_photos/953/1500x750/10226.jpg"
url2 = "https://s3-eu-west-1.amazonaws.com/privateaser-media/etab_photos/953/1500x750/10227.jpg"
url3 = "https://s3-eu-west-1.amazonaws.com/privateaser-media/etab_photos/953/1500x750/10228.jpg"

tiger.remote_photos_urls = [url1, url2, url3]
tiger.save!

puts "added photos to #{tiger.name}"



baron = Venue.create!(
    name: "Le Baron",
    address: "11 Rue de Chateaudun, 75009 Paris",
    description: "Au coeur du 9 ème arrondissement de Paris, au 11 Rue de Châteaudun pour être très précis, vous pourrez découvrir l'un des meilleurs restaurants parisiens : le Café Le Baron, un établissement unique en son genre qui sera content de vous recevoir. L'un des avantages de ce restaurant est incontestablement son emplacement à Paris : il se situe à quelques pas de l'opéra, entre la Gare du Nord et la Gare St Lazare.
Dans un décor original et soigné, entre modernité et époque baroque, une excellente cuisine de saison vous est servie dans ce restaurant parisien. Vous pourrez également profiter d'une large terrasse bien exposée au soleil quand celui-ci pointera le bout de son nez. Au restaurant Café Le Baron, vous aurez aussi l'opportunité de goûté à une cuisine variée et riche en saveurs. Le chef s'attelle à vous proposer des plats originaux à base de produits frais. Essayez par exemple le foie gras et son chutney de potiron, ou encore par les délicieuses noix de Saint-Jacques et leur purée vanillée. Enfin en dessert, vous pourrez vous laisser aller au fameux et impérissable pain perdu. Dé délicieux cocktails vous seront proposés également à l'heure de l'apéro.
Le restaurant Café Le Baron se propose aussi de vous accueillir pour tous vos événements professionnels et privés. L'établissement travaille en collaboration avec une association artistique, ce qui lui permet de mettre à disposition de ses clients tous les week-ends des ambiances différentes avec des DJs ou groupes musicaux. Cerise sur le gâteau, le restaurant parisien vous propose d'organiser des événements sur mesure qui s'adapteront à la moindre de vos demandes. Vous pouvez contacter les équipes du restaurant afin de communiquer avec eux, leur transmettre vos besoins pour votre futur événement et vous déciderez alors d'un commun accord si le Café Le Baron est fait pour vous ou non. Les doutes ne sont plus permis quant à la qualité des services du Café Le Baron, le restaurant met la satisfaction de ses clients au centre de toutes ses activités, vous pouvez donc vous lancer le coeur léger. Il ne vous suffit plus que de le privatiser dès que l'envie vous prend. Le restaurant vous ouvre ses portes tous les jours de 7h30 à 2h00 du matin, sauf le dimanche.",
    category: "Restaurant",
    ambiance: "calme",
    size: 160,
    user_id: matt.id
  )
puts "created #{baron.name}"

url1 = "https://s3-eu-west-1.amazonaws.com/privateaser-media/etab_photos/550/1500x750/45504.jpg"
url2 = "https://s3-eu-west-1.amazonaws.com/privateaser-media/etab_photos/550/1500x750/8250.jpg"
url3 = "https://s3-eu-west-1.amazonaws.com/privateaser-media/etab_photos/550/1500x750/45013.jpg"

baron.remote_photos_urls = [url1, url2, url3]
baron.save!

puts "added photos to #{baron.name}"



puts "----------------------------"
puts "EQUIPMENTS"

puts "Destroying all equipments"
Venueequipment.destroy_all

puts "Creating 2 Tiger equipments"

tiger_equipment_1 = Venueequipment.new(
  name: "Pioneer XDJ-1000MK2 platine numérique",
  description: "La platine numérique XDJ-1000MK2 succède à la XDJ-1000. Cette nouvelle version a été développée juste après la sortie de la Pioneer XDJ-1000. Grâce à quelques mises à jour subtiles, elle est particulièrement compacte et efficace et offre un grand confort d'utilisation. De ce fait, la platine convient non seulement aux débutants mais aussi aux DJs professionnels."
  )
tiger_equipment_1_photo_url = "https://static.bax-shop.es/image/product/293823/756190/7f4f5726/450x450/1472112161XDJ-1000MK2_01.png"
tiger_equipment_1.remote_photo_url = tiger_equipment_1_photo_url

tiger_equipment_1.save!
puts "created #{tiger_equipment_1.name}"


tiger_equipment_2 = Venueequipment.new(
  name: "Elipson Planet L Blanc laqué",
  description: "La Planet L marque le renouveau de la sphère Elipson avec un produit haut de gamme à l’esthétique soignée. Fruit de 2 ans d’études, elle exploite les meilleures technologies acoustiques pour un rendu sonore sans compromis. Equipée d’un haut-parleur coaxial 2 voies, elle offre le meilleur de la haute-fidélité avec élégance et design."
  )
tiger_equipment_2_photo_url = "https://www.homecinesolutions.fr/a/imaj_picture_m2x/2016-12/elipson-planet-m-blanc-52321-m2x-qEWChPXnUGPigmeA9D9Dew.jpg"
tiger_equipment_2.remote_photo_url = tiger_equipment_2_photo_url

tiger_equipment_2.save!
puts "created #{tiger_equipment_2.name}"


puts "Creating 2 Le Baron equipments"

baron_equipment_1 = Venueequipment.new(
  name: "Pioneer XDJ-1000MK2 platine numérique",
  description: "La platine numérique XDJ-1000MK2 succède à la XDJ-1000. Cette nouvelle version a été développée juste après la sortie de la Pioneer XDJ-1000. Grâce à quelques mises à jour subtiles, elle est particulièrement compacte et efficace et offre un grand confort d'utilisation. De ce fait, la platine convient non seulement aux débutants mais aussi aux DJs professionnels."
  )
baron_equipment_1_photo_url = "https://static.bax-shop.es/image/product/293823/756190/7f4f5726/450x450/1472112161XDJ-1000MK2_01.png"
baron_equipment_1.remote_photo_url = baron_equipment_1_photo_url

baron_equipment_1.save!
puts "created #{baron_equipment_1.name}"


baron_equipment_2 = Venueequipment.new(
  name: "Elipson Planet L Blanc laqué",
  description: "La Planet L marque le renouveau de la sphère Elipson avec un produit haut de gamme à l’esthétique soignée. Fruit de 2 ans d’études, elle exploite les meilleures technologies acoustiques pour un rendu sonore sans compromis. Equipée d’un haut-parleur coaxial 2 voies, elle offre le meilleur de la haute-fidélité avec élégance et design."
  )
baron_equipment_2_photo_url = "https://www.homecinesolutions.fr/a/imaj_picture_m2x/2016-12/elipson-planet-m-blanc-52321-m2x-qEWChPXnUGPigmeA9D9Dew.jpg"
baron_equipment_2.remote_photo_url = baron_equipment_2_photo_url

baron_equipment_2.save!
puts "created #{baron_equipment_2.name}"



puts "----------------------------"

puts "Linking equipments to venues"

puts "Linking Tiger equipments"

VenuesEquipment.create!(
    venueequipment: tiger_equipment_1,
    venue: tiger
  )

VenuesEquipment.create!(
    venueequipment: tiger_equipment_2,
    venue: tiger
  )


puts "Linking Le Baron equipments"

VenuesEquipment.create!(
    venueequipment: baron_equipment_1,
    venue: baron
  )

VenuesEquipment.create!(
    venueequipment: baron_equipment_2,
    venue: baron
  )



puts "----------------------------"
puts "DJs"


puts "Destroying all djs"
Dj.destroy_all


puts "Creating 4 Djs"

4.times do

  mroizo = Dj.new(
      artist_name: "Mr Oizo",
      user: matt,
      description: "Quentin Dupieux est un artiste de musique électronique, réalisateur et scénariste français, né le 14 avril 1974 à Paris. Il utilise, pour son œuvre musicale, le pseudonyme de Mr. Oizo.
      Quentin Dupieux est le fils d'un garagiste1.
      Il fait ses premières armes de réalisateur dans l'équipe de tournage de clips Midi-Minuit de Michel Gondry, et signe sur le label FCom/PIAS de musique électronique sous le pseudo de Mr. Oizo, à la suite de sa rencontre avec Laurent Garnier."
    )

  url1 = "http://lavagueparallele.com/wp-content/uploads/2016/10/mr-oizo-church-album.jpg"
  url2 = "http://sat.qc.ca/sites/default/files/styles/opengraph_facebook/public/oizo_banner_perso_640x4001.jpg"

  mroizo.remote_photos_urls = [url1, url2]
  mroizo.save!

  puts "created #{mroizo.artist_name}"


  breakbot = Dj.new(
      artist_name: "Breakbot",
      user: charles,
      description: "Breakbot, de son vrai nom Thibaut Berland, est un DJ et compositeur de musique électronique né le 5 octobre 1981 dans les Yvelines signé sur le label français Ed Banger Records.
      Proche du groupe Justice, il a remixé leur morceau Let There Be Light, et a collaboré au graphisme de l'artwork de l'album du groupe2.
      En 2005, il réalise un court métrage d'animation intitulé Overtime avec Oury Atlan et Damien Ferrie dans le cadre de ses études à Supinfocom Valenciennes.
      En 2007, il sort son premier EP Happy Rabbit sur le label londonien Moshi Moshi Records.
      Enfin, en mai 2009, il est annoncé qu'il rejoint le label Ed Banger Records."
    )

  url1 = "https://storage.googleapis.com/images.frenchmorning.com/2018/02/breakbot-696x378.jpg"
  url2 = "https://i.ytimg.com/vi/t9_1oDgTV90/maxresdefault.jpg"

  breakbot.remote_photos_urls = [url1, url2]
  breakbot.save!

  puts "created #{breakbot.artist_name}"


  uffie = Dj.new(
      artist_name: "Uffie",
      user: pierre,
      description: "Uffie, de son vrai nom Anna Catherine Hartley-Poole, née le 9 décembre 1987 à Miami, en Floride, est une chanteuse de musique électronique américaine basée à Paris.
      Uffie est née à Miami, en Floride1, sous le nom d'Anna-Catherine Hartley. Sa mère est japonaise et son père est britannique originaire de Liverpool2,3. Sa famille est partie avec elle à Hong Kong quand elle avait quatre ans4. Elle y a passé une bonne partie de son enfance et de son adolescence2.
      Elle est arrivée à Paris à 15 ans5. Son nom de scène Uffie vient du surnom œuf donné par son père lorsqu'elle était enfant6.
      En 2006, elle commence sa carrière par la production de deux singles Pop the Glock et Ready To Uff en cocréation avec son ami Louisdub sur le label français Ed Banger Records. Les deux titres contiennent une musique empruntant aussi bien à l'acid house et à l'ambient qu'au rap pour la partie vocale. Les titres d'Uffie ont été produits par les artistes français Mr. Oizo et Feadz. SebastiAn a réalisé plusieurs remixes."
    )

  url1 = "https://www.residentadvisor.net/images/features/2006/sonar-uffie.jpg"
  url2 = "https://i.ytimg.com/vi/HVpir5vSA78/maxresdefault.jpg"

  uffie.remote_photos_urls = [url1, url2]
  uffie.save!

  puts "created #{uffie.artist_name}"


  mehdi = Dj.new(
      artist_name: "Dj Mehdi",
      user: paul,
      description: "DJ Mehdi, de son vrai nom Mehdi Faveris-Essadi, (né le 20 janvier 1977 à Asnières-sur-Seine dans les Hauts-de-Seine et mort le 13 septembre 2011 à Paris2,3,4), est un producteur de musique et compositeur de hip-hop et de musique électronique français.
      DJ Mehdi est né à Asnières-sur-Seine dans les Hauts-de-Seine5,2, d'une mère tunisienne et d'un père français. Il débute en 1992 en intégrant Ideal J, groupe formé par Kery James, auquel il contribue en tant que compositeur5. En 1996, les Ideal J publient leur premier album O'riginal MC's sur une mission mais c'est sur l'album suivant, Le combat continue, publié en 19985, que Mehdi affirme sa patte de producteur, ajoutant de vibrantes orchestrations aux breakbeats qui caractérisent son style1. Avant cela, un an plus tôt ,en 1997, DJ Mehdi fonde le label Espionnage5.
      Il devient par la suite membre du collectif Mafia K'1 Fry, et en produit la quasi-totalité des créations telles que Different Teep (ex-groupe de Manu Key, Mista Flo et Lil Jahson), les solos de Karlito ou de Manu Key. Mais son travail le plus reconnu se fera avec le 113, et l'album Les Princes de la ville qui décrochera deux Victoires de la Musique en 20006,7,8,9."
    )

  url1 = "https://statics.lesinrocks.com/content/thumbs/uploads/2018/04/width-1125-height-612-srcset-1/dj-mehdi-2.jpg"
  url2 = "http://www.greenroom.fr/wp-content/uploads/2016/09/tumblr_mvmg7u8eVE1s1opj3o1_1280-e1473780589188.jpg"

  mehdi.remote_photos_urls = [url1, url2]
  mehdi.save!

  puts "created #{mehdi.artist_name}"

end



puts "----------------------------"
puts "BOOKINGs"


puts "Destroying all bookings"
Booking.destroy_all

boom = Booking.create!(
    venue: tiger,
    dj: Dj.first,
    duration: 3,
    booking_date: Date.new(2018, 12, 10),
    comment: "La boom du Tigre"
  )

puts "created #{boom.comment.downcase} au #{boom.venue.name} avec #{boom.dj.artist_name}"


apero = Booking.create!(
    venue: tiger,
    dj: Dj.second,
    duration: 4.5,
    booking_date: Date.new(2018, 11, 20),
    comment: "Apéro dinatoire entre jeunes privilégiés"
  )

puts "created #{apero.comment.downcase} au #{apero.venue.name} avec #{apero.dj.artist_name}"


diner = Booking.create!(
    venue: baron,
    dj: Dj.third,
    duration: 2,
    booking_date: Date.new(2018, 12, 10),
    comment: "Diner branché"
  )

puts "created #{diner.comment.downcase} au #{diner.venue.name} avec #{diner.dj.artist_name}"


google = Booking.create!(
    venue: baron,
    dj: Dj.fourth,
    duration: 1,
    booking_date: Date.new(2018, 12, 10),
    comment: "Evenement privé Google"
  )

puts "created #{google.comment.downcase} au #{google.venue.name} avec #{google.dj.artist_name}"

