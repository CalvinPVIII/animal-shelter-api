Animal.destroy_all

25.times do |index|
  Animal.create!(
          name: Faker::Creature::Cat.name,
          image: ['https://d30j4r05tazxop.cloudfront.net/clickToGive/images/takeaction/campaigns/australia-feral-cats.jpg', 'https://s3.amazonaws.com/filestore.rescuegroups.org/970/pictures/animals/4940/4940664/67636786_500x500.jpg', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-UQTSDzVjzFzxFQVvbzUspqByCPG9P_e79nip61SA38EFL-ts&s', 'https://s3.amazonaws.com/filestore.rescuegroups.org/2420/pictures/animals/13167/13167965/60585707_500x500.jpg', 'https://dl5zpyw5k3jeb.cloudfront.net/photos/pets/47066893/1/?bust=1578586816&width=500&-x.jpg', 'https://gatherdc.org/wp-content/uploads/2019/02/Copy-of-Untitled-2.png', 'https://7dsxfudap2-flywheel.netdna-ssl.com/wp-content/uploads/2017/08/pets-in-stitches-services-cat-hero.jpg', 'https://images.squarespace-cdn.com/content/v1/554e744ce4b026a2b08ca248/1575663851924-N0ENQ5FMFW80R3IMYUP4/ke17ZwdGBToddI8pDm48kPJXHKy2-mnvrsdpGQjlhod7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QHyNOqBUUEtDDsRWrJLTmihaE5rlzFBImxTetd_yW5btdZx37rH5fuWDtePBPDaHF5LxdCVHkNEqSYPsUQCdT/Ginger-190502.jpg?format=500w'].sample,
          species: "Cat",
          bio: Faker::Lorem.paragraph,
          gender: Faker::Creature::Dog.gender,
          breed: Faker::Creature::Cat.breed
)
end
puts '25 Cats Created'

25.times do |index|
  Animal.create!(
          name: Faker::Creature::Dog.name,
          image: ["https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/05/26191808/can_dogs_eat_pork_hero-500x500.jpg", 'https://s3.amazonaws.com/filestore.rescuegroups.org/6685/pictures/animals/9384/9384875/69127557_500x500.jpg', 'https://s3.amazonaws.com/cdn-origin-etr.akc.org/wp-content/uploads/2017/05/12215714/can-dogs-eat-honey-500x500.jpg', 'https://dogagingproject.org/wp-content/uploads/2019/01/11-zena-thumb.png', 'https://dogagingproject.org/wp-content/uploads/2019/01/14-lani-thumb.png', 'https://www.sspca.org/sites/main/files/imagecache/square/main-images/screen_shot_2020-01-01_at_12.09.57_am.png?1577866257', 'https://evergladesangelsdogrescue.org/wp-content/uploads/2017/06/Angel-Web-after-1.jpg', 'https://www.doggoneseattle.org/wp-content/uploads/2014/05/Dogs10-e1510428319667-500x500.jpg'].sample,
          species: "Dog",
          bio: Faker::Lorem.paragraph,
          gender: Faker::Creature::Dog.gender,
          breed: Faker::Creature::Dog.breed
)
end
puts '25 Dogs Created'
