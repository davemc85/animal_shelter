require_relative('../models/owner.rb')
require_relative('../models/animal.rb')
require('pry-byebug')

owner1 = Owner.new({
  "first_name" => "Wanna Pet",
  "last_name" => "Animal Shelter",
  "location" => "Glasgow",
  "has_children" => "true",
  "has_outside_space" => "true",
  "likes_exercise" => "true"
  })
owner1.save()

owner2 = Owner.new({
  "first_name" => "Lynn",
  "last_name" => "McAllister",
  "location" => "Kirkintilloch",
  "has_children" => "true",
  "has_outside_space" => "true",
  "likes_exercise" => "true"
  })
owner2.save

owner3 = Owner.new({
  "first_name" => "Stephen",
  "last_name" => "Crompton",
  "location" => "Torrance",
  "has_children" => "true",
  "has_outside_space" => "true",
  "likes_exercise" => "false"
  })
owner3.save()

owner4 = Owner.new({
  "first_name" => "Susan",
  "last_name" => "Potts",
  "location" => "East Kilbride",
  "has_children" => "false",
  "has_outside_space" => "false",
  "likes_exercise" => "false"
  })
owner4.save()

owner5 = Owner.new({
  "first_name" => "George",
  "last_name" => "McCall",
  "location" => "London",
  "has_children" => "false",
  "has_outside_space" => "true",
  "likes_exercise" => "true"
  })
owner5.save()


animal1 = Animal.new({
  "name" => "Archie",
  "admission_date" => "17/03/19",
  "type" => "dog",
  "breed" => "cavapoo",
  "age" => "2",
  "status" => "adopted",
  "child_friendly" => "true",
  "needs_outside_space" => "true",
  "needs_exercise" => "true",
  "profile_pic" => "https://scontent-lht6-1.xx.fbcdn.net/v/t1.0-9/39124588_1092251580937333_3276068274474844160_n.jpg?_nc_cat=107&_nc_ht=scontent-lht6-1.xx&oh=184040cde3f6370d67c730f130f2bf59&oe=5D2E64B5",
  "owner_id" => owner2.id
  })
animal1.save()


animal2 = Animal.new({
  "name" => "Tony",
  "admission_date" => "26/01/19",
  "type" => "tiger",
  "breed" => "bengal",
  "age" => "6",
  "status" => "available",
  "child_friendly" => "false",
  "needs_outside_space" => "true",
  "needs_exercise" => "true",
  "profile_pic" => "https://www.laketobias.com/wp-content/uploads/bengal-tiger.jpg",
  "owner_id" => owner1.id
  })
animal2.save()


animal3 = Animal.new({
  "name" => "Speedy",
  "admission_date" => "14/05/18",
  "type" => "tortoise",
  "breed" => "hermann",
  "age" => "64",
  "status" => "in vet care",
  "child_friendly" => "true",
  "needs_outside_space" => "false",
  "needs_exercise" => "false",
  "profile_pic" => "https://ichef.bbci.co.uk/news/660/media/images/48305000/jpg/_48305671_007592746-1.jpg",
  "owner_id" => owner1.id
  })
animal3.save()


animal4 = Animal.new({
  "name" => "Spot",
  "admission_date" => "01/04/19",
  "type" => "dog",
  "breed" => "dalmation",
  "age" => "5",
  "status" => "in training",
  "child_friendly" => "true",
  "needs_outside_space" => "true",
  "needs_exercise" => "true",
  "profile_pic" => "https://www.pets4homes.co.uk/images/breeds/46/f8b714ed78d72641c35c4f42cbfad9a9.jpg",
  "owner_id" => owner5.id
  })
animal4.save()


animal5 = Animal.new({
  "name" => "Buster",
  "admission_date" => "12/03/19",
  "type" => "dog",
  "breed" => "boxer",
  "age" => "7",
  "status" => "in training",
  "child_friendly" => "true",
  "needs_outside_space" => "true",
  "needs_exercise" => "true",
  "profile_pic" => "https://cdn3-www.dogtime.com/assets/uploads/gallery/boxer-dogs-and-puppies/boxer-dogs-puppies-1.jpg",
  "owner_id" => owner1.id
  })
animal5.save()


animal6 = Animal.new({
  "name" => "Buster",
  "admission_date" => "12/03/19",
  "type" => "snake",
  "breed" => "corn",
  "age" => "3",
  "status" => "available",
  "child_friendly" => "true",
  "needs_outside_space" => "false",
  "needs_exercise" => "false",
  "profile_pic" => "https://cdn.shopify.com/s/files/1/0109/0052/products/image_5eee4bd2-15fa-4d7b-ad12-a4fe59810d86_large.jpg?v=1551478883",
  "owner_id" => owner1.id
  })
animal6.save()


animal7 = Animal.new({
  "name" => "Molly",
  "admission_date" => "12/02/19",
  "type" => "cat",
  "breed" => "british shorthair",
  "age" => "3",
  "status" => "adopted",
  "child_friendly" => "true",
  "needs_outside_space" => "true",
  "needs_exercise" => "false",
  "profile_pic" => "https://cdn1-www.cattime.com/assets/uploads/2011/12/file_2744_british-shorthair-460x290-460x290.jpg",
  "owner_id" => owner1.id
  })
animal7.save()
