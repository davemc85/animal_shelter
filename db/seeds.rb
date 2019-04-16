require_relative('../models/owner.rb')
require_relative('../models/animal.rb')
require('pry-byebug')

owner1 = Owner.new({
  "first_name" => "Wanna",
  "last_name" => "Pet",
  "location" => "Animal Shelter",
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
  "type" => "Dog",
  "breed" => "Cavapoo",
  "age" => "2",
  "status" => "Adopted",
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
  "type" => "Tiger",
  "breed" => "Bengal",
  "age" => "6",
  "status" => "Available",
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
  "type" => "Tortoise",
  "breed" => "Hermann",
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
  "type" => "Dog",
  "breed" => "Dalmation",
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
  "type" => "Dog",
  "breed" => "Boxer",
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
  "name" => "Slippy",
  "admission_date" => "12/03/19",
  "type" => "Snake",
  "breed" => "Corn",
  "age" => "3",
  "status" => "Available",
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
  "type" => "Cat",
  "breed" => "British Shorthair",
  "age" => "3",
  "status" => "Adopted",
  "child_friendly" => "true",
  "needs_outside_space" => "true",
  "needs_exercise" => "false",
  "profile_pic" => "https://cdn1-www.cattime.com/assets/uploads/2011/12/file_2744_british-shorthair-460x290-460x290.jpg",
  "owner_id" => owner3.id
  })
animal7.save()

animal8 = Animal.new({
  "name" => "Bert",
  "admission_date" => "11/12/18",
  "type" => "Bear",
  "breed" => "Grizzly",
  "age" => "8",
  "status" => "Available",
  "child_friendly" => "false",
  "needs_outside_space" => "true",
  "needs_exercise" => "true",
  "profile_pic" => "https://gohunt-assets-us-west-2.s3.amazonaws.com/media/wyoming-grizzly-bear-top_0.jpg",
  "owner_id" => owner1.id
  })
animal8.save()



animal9 = Animal.new({
  "name" => "Percy",
  "admission_date" => "21/02/19",
  "type" => "Parrot",
  "breed" => "Macaw",
  "age" => "8",
  "status" => "Available",
  "child_friendly" => "true",
  "needs_outside_space" => "false",
  "needs_exercise" => "false",
  "profile_pic" => "https://www.parakeethome.com/wp-content/uploads/2018/05/Parrot.jpg",
  "owner_id" => owner1.id
  })
animal9.save()

animal10 = Animal.new({
  "name" => "Tammy",
  "admission_date" => "01/04/19",
  "type" => "Dog",
  "breed" => "Labrador",
  "age" => "4",
  "status" => "Available",
  "child_friendly" => "true",
  "needs_outside_space" => "true",
  "needs_exercise" => "true",
  "profile_pic" => "https://www.petinsurancereview.co.uk/sites/default/files/2018-12/Labrador%20Breed%20guide_0.jpg",
  "owner_id" => owner1.id
  })
animal10.save()
