# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Event.destroy_all
Organization.destroy_all
Ticket.destroy_all
User.destroy_all

o1 = Organization.create(name:'Pretty Girlz Rock, Inc.', image: 'https://scontent-dfw5-1.xx.fbcdn.net/v/t1.0-9/37982958_1833885546728562_2099848543677186048_n.jpg?_nc_cat=110&_nc_sid=85a577&_nc_ohc=YN_ZLnXASUgAX-03Dxs&_nc_ht=scontent-dfw5-1.xx&oh=0857ec8ad1093e3fcf02656628a0bb0f&oe=5F27CC17', description: '(PGR). PGR is a non-profit organization geared towards young girls ages 11 – 18 to help them through the growing pains of life as they mature.')
o2 = Organization.create(name:'ABC 13', image: 'https://www.pvamu.edu/wp-content/uploads/2020/06/KTRK-TV-ABC13-logo.jpg', description: 'Commercial Television Station')
o3 = Organization.create(name: 'NFAC', image: 'https://cdn.vox-cdn.com/thumbor/Fvhy9O2IV6xwaFFco4DlVLT3FS0=/1400x1400/filters:format(png)/cdn.vox-cdn.com/uploads/chorus_asset/file/20067828/demonstrators.png', description: "A militia calling out white supermacy groups")

e1 = Event.create(title: "Toiletries Drive", category: "Donations", date: "2020-06-24", address: "200 Morris Pesin Dr, Jersey City, NJ 07305", description: "Lorem random random lorem", image: "https://images.squarespace-cdn.com/content/v1/58ed1f8abe6594788cc63423/1538688635989-ZIDXTXQ03046QUUJMR2D/ke17ZwdGBToddI8pDm48kMfboVgnxaKgpGcwguzTCcd7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UWUymGR9T9tQaZJ91OjctDcNAoi32qhd6HffXL1tmh7GLCwLgRJzBxPM8v-1l46jLA/1+-+Hero.jpg", stage: "future", public: true, organization: o1, qrcode: '')
e2 = Event.create(title: "Fourth of July in Houston", category: "Concert", date: "2020-07-04", address: "6001 Fannin St, Houston, TX 77030", description: "celebration featuring the Houston Symphony", image: "https://assets.simpleviewinc.com/simpleview/image/fetch/c_fill,h_649,q_75,w_1200/https://res.cloudinary.com/simpleview/image/upload/v1455215322/clients/houston/MillerOutdoor_2200w_9ecd8285-874e-46ca-bfe9-8ef6ad0ba030.jpg", stage: "cancel", public: true, organization: o2, qrcode: '')
e3 = Event.create(title: "Fourth of July in Houston", category: "Concert", date: "2020-07-05", address: "virtual", description: "3 hour long virtual celebration featuring the Houston Symphony", image: "https://assets.simpleviewinc.com/simpleview/image/fetch/c_fill,h_649,q_75,w_1200/https://res.cloudinary.com/simpleview/image/upload/v1455215322/clients/houston/MillerOutdoor_2200w_9ecd8285-874e-46ca-bfe9-8ef6ad0ba030.jpg", stage: "future", public: true, organization: o2, qrcode: '')
e4 = Event.create(title: "Downtown Rodeo Parade", category: "Prade", date: "2021-02-28", address: "909 Fannin, Suite 1650 Houston, Texas 77010", description: "Every February since 1938, the nation’s fourth largest city is transformed from a bustling metropolis to a down-home celebration of Western heritage.", image: "https://www.click2houston.com/resizer/0FRRVc-YYgHoMbKbDLdOi5fayug=/1080x720/smart/filters:format(jpeg):strip_exif(true):strip_icc(true):no_upscale(true):quality(65)/arc-anglerfish-arc2-prod-gmg.s3.amazonaws.com/public/TN3Z7T3TTBFAZNU7H27JIUIXMY.jpg", stage: "future", public: true, organization: o2, qrcode: '')
e5 = Event.create(title: "Black Panther Protest", category: "Activism", date: "2020-07-04", address: "3042 Frank Pkwy, Roaring Gap, NC 28668", description: "A march through Stone Mountain Park to challenge white nationalist groups", image: "https://i.ytimg.com/vi/W9PwhmyhYLA/maxresdefault.jpg", stage: "past", public: false, organization: o3, qrcode: '')

u1 = User.create( username: 'eac012', password: '123456', contact: "832-642-3210", age: 19, supporter: "Pretty Girlz Rock, Inc.", role: 0)
u2 = User.create( username: 'test123', password: '123456', contact: "testing@test.com", age: 27, supporter: "Pretty Girlz Rock, Inc.", role: 1)
u3 = User.create( username: 'lbirts', password: '123456', contact: "me@me.com", age: 23, supporter: "NFAC", role: 1)

t1 = Ticket.create( user: u1, event: e1)
t2 = Ticket.create( user: u2, event: e1)
t3 = Ticket.create( user: u2, event: e2)
t4 = Ticket.create( user: u2, event: e3)
t4 = Ticket.create( user: u2, event: e4)
t5 = Ticket.create( user: u3, event: e5)

