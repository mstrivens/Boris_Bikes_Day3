User story 1

As a person,
So that I can use a bike,
I'd like a docking station to release a bike.

Nouns: person, bike, docking station
Verbs: use, release

Objects             Messages
person              use_bike
bike                released
docking station     release_bike


User story 2

As a person,
So that I can use a good bike,
I'd like to see if a bike is working

Nouns: person, bike
Verbs: use, see, working

Objects            Messages
person             bike_status
bike               working_not_working


Communication between objects

bike responds to: working_not_working, released, use_bike
docking station responds to: release_bike

person sends message: use_bike, bike_status

Challenge 14 - user story

As a system maintainer,
So that I can plan the distribution of bikes,
I want a docking station to have a default capacity of 20 bikes.

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I'd like to report a bike as broken when I return it.

public          reports_bike
bike            broken?
dock            receive_bike?
