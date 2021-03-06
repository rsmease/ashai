# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Team.destroy_all
Project.destroy_all
TeamMembership.destroy_all
ProjectMembership.destroy_all
Task.destroy_all

jon_snow = User.create(name: "Jon Snow", email: "jsnow@thewall.got", password: "jonsnowcorgicorgi", profile_image_url: "https://i.imgur.com/vqXRTKt.jpg", bio: "elit sed vulputate mi sit amet mauris commodo quis imperdiet massa tincidunt nunc pulvinar sapien et ligula ullamcorper malesuada proin libero nunc consequat interdum varius sit amet mattis vulputate enim nulla aliquet porttitor lacus luctus accumsan tortor posuere ac ut")
dany_targaryen = User.create(name: "Danaerys Targaryen", email: "dtargaryen@dragonstone.got", password: "danaerystargaryencorgicorgi", profile_image_url: "https://i.imgur.com/EIW9JXm.jpg", bio: "ut tortor pretium viverra suspendisse potenti nullam ac tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed viverra tellus in hac habitasse platea dictumst vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue eget")
varys = User.create(name: "Lord Varys", email: "lvarys@dragonstone.got", password: "lordvaryscorgicorgi", profile_image_url: "https://i.imgur.com/fhWyUJA.jpg", bio: "sit amet cursus sit amet dictum sit amet justo donec enim diam vulputate ut pharetra sit amet aliquam id diam maecenas ultricies mi eget mauris pharetra et ultrices neque ornare aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin")
tyrion = User.create(name: "Tyrion Lannister", email: "tlannister@dragonstone.got", password: "tyrionlanniestercorgicorgi", profile_image_url: "https://i.imgur.com/sfcdAg8.jpg", bio: "nunc sed augue lacus viverra vitae congue eu consequat ac felis donec et odio pellentesque diam volutpat commodo sed egestas egestas fringilla phasellus faucibus scelerisque eleifend donec pretium vulputate sapien nec sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae")
khal_drogo = User.create(name: "Khal Drogo", email: "kdrogo@dragonstone.got", password: "khaldrogocorgicorgi", profile_image_url: "https://i.imgur.com/wKyodBS.jpg", bio: "eu non diam phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet enim tortor at auctor urna nunc id cursus metus aliquam eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper eget duis at tellus")
grey_worm = User.create(name: "Grey Worm", email: "gworm@dragonstone.got", password: "greywormcorgicorgi", profile_image_url: "https://i.imgur.com/P41c8tM.jpg", bio: "erat pellentesque adipiscing commodo elit at imperdiet dui accumsan sit amet nulla facilisi morbi tempus iaculis urna id volutpat lacus laoreet non curabitur gravida arcu ac tortor dignissim convallis aenean et tortor at risus viverra adipiscing at in tellus integer")
jorah_mormont = User.create(name: "Jorah Mormont", email: "jmormont@dragonstone.got", password: "jmormontcorgicorgi", profile_image_url: "https://i.imgur.com/ejznV7Y.jpg", bio: "dictumst quisque sagittis purus sit amet volutpat consequat mauris nunc congue nisi vitae suscipit tellus mauris a diam maecenas sed enim ut sem viverra aliquet eget sit amet tellus cras adipiscing enim eu turpis egestas pretium aenean pharetra magna ac")
drogon = User.create(name: "Drogon", email: "drogon@dragonstone.got", password: "drogoncorgicorgi", profile_image_url: "https://i.imgur.com/asafPVn.jpg", bio: "malesuada pellentesque elit eget gravida cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus mauris vitae ultricies leo integer malesuada nunc vel risus commodo viverra maecenas accumsan lacus vel facilisis volutpat est velit egestas dui id ornare")
ellaria_sand = User.create(name: "Ellaria Sand", email: "esand@dragonstone.got", password: "ellariasandcorgicorgi", profile_image_url: "https://i.imgur.com/NjdH3F4.jpg", bio: "purus in massa tempor nec feugiat nisl pretium fusce id velit ut tortor pretium viverra suspendisse potenti nullam ac tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed viverra tellus in hac habitasse platea dictumst vestibulum rhoncus est pellentesque")

jon_snow_task1 = Task.create(assigner_id: jon_snow.id, assignee_id: jon_snow.id, title: "Fight with Lannisters", completion_status: false);
jon_snow_task2 = Task.create(assigner_id: jon_snow.id, assignee_id: jon_snow.id, title: "Explore the woods", completion_status: false);
jon_snow_task3 = Task.create(assigner_id: jon_snow.id, assignee_id: jon_snow.id, title: "Submit pond permitting paperwork", completion_status: false);

dany_targaryen_task1 = Task.create(assigner_id: dany_targaryen.id, assignee_id: dany_targaryen.id, title: "Watch fewer Netflix documentaries", completion_status: false)
dany_targaryen_task2 = Task.create(assigner_id: dany_targaryen.id, assignee_id: dany_targaryen.id, title: "Remind Drogon to brush his teeth", completion_status: false)
dany_targaryen_task3 = Task.create(assigner_id: dany_targaryen.id, assignee_id: dany_targaryen.id, title: "Review architectural proposals for creation of new loft at Dragonstone", completion_status: false)

varys_task1 = Task.create(assigner_id: varys.id, assignee_id: varys.id, title: "Shave head", completion_status: false)
varys_task2 = Task.create(assigner_id: varys.id, assignee_id: varys.id, title: "Pick up more patchouli from market", completion_status: false)
varys_task3 = Task.create(assigner_id: varys.id, assignee_id: varys.id, title: "Meddle in court politics that seem interest", completion_status: false)

tyrion_task1 = Task.create(assigner_id: tyrion.id, assignee_id: tyrion.id, title: "Daily: Apply scar removal cream", completion_status: false)
tyrion_task2 = Task.create(assigner_id: tyrion.id, assignee_id: tyrion.id, title: "Pick up more Sauvignon Blanc from BevMo", completion_status: false)
tyrion_task3 = Task.create(assigner_id: tyrion.id, assignee_id: tyrion.id, title: "Practice Dornish by reading Dornish newspapers", completion_status: false)

khal_drogo_task1 = Task.create(assigner_id: khal_drogo.id, assignee_id: khal_drogo.id, title: "Grunt, growl and be general unpleasant to strangers", completion_status: false)
khal_drogo_task2 = Task.create(assigner_id: khal_drogo.id, assignee_id: khal_drogo.id, title: "Remove burdocks from ponytail", completion_status: false)
khal_drogo_task3 = Task.create(assigner_id: khal_drogo.id, assignee_id: khal_drogo.id, title: "Write memo on proposed settlement of khalars in Burbank", completion_status: false)
khal_drogo_task4 = Task.create(assigner_id: khal_drogo.id, assignee_id: khal_drogo.id, title: "Send thank you note to Baelish for the lovely tea kettle", completion_status: false)

grey_worm_task1 = Task.create(assigner_id: grey_worm.id, assignee_id: grey_worm.id, title: "Morning calisthetics", completion_status: false)
grey_worm_task2 = Task.create(assigner_id: grey_worm.id, assignee_id: grey_worm.id, title: "Patrol main walkways", completion_status: false)
grey_worm_task3 = Task.create(assigner_id: grey_worm.id, assignee_id: grey_worm.id, title: "Lead soldiers into battle", completion_status: false)

jorah_mormont_task1 = Task.create(assigner_id: jorah_mormont.id, assignee_id: jorah_mormont.id, title: "Finish reading 'Men are from Mars, Queens are from Venus'", completion_status: false)
jorah_mormont_task2 = Task.create(assigner_id: jorah_mormont.id, assignee_id: jorah_mormont.id, title: "Polish sword", completion_status: false)
jorah_mormont_task3 = Task.create(assigner_id: jorah_mormont.id, assignee_id: jorah_mormont.id, title: "Meet with Varys regarding military parade planning", completion_status: false)

drogon_task1 = Task.create(assigner_id: drogon.id, assignee_id: drogon.id, title: "Growl and breath fire", completion_status: false)
drogon_task2 = Task.create(assigner_id: drogon.id, assignee_id: drogon.id, title: "Politely ask Viseryion to stop picking on me", completion_status: false)
drogon_task3 = Task.create(assigner_id: drogon.id, assignee_id: drogon.id, title: "Share goat carcass with Dany", completion_status: false)

ellaria_sand_task1 = Task.create(assigner_id: ellaria_sand.id, assignee_id: ellaria_sand.id, title: "Clean sand out of socks and blouses", completion_status: false)
ellaria_sand_task2 = Task.create(assigner_id: ellaria_sand.id, assignee_id: ellaria_sand.id, title: "Renew subscription of Amazon Prime", completion_status: false)
ellaria_sand_task3 = Task.create(assigner_id: ellaria_sand.id, assignee_id: ellaria_sand.id, title: "Daily: seaside jogging", completion_status: false)

baelish = User.create(name: "Lord Baelish", email: "lfinger@winterfell.got", password: "lordbaelishcorgicorgi", profile_image_url: "https://i.imgur.com/UNrY92q.jpg", bio: "amet cursus sit amet dictum sit amet justo donec enim diam vulputate ut pharetra sit amet aliquam id diam maecenas ultricies mi eget mauris pharetra et ultrices neque ornare aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin sagittis")
melisandre = User.create(name: "Melisandre", email: "melisandre@winterfell.got", password: "melisandrecorgicorgi", profile_image_url: "https://i.imgur.com/jO1PFgM.jpg", bio: "malesuada pellentesque elit eget gravida cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus mauris vitae ultricies leo integer malesuada nunc vel risus commodo viverra maecenas accumsan lacus vel facilisis volutpat est velit egestas dui id ornare")
sansa = User.create(name: "Sansa Stark", email: "sstark@winterfell.got", password: "sansastarkcorgicorgi", profile_image_url: "https://i.imgur.com/ogNploS.jpg", bio: "habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas sed tempus urna et pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna eget est lorem ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant morbi tristique")
arya = User.create(name: "Arya Stark", email: "astark@winterfell.got", password: "aryastarkcorgicorgi", profile_image_url: "https://i.imgur.com/gr2c1u8.jpg", bio: "at in tellus integer feugiat scelerisque varius morbi enim nunc faucibus a pellentesque sit amet porttitor eget dolor morbi non arcu risus quis varius quam quisque id diam vel quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere")
ned_stark = User.create(name: "Ned Stark", email: "nstark@winterfell.got", password: "nedstarkcorgicorgi", profile_image_url: "https://i.imgur.com/MPUttaL.jpg", bio: "posuere morbi leo urna molestie at elementum eu facilisis sed odio morbi quis commodo odio aenean sed adipiscing diam donec adipiscing tristique risus nec feugiat in fermentum posuere urna nec tincidunt praesent semper feugiat nibh sed pulvinar proin gravida hendrerit")
catelyn = User.create(name: "Catelyn Stark", email: "cstark@winterfell.got", password: "catelynstarkcorgicorgi", profile_image_url: "https://i.imgur.com/LX2Nk3C.jpg", bio: "purus in massa tempor nec feugiat nisl pretium fusce id velit ut tortor pretium viverra suspendisse potenti nullam ac tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed viverra tellus in hac habitasse platea dictumst vestibulum rhoncus est pellentesque")
robb = User.create(name: "Robb Stark", email: "rstark@winterfell.got", password: "robstarkcorgicorgi", profile_image_url: "https://i.imgur.com/GkqTAdI.jpg", bio: "malesuada fames ac turpis egestas sed tempus urna et pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna eget est lorem ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant morbi tristique senectus et netus et malesuada fames ac")
brienne = User.create(name: "Lady Brienne", email: "brienne@winterfell.got", password: "ladybriennecorgicorgi", profile_image_url: "https://i.imgur.com/3VpqlkY.jpg", bio: "lorem donec massa sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan in nisl nisi scelerisque eu ultrices vitae auctor eu augue ut lectus arcu bibendum")

baelish_task1 = Task.create(assigner_id: baelish.id, assignee_id: baelish.id, title: "Review exepense reports for project managers", completion_status: false)
baelish_task2 = Task.create(assigner_id: baelish.id, assignee_id: baelish.id, title: "Meddle in various Stark endeavors", completion_status: false)
baelish_task3 = Task.create(assigner_id: baelish.id, assignee_id: baelish.id, title: "Buy more styling cream on Amazon", completion_status: false)

melisandre_task1 = Task.create(assigner_id: melisandre.id, assignee_id: melisandre.id, title: "Make predictions about the outcome of important battles", completion_status: false)
melisandre_task2 = Task.create(assigner_id: melisandre.id, assignee_id: melisandre.id, title: "Report sales earnings for third quarter to Brienne", completion_status: false)
melisandre_task3 = Task.create(assigner_id: melisandre.id, assignee_id: melisandre.id, title: "Speak with Baelish regarding the smell of his hair cream", completion_status: false)

sansa_task1 = Task.create(assigner_id: sansa.id, assignee_id: sansa.id, title: "Daily: write in secret journal", completion_status: false)
sansa_task2 = Task.create(assigner_id: sansa.id, assignee_id: sansa.id, title: "Monitor movements of cute boy from Tarth", completion_status: false)
sansa_task3 = Task.create(assigner_id: sansa.id, assignee_id: sansa.id, title: "Meet with ministers regarding the public distribution of barley", completion_status: false)

arya_task1 = Task.create(assigner_id: arya.id, assignee_id: arya.id, title: "Practice swordfighting with Brienne", completion_status: false)
arya_task2 = Task.create(assigner_id: arya.id, assignee_id: arya.id, title: "Hunt for fowl in the nearby woods", completion_status: false)
arya_task3 = Task.create(assigner_id: arya.id, assignee_id: arya.id, title: "Perfect Jorah Mormont mask for future use", completion_status: false)

ned_stark_task1 = Task.create(assigner_id: ned_stark.id, assignee_id: ned_stark.id, title: "Daily: trim nose hairs", completion_status: false)
ned_stark_task2 = Task.create(assigner_id: ned_stark.id, assignee_id: ned_stark.id, title: "Advise council on recent movements of wildlings further south", completion_status: false)
ned_stark_task3 = Task.create(assigner_id: ned_stark.id, assignee_id: ned_stark.id, title: "Purchase roses for Cat to celebrate 22nd anniversary", completion_status: false)

catelyn_task1 = Task.create(assigner_id: catelyn.id, assignee_id: catelyn.id, title: "Daily: check on Bran", completion_status: false)
catelyn_task2 = Task.create(assigner_id: catelyn.id, assignee_id: catelyn.id, title: "Take Sansa to the dentist", completion_status: false)
catelyn_task3 = Task.create(assigner_id: catelyn.id, assignee_id: catelyn.id, title: "Purchase beard brush for Ned to celebrate 22nd anniversary", completion_status: false)

robb_task1 = Task.create(assigner_id: robb.id, assignee_id: robb.id, title: "Purchase engagement ring", completion_status: false)
robb_task2 = Task.create(assigner_id: robb.id, assignee_id: robb.id, title: "Take rug to dry cleaner to remove stains left by the dog", completion_status: false)
robb_task3 = Task.create(assigner_id: robb.id, assignee_id: robb.id, title: "Speak with mother regarding the out of pocket expenses from the hunting expedition", completion_status: false)

brienne_task1 = Task.create(assigner_id: brienne.id, assignee_id: brienne.id, title: "Practice swordfighting with Arya", completion_status: false)
brienne_task2 = Task.create(assigner_id: brienne.id, assignee_id: brienne.id, title: "Meet with Robb regarding tax on alcohol", completion_status: false)
brienne_task3 = Task.create(assigner_id: brienne.id, assignee_id: brienne.id, title: "Remind Jaime to take that meeting with the High Sparrow", completion_status: false)

cersei = User.create(name: "Cersei Lannister", email: "cersei@kingslanding.got", password: "cerseilannistercorgicorgi", profile_image_url: "https://i.imgur.com/8fjPIqt.jpg", bio:"lorem donec massa sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan in nisl nisi scelerisque eu ultrices vitae auctor eu augue ut lectus arcu bibendum")
jaime = User.create(name: "Jamie Lannister", email: "jlannister@kingslanding.got", password: "jamielannistercorgicorgi", profile_image_url: "https://i.imgur.com/LmtOiEN.jpg", bio:"aliquam id diam maecenas ultricies mi eget mauris pharetra et ultrices neque ornare aenean euismod elementum nisi quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis rhoncus urna neque viverra justo nec ultrices dui sapien eget mi proin sed")
tywin = User.create(name: "Tywin Lannister", email: "tlannister@kingslanding.got", password: "tywinlannistercorgicorgi", profile_image_url: "https://i.imgur.com/cdmDgGO.jpg", bio:"sapien nec sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales ut eu sem integer vitae justo eget magna fermentum iaculis eu non diam phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet enim tortor")
joffrey = User.create(name: "Joffrey Baratheon", email: "jbaratheon@kingslanding.got", password: "joffreybaratheoncorgicorgi", profile_image_url: "https://i.imgur.com/GqhOAGb.jpg", bio:"ultrices sagittis orci a scelerisque purus semper eget duis at tellus at urna condimentum mattis pellentesque id nibh tortor id aliquet lectus proin nibh nisl condimentum id venenatis a condimentum vitae sapien pellentesque habitant morbi tristique senectus et netus et")
tommen = User.create(name: "Tommen Baratheon", email: "tbaratheon@kingslanding.got", password: "tommenbaratheoncorgicorgi", profile_image_url: "https://i.imgur.com/Nvu6bQS.jpg", bio:"sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper eget duis at tellus at urna condimentum mattis pellentesque id nibh tortor id aliquet lectus proin nibh nisl condimentum id venenatis a condimentum vitae sapien pellentesque habitant morbi tristique senectus et")
the_mountain = User.create(name: "Gregor Clegane", email: "gclegane@kingslanding.got", password: "gregorcleganecorgicorgi", profile_image_url: "https://i.imgur.com/VcvnWWJ.jpg", bio:"eu ultrices vitae auctor eu augue ut lectus arcu bibendum at varius vel pharetra vel turpis nunc eget lorem dolor sed viverra ipsum nunc aliquet bibendum enim facilisis gravida neque convallis a cras semper auctor neque vitae tempus quam pellentesque")
euron_greyjoy = User.create(name: "Euron Greyjoy", email: "egreyjoy@kingslanding.got", password: "eurongreyjoycorgicorgi", profile_image_url: "https://i.imgur.com/VPlSK6r.jpg", bio:"auctor eu augue ut lectus arcu bibendum at varius vel pharetra vel turpis nunc eget lorem dolor sed viverra ipsum nunc aliquet bibendum enim facilisis gravida neque convallis a cras semper auctor neque vitae tempus quam pellentesque nec nam aliquam")
qyburn = User.create(name: "Maester Qyburn", email: "qyburn@kingslanding.got", password: "maesterqyburncorgicorgi", profile_image_url: "https://i.imgur.com/191cQqG.jpg", bio: "posuere morbi leo urna molestie at elementum eu facilisis sed odio morbi quis commodo odio aenean sed adipiscing diam donec adipiscing tristique risus nec feugiat in fermentum posuere urna nec tincidunt praesent semper feugiat nibh sed pulvinar proin gravida hendrerit")
ramsay_bolton = User.create(name: "Ramsay Bolton", email: "rbolton@kingslanding.got", password: "ramsayboltoncorgicorgi", profile_image_url: "https://i.imgur.com/kwskzVe.jpg", bio: "eu non diam phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet enim tortor at auctor urna nunc id cursus metus aliquam eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis orci a scelerisque purus semper eget duis at tellus")

cersei_task1 = Task.create(assigner_id: cersei.id, assignee_id: cersei.id, title: "Attend wedding ceremoney for Lord Mordal", completion_status: false)
cersei_task2 = Task.create(assigner_id: cersei.id, assignee_id: cersei.id, title: "Learn how to make an iOS app to track enemies", completion_status: false)
cersei_task3 = Task.create(assigner_id: cersei.id, assignee_id: cersei.id, title: "Request progress report on lethal glitter prototype from Qyburn", completion_status: false)

jaime_task1 = Task.create(assigner_id: jaime.id, assignee_id: jaime.id, title: "Practice swordfighting with Bronn", completion_status: false)
jaime_task2 = Task.create(assigner_id: jaime.id, assignee_id: jaime.id, title: "Daily: read digest of army movements", completion_status: false)
jaime_task3 = Task.create(assigner_id: jaime.id, assignee_id: jaime.id, title: "Purchase more Play-Doh, champagne glasses for secret ritual", completion_status: false)

tywin_task1 = Task.create(assigner_id: tywin.id, assignee_id: tywin.id, title: "Offer feedback on Dornish military strategy in humorous memo to Small Council", completion_status: false)
tywin_task2 = Task.create(assigner_id: tywin.id, assignee_id: tywin.id, title: "Polish bedposts, desks in bedroom", completion_status: false)
tywin_task3 = Task.create(assigner_id: tywin.id, assignee_id: tywin.id, title: "Talk to realtor about selling third house in Qarth", completion_status: false)

joffrey_task1 = Task.create(assigner_id: joffrey.id, assignee_id: joffrey.id, title: "Reorder crossbow bolts", completion_status: false)
joffrey_task2 = Task.create(assigner_id: joffrey.id, assignee_id: joffrey.id, title: "Practice smiling in front of a mirror", completion_status: false)
joffrey_task3 = Task.create(assigner_id: joffrey.id, assignee_id: joffrey.id, title: "Be less forgiving of mistakes made by servants", completion_status: false)

tommen_task1 = Task.create(assigner_id: tommen.id, assignee_id: tommen.id, title: "Ask mom to buy more Pokemon cards", completion_status: false)
tommen_task2 = Task.create(assigner_id: tommen.id, assignee_id: tommen.id, title: "Ask mom to buy the new PS4 Pro console", completion_status: false)
tommen_task3 = Task.create(assigner_id: tommen.id, assignee_id: tommen.id, title: "Daily: brush teeth, floss with sister's hair", completion_status: false)

the_mountain_task1 = Task.create(assigner_id: the_mountain.id, assignee_id: the_mountain.id, title: "Remain silent until vengeance is taken", completion_status: false)
the_mountain_task2 = Task.create(assigner_id: the_mountain.id, assignee_id: the_mountain.id, title: "Send threatening letter to brother", completion_status: false)
the_mountain_task3 = Task.create(assigner_id: the_mountain.id, assignee_id: the_mountain.id, title: "Check in on prisoners to make sure they are still unhappy", completion_status: false)

euron_greyjoy_task1 = Task.create(assigner_id: euron_greyjoy.id, assignee_id: euron_greyjoy.id, title: "Weekly: remove brine from ship", completion_status: false)
euron_greyjoy_task2 = Task.create(assigner_id: euron_greyjoy.id, assignee_id: euron_greyjoy.id, title: "Stock up on wine, Doritos before leaving port next Thursday", completion_status: false)
euron_greyjoy_task3 = Task.create(assigner_id: euron_greyjoy.id, assignee_id: euron_greyjoy.id, title: "Meet with queen regarding international regulations on slave trade", completion_status: false)

qyburn_task1 = Task.create(assigner_id: qyburn.id, assignee_id: qyburn.id, title: "Try new pumpkin substrate as a mechanism to combat degradation of new lethal glittle compound", completion_status: false)
qyburn_task2 = Task.create(assigner_id: qyburn.id, assignee_id: qyburn.id, title: "Ask children to clean blood, assorted chemicals off of laborator floor", completion_status: false)
qyburn_task3 = Task.create(assigner_id: qyburn.id, assignee_id: qyburn.id, title: "Check in with the Mountain to confirm vitals still OK", completion_status: false)

ramsay_bolton_task1 = Task.create(assigner_id: ramsay_bolton.id, assignee_id: ramsay_bolton.id, title: "Buy more dogfood", completion_status: false)
ramsay_bolton_task2 = Task.create(assigner_id: ramsay_bolton.id, assignee_id: ramsay_bolton.id, title: "Attend state funeral for mother, father", completion_status: false)
ramsay_bolton_task3 = Task.create(assigner_id: ramsay_bolton.id, assignee_id: ramsay_bolton.id, title: "Write witty, threatening tweets about recent state policy changes", completion_status: false)

jeor_mormont = User.create(name: "Jeor Mormont", email: "jmormont@thewall.got", password: "ramsayboltoncorgicorgi", profile_image_url: "https://i.imgur.com/eG4JWMc.jpg", bio: "purus in massa tempor nec feugiat nisl pretium fusce id velit ut tortor pretium viverra suspendisse potenti nullam ac tortor vitae purus faucibus ornare suspendisse sed nisi lacus sed viverra tellus in hac habitasse platea dictumst vestibulum rhoncus est pellentesque")
sam_tarly = User.create(name: "Sam Tarly", email: "starly@thewall.got", password: "samtarlycorgicorgi", profile_image_url: "https://i.imgur.com/iJcz60e.jpg", bio: "habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas sed tempus urna et pharetra pharetra massa massa ultricies mi quis hendrerit dolor magna eget est lorem ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant morbi tristique")
alliser_thorne = User.create(name: "Alliser Thorne", email: "athorne@thewall.got", password: "allisterthornecorgicorgi", profile_image_url: "https://i.imgur.com/6M2IRgx.jpg", bio: "sapien nec sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae nunc sed velit dignissim sodales ut eu sem integer vitae justo eget magna fermentum iaculis eu non diam phasellus vestibulum lorem sed risus ultricies tristique nulla aliquet enim tortor")
ygritte = User.create(name: "Ygritte", email: "ygritte@thewall.got", password: "ygrittecorgicorgi", profile_image_url: "https://i.imgur.com/4HmFSyj.jpg", bio: "at in tellus integer feugiat scelerisque varius morbi enim nunc faucibus a pellentesque sit amet porttitor eget dolor morbi non arcu risus quis varius quam quisque id diam vel quam elementum pulvinar etiam non quam lacus suspendisse faucibus interdum posuere")
aemon = User.create(name: "Maester Aemon", email: "maemon@thewall.got", password: "maesteraemoncorgicorgi", profile_image_url: "https://i.imgur.com/cLxmxDJ.jpg", bio: "lorem donec massa sapien faucibus et molestie ac feugiat sed lectus vestibulum mattis ullamcorper velit sed ullamcorper morbi tincidunt ornare massa eget egestas purus viverra accumsan in nisl nisi scelerisque eu ultrices vitae auctor eu augue ut lectus arcu bibendum")

jeor_mormont_task1 = Task.create(assigner_id: jeor_mormont.id, assignee_id: jeor_mormont.id, title: "Dye beard to hide gray hairs", completion_status: false)
jeor_mormont_task2 = Task.create(assigner_id: jeor_mormont.id, assignee_id: jeor_mormont.id, title: "Deliver performance reviews to Manny, Wiegert, Bobson", completion_status: false)
jeor_mormont_task3 = Task.create(assigner_id: jeor_mormont.id, assignee_id: jeor_mormont.id, title: "Read letter from Jorah", completion_status: false)

sam_tarly_task1 = Task.create(assigner_id: sam_tarly.id, assignee_id: sam_tarly.id, title: "Take notes on petrification of dragon bones", completion_status: false)
sam_tarly_task2 = Task.create(assigner_id: sam_tarly.id, assignee_id: sam_tarly.id, title: "Learn Japanese with Duolingo", completion_status: false)
sam_tarly_task3 = Task.create(assigner_id: sam_tarly.id, assignee_id: sam_tarly.id, title: "Daily: 30 minutes, elliptical", completion_status: false)

alliser_thorne_task1 = Task.create(assigner_id: alliser_thorne.id, assignee_id: alliser_thorne.id, title: "Play chess with Aemon", completion_status: false)
alliser_thorne_task2 = Task.create(assigner_id: alliser_thorne.id, assignee_id: alliser_thorne.id, title: "Submit report on rebuilding requirements near northwestern side of fort", completion_status: false)
alliser_thorne_task3 = Task.create(assigner_id: alliser_thorne.id, assignee_id: alliser_thorne.id, title: "Take jazz dancing lessons", completion_status: false)

ygritte_task1 = Task.create(assigner_id: ygritte.id, assignee_id: ygritte.id, title: "Star in Horizon: Zero Dawn video game", completion_status: false)
ygritte_task2 = Task.create(assigner_id: ygritte.id, assignee_id: ygritte.id, title: "Pick up more dates, turnips from the market", completion_status: false)
ygritte_task3 = Task.create(assigner_id: ygritte.id, assignee_id: ygritte.id, title: "Plan for Priscilla's baby shower", completion_status: false)
ygritte_task4 = Task.create(assigner_id: ygritte.id, assignee_id: ygritte.id, title: "Daily: practice archery before grounds get busy", completion_status: false)

aemon_task1 = Task.create(assigner_id: aemon.id, assignee_id: aemon.id, title: "Read Chapter 7 of Moby Dick", completion_status: false)
aemon_task2 = Task.create(assigner_id: aemon.id, assignee_id: aemon.id, title: "Send homemade cookies to granddaughter", completion_status: false)
aemon_task3 = Task.create(assigner_id: aemon.id, assignee_id: aemon.id, title: "Check on IRA returns", completion_status: false)

house_targaryen = Team.create(team_owner_id: jon_snow.id, name: "House Targaryen", description: "Welcome to House Targaryen");
house_start = Team.create(team_owner_id: robb.id, name: "House Stark", description: "Welcome to House Stark")
house_lannister = Team.create(team_owner_id: cersei.id, name: "House Lannister", description: "Welcome to House Lannister");
nights_watch = Team.create(team_owner_id: jon_snow.id, name: "The Night's Watch", description: "Welcome to the Night's Watch");

team_membership1 = TeamMembership.create(member_id: jon_snow.id, team_id: house_targaryen.id)
team_membership2 = TeamMembership.create(member_id: dany_targaryen.id, team_id: house_targaryen.id)
team_membership3 = TeamMembership.create(member_id: varys.id, team_id: house_targaryen.id)
team_membership4 = TeamMembership.create(member_id: tyrion.id, team_id: house_targaryen.id)
team_membership5 = TeamMembership.create(member_id: khal_drogo.id, team_id: house_targaryen.id)
team_membership6 = TeamMembership.create(member_id: grey_worm.id, team_id: house_targaryen.id)
team_membership7 = TeamMembership.create(member_id: jorah_mormont.id, team_id: house_targaryen.id)
team_membership_8 = TeamMembership.create(member_id: ellaria_sand.id, team_id: house_targaryen.id)
team_membership_9 = TeamMembership.create(member_id: drogon.id, team_id: house_targaryen.id)

team_membership8 = TeamMembership.create(member_id: baelish.id, team_id: house_start.id)
team_membership9 = TeamMembership.create(member_id: melisandre.id, team_id: house_start.id)
team_membership10 = TeamMembership.create(member_id: sansa.id, team_id: house_start.id)
team_membership11 = TeamMembership.create(member_id: arya.id, team_id: house_start.id)
team_membership12 = TeamMembership.create(member_id: ned_stark.id, team_id: house_start.id)
team_membership13 = TeamMembership.create(member_id: catelyn.id, team_id: house_start.id)
team_membership14 = TeamMembership.create(member_id: robb.id, team_id: house_start.id)
team_membership_15 = TeamMembership.create(member_id: jon_snow.id, team_id: house_start.id)
team_membership_16 = TeamMembership.create(member_id: brienne.id, team_id: house_start.id)

team_membership15 = TeamMembership.create(member_id: cersei.id, team_id: house_lannister.id)
team_membership16 = TeamMembership.create(member_id: jaime.id, team_id: house_lannister.id)
team_membership17 = TeamMembership.create(member_id: tywin.id, team_id: house_lannister.id)
team_membership18 = TeamMembership.create(member_id: joffrey.id, team_id: house_lannister.id)
team_membership19 = TeamMembership.create(member_id: tommen.id, team_id: house_lannister.id)
team_membership20 = TeamMembership.create(member_id: the_mountain.id, team_id: house_lannister.id)
team_membership21 = TeamMembership.create(member_id: euron_greyjoy.id, team_id: house_lannister.id)
team_membership_21 = TeamMembership.create(member_id: qyburn.id, team_id: house_lannister.id)
team_membership_22 = TeamMembership.create(member_id: ramsay_bolton.id, team_id: house_lannister.id)

team_membership23 = TeamMembership.create(member_id: aemon.id, team_id: nights_watch.id)
team_membership24 = TeamMembership.create(member_id: ygritte.id, team_id: nights_watch.id)
team_membership25 = TeamMembership.create(member_id: alliser_thorne.id, team_id: nights_watch.id)
team_membership26 = TeamMembership.create(member_id: sam_tarly.id, team_id: nights_watch.id)
team_membership27 = TeamMembership.create(member_id: jeor_mormont.id, team_id: nights_watch.id)
team_membership28 = TeamMembership.create(member_id: jon_snow.id, team_id: nights_watch.id)

robb_wedding = Project.create(project_owner_id: catelyn.id, name: "Wedding for Robb", description: "Tiger team for planning Robb's wedding. So proud!")
jousting = Project.create(project_owner_id: the_mountain.id, name: "Jousting Tournament", description: "Planning committee for Jousting Tournament at King's Landing.")
book_club = Project.create(project_owner_id: tyrion.id, name: "Weekly Book Club", description: "Logistics and planning for Seven Kingdom's Weekly Book Club.")
bear_fur = Project.create(project_owner_id: brienne.id, name: "Bear Fur Market Analysis", description: "Ongoing market analysis of bear fur in the seven kingdoms.")
onion_juice = Project.create(project_owner_id: qyburn.id, name: "Pharmacological Study - Onion Juice", description: "Research into medical and weapons applications of onion juice.")
dragon_birthday = Project.create(project_owner_id: jon_snow.id, name: "Birthday Party for Drogon", description: "Logistics and planning for Drogon's birthday party.")
gazebo = Project.create(project_owner_id: alliser_thorne.id, name: "Walltop Gazebo and Hottub", description: "Project management of walltop gazebo and hottub construction.")

project_membership1 = ProjectMembership.create(member_id: jon_snow.id, project_id: robb_wedding.id)
project_membership2 = ProjectMembership.create(member_id: sansa.id, project_id: robb_wedding.id)
project_membership3 = ProjectMembership.create(member_id: ned_stark.id, project_id: robb_wedding.id)
project_membership4 = ProjectMembership.create(member_id: catelyn.id, project_id: robb_wedding.id)

wedding_task1 = Task.create(assigner_id: jon_snow.id, assignee_id: sansa.id, title: "Bake cakes", completion_status: false, project_id: robb_wedding.id);
wedding_task2 = Task.create(assigner_id: jon_snow.id, assignee_id: ned_stark.id, title: "Return from dead", completion_status: false, project_id: robb_wedding.id);
wedding_task3 = Task.create(assigner_id: jon_snow.id, assignee_id: catelyn.id, title: "Invite family", completion_status: false, project_id: robb_wedding.id);
wedding_task4 = Task.create(assigner_id: jon_snow.id, assignee_id: ned_stark.id, title: "Meet with wedding planner to get good price on minstrel performance", completion_status: false, project_id: robb_wedding.id);
wedding_task5 = Task.create(assigner_id: jon_snow.id, assignee_id: sansa.id, title: "Update wedding registry on Amazon", completion_status: false, project_id: robb_wedding.id);

project_membership5 = ProjectMembership.create(member_id: baelish.id, project_id: jousting.id)
project_membership6 = ProjectMembership.create(member_id: khal_drogo.id, project_id: jousting.id)
project_membership7 = ProjectMembership.create(member_id: the_mountain.id, project_id: jousting.id)
project_membership8 = ProjectMembership.create(member_id: euron_greyjoy.id, project_id: jousting.id)
project_membership9 = ProjectMembership.create(member_id: jaime.id, project_id: jousting.id)

jousting_task1 = Task.create(assigner_id: baelish.id, assignee_id: khal_drogo.id, title: "Introduce Queen to blood riders", completion_status: false, project_id: jousting.id);
jousting_task2 = Task.create(assigner_id: baelish.id, assignee_id: the_mountain.id, title: "Give pedicures to horses", completion_status: false, project_id: jousting.id);
jousting_task3 = Task.create(assigner_id: jaime.id, assignee_id: jaime.id, title: "Pay catering company", completion_status: false, project_id: jousting.id);

project_membership10 = ProjectMembership.create(member_id: varys.id, project_id: book_club.id)
project_membership12 = ProjectMembership.create(member_id: tyrion.id, project_id: book_club.id)
project_membership13 = ProjectMembership.create(member_id: baelish.id, project_id: book_club.id)
project_membership14 = ProjectMembership.create(member_id: tommen.id, project_id: book_club.id)

book_club_task1 = Task.create(assigner_id: varys.id, assignee_id: varys.id, title: "Choose next book", completion_status: false, project_id: book_club.id);
book_club_task2 = Task.create(assigner_id: varys.id, assignee_id: tommen.id, title: "Learn to read", completion_status: false, project_id: book_club.id);
book_club_task3 = Task.create(assigner_id: varys.id, assignee_id: tyrion.id, title: "Discover plot twist in unexpected chapter of inconspicuous book", completion_status: false, project_id: book_club.id);

project_membership15 = ProjectMembership.create(member_id: brienne.id, project_id: bear_fur.id)
project_membership16 = ProjectMembership.create(member_id: jon_snow.id, project_id: bear_fur.id)
project_membership17 = ProjectMembership.create(member_id: jeor_mormont.id, project_id: bear_fur.id)
project_membership18 = ProjectMembership.create(member_id: robb.id, project_id: bear_fur.id)

bear_fur_task1 = Task.create(assigner_id: brienne.id, assignee_id: jon_snow.id, title: "Submit report on market trends in Dorne", completion_status: false, project_id: bear_fur.id);
bear_fur_task2 = Task.create(assigner_id: brienne.id, assignee_id: jeor_mormont.id, title: "Meet with traders from the North", completion_status: false, project_id: bear_fur.id);
bear_fur_task3 = Task.create(assigner_id: robb.id, assignee_id: brienne.id, title: "Trade on Beaver furs futures as a safeguard against bear fur market plummet", completion_status: false, project_id: bear_fur.id);
bear_fur_task4 = Task.create(assigner_id: jeor_mormont.id, assignee_id: robb.id, title: "Research market competitiveness of polar bear fur", completion_status: false, project_id: bear_fur.id);

project_membership19 = ProjectMembership.create(member_id: qyburn.id, project_id: onion_juice.id)
project_membership20 = ProjectMembership.create(member_id: aemon.id, project_id: onion_juice.id)
project_membership21 = ProjectMembership.create(member_id: sam_tarly.id, project_id: onion_juice.id)
project_membership22 = ProjectMembership.create(member_id: tyrion.id, project_id: onion_juice.id)

onion_juice_task1 = Task.create(assigner_id: aemon.id, assignee_id: qyburn.id, title: "Sample yellow onion skins", completion_status: false, project_id: onion_juice.id);
onion_juice_task2 = Task.create(assigner_id: aemon.id, assignee_id: sam_tarly.id, title: "Publish last quarter's report in Vegetable Physiology Journal", completion_status: false, project_id: onion_juice.id);
onion_juice_task3 = Task.create(assigner_id: tyrion.id, assignee_id: qyburn.id, title: "Gargle mouthwash, your breath is terrible", completion_status: false, project_id: onion_juice.id);
onion_juice_task4 = Task.create(assigner_id: qyburn.id, assignee_id: tyrion.id, title: "Collect Qarthian variants of white onion when visiting Slaver's Bay", completion_status: false, project_id: onion_juice.id);
onion_juice_task5 = Task.create(assigner_id: aemon.id, assignee_id: sam_tarly.id, title: "Test new findings against known data regarding red onion seeds", completion_status: false, project_id: onion_juice.id);

project_membership23 = ProjectMembership.create(member_id: jon_snow.id, project_id: dragon_birthday.id)
project_membership24 = ProjectMembership.create(member_id: dany_targaryen.id, project_id: dragon_birthday.id)
project_membership25 = ProjectMembership.create(member_id: sansa.id, project_id: dragon_birthday.id)
project_membership26 = ProjectMembership.create(member_id: sam_tarly.id, project_id: dragon_birthday.id)

dragon_birthday_task1 = Task.create(assigner_id: jon_snow.id, assignee_id: sam_tarly.id, title: "Find out what kind of meat Drogon wants in his cake", completion_status: false, project_id: dragon_birthday.id);
dragon_birthday_task2 = Task.create(assigner_id: jon_snow.id, assignee_id: dany_targaryen.id, title: "Send invitations to other dragons", completion_status: false, project_id: dragon_birthday.id);
dragon_birthday_task3 = Task.create(assigner_id: dany_targaryen.id, assignee_id: sansa.id, title: "Remove flammable objects from convention center", completion_status: false, project_id: dragon_birthday.id);
dragon_birthday_task4 = Task.create(assigner_id: dany_targaryen.id, assignee_id: dany_targaryen.id, title: "Set up event on Facebook", completion_status: false, project_id: dragon_birthday.id);
dragon_birthday_task5 = Task.create(assigner_id: dany_targaryen.id, assignee_id: jon_snow.id, title: "Pickup party hats, Solo cups from Costco", completion_status: false, project_id: dragon_birthday.id);

project_membership27 = ProjectMembership.create(member_id: jon_snow.id, project_id: gazebo.id)
project_membership28 = ProjectMembership.create(member_id: ygritte.id, project_id: gazebo.id)
project_membership29 = ProjectMembership.create(member_id: aemon.id, project_id: gazebo.id)
project_membership30 = ProjectMembership.create(member_id: jeor_mormont.id, project_id: gazebo.id)
project_membership31 = ProjectMembership.create(member_id: alliser_thorne.id, project_id: gazebo.id)
project_membership32 = ProjectMembership.create(member_id: sam_tarly.id, project_id: gazebo.id)

gazebo_task1 = Task.create(assigner_id: jeor_mormont.id, assignee_id: alliser_thorne.id, title: "Explore possible spring sources for hot water supply", completion_status: false, project_id: gazebo.id);
gazebo_task2 = Task.create(assigner_id: alliser_thorne.id, assignee_id: ygritte.id, title: "Purchase desalinification tools for purifying hottub water", completion_status: false, project_id: gazebo.id);
gazebo_task3 = Task.create(assigner_id: aemon.id, assignee_id: sam_tarly.id, title: "Meet with architectural candidates to review proposals for gazebo build", completion_status: false, project_id: gazebo.id);
gazebo_task4 = Task.create(assigner_id: aemon.id, assignee_id: ygritte.id, title: "Meet with Feng Shui consultant to discuss positioning of hot tub", completion_status: false, project_id: gazebo.id);
gazebo_task5 = Task.create(assigner_id: jon_snow.id, assignee_id: aemon.id, title: "Draw up budget for 2018 expenditures related to hottub project", completion_status: false, project_id: gazebo.id);
