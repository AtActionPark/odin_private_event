
foo = User.create(name: "foo")
bar = User.create(name: "bar")
foobar = User.create(name: "foobar")

event1 = foo.events.create(name: "event1", location: "location1",
                       date: DateTime.new(2015,1,1,0,0,0 ))
event2 = foo.events.create(name: "event2", location: "location2",
                       date: DateTime.new(2015,2,1,0,0,0 ))
event3 = foo.events.create(name: "event3", location: "location3",
                       date: DateTime.new(2015,3,1,0,0,0 ))
event4 = bar.events.create(name: "event4", location: "location4",
                       date: DateTime.new(2016,1,1,0,0,0 ))
event5 = bar.events.create(name: "event5", location: "location5",
                       date: DateTime.new(2016,2,1,0,0,0 ))
event6 = bar.events.create(name: "event6", location: "location6",
                       date: DateTime.new(2016,3,1,0,0,0 ))

invite1 = Invite.create(attendee_id: 2, attended_event_id: 1)
invite2 = Invite.create(attendee_id: 3, attended_event_id: 1)
invite3 = Invite.create(attendee_id: 1, attended_event_id: 4)
invite4 = Invite.create(attendee_id: 2, attended_event_id: 2)
invite5 = Invite.create(attendee_id: 3, attended_event_id: 3)
invite6 = Invite.create(attendee_id: 3, attended_event_id: 6)