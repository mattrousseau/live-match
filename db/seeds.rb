puts "Destroying all users"
User.destroy_all

puts "Creating 2 users"

matt = User.create!(
    email: "matt@gmail.com",
    password: "123456"
  )
puts "created #{matt.email}"

charles = User.create!(
    email: "charles@gmail.com",
    password: "123456"
  )
puts "created #{charles.email}"



puts "----------------------------"

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



puts "----------------------------"

puts "Creating 3 photos per venue"

puts "Destroying all photos"
Venuephoto.destroy_all

puts "Creating Tiger Photos"

url1 = "https://s3-eu-west-1.amazonaws.com/privateaser-media/etab_photos/953/1500x750/10226.jpg"
url2 = "https://s3-eu-west-1.amazonaws.com/privateaser-media/etab_photos/953/1500x750/10227.jpg"
url3 = "https://s3-eu-west-1.amazonaws.com/privateaser-media/etab_photos/953/1500x750/10228.jpg"

tiger_image_1 = Venuephoto.new(
  tag: "main"
  )
tiger_image_1.remote_photo_url = url1
tiger_image_1.save!

tiger_image_2 = Venuephoto.new(
  tag: "secondary"
  )
tiger_image_2.remote_photo_url = url2
tiger_image_2.save!


tiger_image_3 = Venuephoto.new(
  tag: "wine"
  )
tiger_image_3.remote_photo_url = url3
tiger_image_3.save!

puts "Creating Le Baron Photos"

url1 = "https://s3-eu-west-1.amazonaws.com/privateaser-media/etab_photos/550/1500x750/45504.jpg"
url2 = "https://s3-eu-west-1.amazonaws.com/privateaser-media/etab_photos/550/1500x750/8250.jpg"
url3 = "https://s3-eu-west-1.amazonaws.com/privateaser-media/etab_photos/550/1500x750/45013.jpg"

lebaron_image_1 = Venuephoto.new(
  tag: "main"
  )
lebaron_image_1.remote_photo_url = url1
lebaron_image_1.save!

lebaron_image_2 = Venuephoto.new(
  tag: "secondary"
  )
lebaron_image_2.remote_photo_url = url2
lebaron_image_2.save!


lebaron_image_3 = Venuephoto.new(
  tag: "wine"
  )
lebaron_image_3.remote_photo_url = url3
lebaron_image_3.save!



puts "----------------------------"

puts "Linking photos to venues"

puts "Linking Tiger Photos"

VenuesPhoto.create!(
    venuephoto: tiger_image_1,
    venue: tiger
  )

VenuesPhoto.create!(
    venuephoto: tiger_image_2,
    venue: tiger
  )

VenuesPhoto.create!(
    venuephoto: tiger_image_3,
    venue: tiger
  )

puts "Linking Le Baron Photos"

VenuesPhoto.create!(
    venuephoto: lebaron_image_1,
    venue: baron
  )

VenuesPhoto.create!(
    venuephoto: lebaron_image_2,
    venue: baron
  )

VenuesPhoto.create!(
    venuephoto: lebaron_image_3,
    venue: baron
  )
