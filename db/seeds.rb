# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Vendor.create([{
  company:   "Carnival",
  email:   "admin@carnival.com",
  password:   "asdf"
  },
  {
  company:   "Royal Caribbean",
  email:   "admin@royalcaribbean.com",
  password:   "asdf"

  }])



  Ship.create([{
    name: "Carnival Vista",
    tonnage: 133500,
    vendor_id: 1,
    length_in_feet: 1055,
    guest_capacity: 3956,
    onboard_crew: 1450,
    avatar: 'example.png'
  },
  {
    name: "Carnival Breeze",
    tonnage: 130000,
    vendor_id: 1,
    length_in_feet: 1004,
    guest_capacity: 3690,
    onboard_crew: 1386,
    avatar: 'example.png'
  },
  {
    name: "Carnival Paradise",
    tonnage: 70367,
    vendor_id: 1,
    length_in_feet: 855,
    guest_capacity: 2052,
    onboard_crew: 920,
    avatar: 'example.png'
    },
    {
    name: "Carnival Paradise",
    tonnage: 70367,
    vendor_id: 1,
    length_in_feet: 855,
    guest_capacity: 2052,
    onboard_crew: 920,
    avatar: 'example.png'
    },
    {
    name: "Harmony of the Seas",
    tonnage: 226_000,
    vendor_id: 2,
    length_in_feet: 1_187,
    guest_capacity: 6_410,
    onboard_crew: 2_100,
    avatar: 'example.png'
    },
    {
    name: "Allure of the Seas",
    tonnage: 225_282,
    vendor_id: 2,
    length_in_feet: 1_180,
    guest_capacity: 6_296,
    onboard_crew: 2_384,
    avatar: 'example.png'
    },
    {
    name: "Freedom of the Seas",
    tonnage: 154_407,
    vendor_id: 2,
    length_in_feet: 1_112,
    guest_capacity: 4_515,
    onboard_crew: 1_360,
    avatar: 'example.png'
    }])

    User.create([{
      username:   "asdf",
      first_name:   "Ed",
      last_name:   "Toro",
      dob:     DateTime.new(1980, 5, 16),
      country:   "United States",
      address1:   "400 NW 26th Street",
      address2:   "",
      region:   "Miami FL",
      postal_code:   "33123",
      tel:   "305-555-555",
      email:   "ed@wyncode.co",
      password:   "asdf"
      },
      {
      username:   "susan",
      first_name:   "Susan",
      last_name:   "Davies",
      dob:     DateTime.new(1980, 5, 16),
      country:   "United States",
      address1:   "400 NW 26th Street",
      address2:   "",
      region:   "Miami FL",
      postal_code:   "33123",
      tel:   "305-555-5555",
      email:   "susan@wyncode.co",
      password:   "asdf"
      },
      {
      username:   "gabo",
      first_name:   "Gabo",
      last_name:   "Martinez",
      dob:     DateTime.new(1980, 5, 16),
      country:   "United States",
      address1:   "400 NW 26th Street",
      address2:   "",
      region:   "Miami FL",
      postal_code:   "33123",
      tel:   "305-555-5555",
      email:   "gabo@wyncode.co",
      password:   "asdf"
      },
      {
      username:   "sam",
      first_name:   "Sam",
      last_name:   "Smith",
      dob:     DateTime.new(1980, 5, 16),
      country:   "United States",
      address1:   "400 NW 26th Street",
      address2:   "",
      region:   "Miami FL",
      postal_code:   "33123",
      tel:   "305-555-5555",
      email:   "sam@wyncode.co",
      password:   "asdf"
      }])

      Package.create([{
        itinerary:   "Bahamas",
        start_date:   DateTime.new(2016, 6, 3),
        end_date:     DateTime.new(2016, 6, 6),
        duration:     "3 days",
        price:   599.99,
        rooms:   1,
        people: 3,
        room_type: "Balcony Room",
        avatar: "example.png",
        vendor_id: 1,
        ship_id: 1
        },
        {
        itinerary:   "Grand Cayman",
        start_date:   DateTime.new(2016, 5, 27),
        end_date:     DateTime.new(2016, 6, 1),
        duration:     "5 days",
        price:   899.99,
        rooms:   1,
        people: 2,
        room_type: "Spa Room",
        avatar: "example.png",
        vendor_id: 1,
        ship_id: 2
        },
        {
        itinerary:   "Cozumel",
        start_date:   DateTime.new(2016, 5, 27),
        end_date:     DateTime.new(2016, 5, 30),
        duration:     "3 days",
        price:   399.99,
        rooms:   1,
        people: 2,
        room_type: "Interior Cabin",
        avatar: "example.png",
        vendor_id: 2,
        ship_id: 6,
        booked_at: Date.new(2016,4,28)
        },
        {
        itinerary:   "Jamaica",
        start_date:   DateTime.new(2016, 6, 1),
        end_date:     DateTime.new(2016, 6, 4),
        duration:     "3 days",
        price:   599.99,
        rooms:   1,
        people: 2,
        room_type: "Spa Room",
        avatar: "example.png",
        vendor_id: 2,
        ship_id: 4,
        user_id: 3,
        booked_at: Date.new(2015,12,28)
        },
        {
        itinerary:   "Turks and Caicos",
        start_date:   DateTime.new(2016, 5, 27),
        end_date:     DateTime.new(2016, 5, 30),
        duration:     "3 days",
        price:   899.99,
        rooms:   1,
        people: 2,
        room_type: "Spa Room",
        avatar: "example.png",
        vendor_id: 2,
        ship_id: 5,
        booked_at: Date.new(2016,5,21)
        },
        {
        itinerary:   "Key West",
        start_date:   DateTime.new(2016, 5, 20),
        end_date:     DateTime.new(2016, 5, 23),
        duration:     "3 days",
        price:   899.99,
        rooms:   1,
        people: 2,
        room_type: "Spa Room",
        avatar: "example.png",
        vendor_id: 2,
        ship_id: 3,
        booked_at: Date.new(2016,5,18)
        }])
