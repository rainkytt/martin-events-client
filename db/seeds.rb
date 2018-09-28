#Adding multiple categories
Category.create([{name: 'Muusika'}, {name: 'Teater' }])
Category.create([{name: 'Sport'}, {name: 'Festival' }])
Category.create([{name: 'EV100'}, {name: 'Film' }])
Category.create([{name: 'Kogupere'}, {name: 'Kinkekaardid' }])
Category.create([{name: 'Varia'}, {name: 'Näitus' }])


#Adding one event
Event.create({
   name: "Lorem ipsum",
   short_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
   long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
   price: 3000,
   date: Date.today + 3.weeks,
   location: "Tartu",
   category: Category.where(name: "Muusika").first
})

Event.create({
   name: "2 kuu ja 3 päeva pärast",
   short_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
   long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
   price: 3000,
   date: Date.today + 2.months + 3.days,
   location: "Tallinn",
   category: Category.where(name: "Teater").first
})

Event.create({
   name: "eelmine aasta",
   short_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
   long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
   price: 3000,
   date: Date.today - 1.years,
   location: "Pärnu",
   category: Category.where(name: "Sport").first
})

Event.create({
   name: "sinu järgneval sünnipäeval",
   short_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit",
   long_description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
   price: 3000,
   date: Date.today + 9.months - 2.weeks - 4.days,
   location: "Narva",
   category: Category.where(name: "Festival").first
})

User.create({email: 'rain.kutt@khk.ee', password: '123123'}).confirm