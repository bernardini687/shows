<<~SRC
  destroy all shows, actors, characters
  create shows: Final Space; Parks and Recreation; The Office; Master of None
  create actors: Aziz, Ansari; Rashida, Jones; Olan, Rogers
  add characters:
    Dev, *, Master of None, Aziz;
    Tom, Haverford, Parks and Recreation, Aziz;
    Ann, Perkins, Parks and Recreation, Rashida;
    Karen, Filippelli, The Office, Rashida;
    Gary, Goodspeed, Final Space, Olan
  done
SRC

puts 'clearing shows'
Show.destroy_all

puts 'clearing actors'
Actor.destroy_all

puts 'clearing characters'
Character.destroy_all

puts 'generating shows'
final_space    = Show.create! name: 'Final Space'
parks_and_rec  = Show.create! name: 'Parks and Recreation'
the_office     = Show.create! name: 'The Office'
master_of_none = Show.create! name: 'Master of None'

puts 'generating actors'
aziz    = Actor.create! first_name: 'Aziz', last_name: 'Ansari'
rashida = Actor.create! first_name: 'Rashida', last_name: 'Jones'
olan    = Actor.create! first_name: 'Olan', last_name: 'Rogers'

puts 'generating characters'
Character.create! first_name: 'Dev', show: master_of_none, actor: aziz
Character.create! first_name: 'Tom', last_name: 'Haverford', show: parks_and_rec, actor: aziz
Character.create! first_name: 'Ann', last_name: 'Perkins', show: parks_and_rec, actor: rashida
Character.create! first_name: 'Karen', last_name: 'Filippelli', show: the_office, actor: rashida
Character.create! first_name: 'Gary', last_name: 'Goodspeed', show: final_space, actor: olan

puts 'done'
