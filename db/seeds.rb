Heroine.destroy_all
Power.destroy_all

powers = [
  {name:"super strength", description: "gives the wielder super-human strengths" },
  {name:"flight", description: "gives the wielder the ability to fly through the skies at supersonic speed" },
  {name:"super human senses", description: "allows the wielder to user her senses at a super-human level" },
  {name:"elasticity", description: "can stretch the human body to extreme lengths" }
]

powers.each {|power| Power.create(power)}

heroines = [
  {name: "Kamala Khan", super_name: "Ms. Marvel", image: "https://d.newsweek.com/en/full/558935/kamalakhan220.jpg"},
  {name: "Doreen Green", super_name: "Squirrel Girl", image: "https://comicvine1.cbsistatic.com/uploads/scale_medium/6/67663/6923388-44-variant.jpg" },
  {name:"Gwen Stacy", super_name:"Spider-Gwen", image: "https://s3.amazonaws.com/prod-media.gameinformer.com/styles/full/s3/2019/05/10/df390646/promo_spidergwen.jpg" },
  {name:"Janet Van Dyne", super_name:"The Wasp", image: "https://www.syfy.com/sites/syfy/files/styles/1200x680/public/2018/05/ahr0cdovl3d3dy5uzxdzyxjhbweuy29tl2ltywdlcy9plzawmc8xntavmzm3l2kwmi90agutd2fzcc5qcgc.jpg" },
  {name:"Wanda Maximoff", super_name:"Scarlet Witch", image: "https://nerdist.com/wp-content/uploads/2019/07/Scarlet-Witch-Not-A-Mutant-1200x676.jpg" },
  {name:"Carol Danvers", super_name:"Captain Marvel", image: "https://images.immediate.co.uk/production/volatile/sites/3/2018/01/28627f1cb393e26bd26d14a960df182e83269c7d-08eee28.jpg?quality=90&resize=620,413" },
  {name:"Jean Grey", super_name:"Dark Phoenix", image: "https://starbaseatlanta.com/wp-content/uploads/mv-maab71139.jpg" },
  {name:"Ororo Munroe", super_name:"Storm", image: "https://townsquare.media/site/622/files/2015/08/storm-feat-630x420.jpg?w=980&q=75" },
  {name:"Kitty Pryde", super_name:"Shadowcat", image: "https://www.awardscircuit.com/wp-content/uploads/2018/02/X-Men-Shadowcat-Kitty-Pryde.jpg" },
  {name:"Elektra Natchios", super_name:"Elektra", image: "https://www.writeups.org/wp-content/uploads/Elektra-Marvel-Comics-Daredevil-h2.jpg" }
]

# ---------------
# POWERFUL HEROINES:
# Once you set up your tables and associations the way you want them, you can
# uncomment the following method to associate heroine with a power!
# Just uncomment line 33 and run `rake db:seed` again in your terminal.
# (******Note****** If you try to do this before you set up proper associations, it will error.)
# ---------------
heroines = heroines.map { |heroine| heroine.merge( { power_id: Power.all.sample.id } ) }
# ---------------

heroines.each { |heroine| Heroine.create(heroine) }
