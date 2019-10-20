# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

fish_families = FishFamily.create([
  {
    name: 'Chaetodontidae',
    english: 'Butterflyfish',
    spanish: 'Pez Mariposa',
    image: 'https://www.fishbase.se/images/thumbnails/gif/tn_CHAETOT0.gif'
  },
  {
    name: 'Sphyraenidae',
    english: 'Barracudas',
    spanish: 'Barracudas',
    image: 'https://www.fishbase.se/images/thumbnails/gif/tn_SPHYRAT0.gif'
  },
  {
    name: 'Nomeidae',
    english: 'Driftfishes',
    spanish: 'Flotador',
    image: 'https://www.fishbase.se/images/thumbnails/gif/tn_NOMEIDT0.gif'
  },
  {
    name: 'Pomacanthidae',
    english: 'Angelfish',
    spanish: 'Pez Ángel',
    image: 'https://www.fishbase.se/images/thumbnails/gif/tn_POMACAT0.gif'
  },
  {
    name: 'Elopidae',
    english: 'Tarpons',
    spanish: 'Tarpón',
    image: 'https://www.fishbase.se/images/thumbnails/gif/tn_ELOPIDT0.gif'
  },
  {
    name: 'Gerreidae',
    english: 'Mojarras',
    spanish: 'Mojarra',
    image: 'https://www.fishbase.se/images/thumbnails/gif/tn_GERREIT0.gif'
  },
  {
    name: 'Acanthuridae',
    english: 'Surgeonfish',
    spanish: 'Pez Cirujano',
    image: 'https://www.fishbase.se/images/thumbnails/gif/tn_ACANTHT1.gif'
  },
  {
    name: 'Chanidae',
    english: 'Milkfishes',
    spanish: 'Sabalote',
    image: 'https://www.fishbase.se/images/thumbnails/gif/tn_CHANIDT0.gif'
  },
  {
    name: 'Kuhliidae',
    english: 'Flagtails',
    spanish: 'Bandera',
    image: 'https://www.fishbase.se/images/thumbnails/gif/tn_KUHLIIT0.gif'
  },
  {
    name: 'Carangidae',
    english: 'Jacks',
    spanish: 'Jurel',
    image: 'https://www.fishbase.se/images/thumbnails/gif/tn_CARANGT0.gif'
  },
  {
    name: 'Kyphosidae',
    english: 'Sea Chubs',
    spanish: 'Chopa',
    image: 'https://www.fishbase.se/images/thumbnails/gif/tn_KYPHOST0.gif'
  },
  {
    name: 'Atherinidae',
    english: 'Silversides',
    spanish: 'Pejerrey',
    image: 'https://www.fishbase.se/images/thumbnails/gif/tn_ATHERIT0.gif'
  },
  {
    name: 'Scombridae',
    english: 'Mackerels & Tunas',
    spanish: 'Macarela & Atún',
    image: 'https://www.fishbase.se/images/thumbnails/gif/tn_SCOMBRT0.gif'
  },
  {
    name: 'Embiotocidae',
    english: 'Surfperches',
    spanish: 'Percas',
    image: 'https://www.fishbase.se/images/thumbnails/gif/tn_EMBIOTT0.gif'
  },
  {
    name: 'Hemiramphidae',
    english: 'Halfbeaks',
    spanish: 'Pez Aguja',
    image: 'https://www.fishbase.se/images/thumbnails/gif/tn_HEMIRAT0.gif'
  },
  {
    name: 'Istiophoridae',
    english: 'Billfishes',
    spanish: 'Marlines',
    image: 'https://www.fishbase.se/images/thumbnails/gif/tn_ISTIOPT0.gif'
  },
  {
    name: 'Sparidae',
    english: 'Porgies',
    spanish: 'Pargo',
    image: 'https://www.fishbase.se/images/thumbnails/gif/tn_SPARIDT0.gif'
  },
  {
    name: 'Ephippidae',
    english: 'Spadefishes',
    spanish: 'Paguala',
    image: 'https://www.fishbase.se/images/thumbnails/gif/tn_EPHIPPT0.gif'
  }
])

fish_families[0].fish.create([
  {
    scientific_name: 'Forcipiger flavissimus',
    english: 'Forcepsfish',
    spanish: 'Mariposa Hocicona',
    image: 'https://www.fishbase.se/images/species/Fofla_u6.jpg'
  },
  {
    scientific_name: 'Chaetodon humeralis',
    english: 'Threebanded Butterflyfish',
    spanish: 'Mariposa Muñeca',
    image: 'https://www.fishbase.se/photos/workimagethumb.php?s=http://www.fishbase.se/tools/UploadPhoto/uploads/1435108272_108.64.185.41.jpg&w=600'
  }
])

fish_families[1].fish.create([
  {
    scientific_name: 'Sphyraena qenie',
    english: 'Blackfin Barracuda',
    spanish: 'Barracuda Aleta Negra',
    image: 'https://www.fishbase.se/images/species/Spqen_u6.jpg'
  },
  {
    scientific_name: 'Sphyraena argentea',
    english: 'Pacific Barracuda',
    spanish: 'Barracuda Plateada',
    image: 'http://www.fishbase.se/tools/UploadPhoto/uploads/pacificbarracuda.jpg'
  }
])

fish_families[3].fish.create([
  {
    scientific_name: 'Pomacanthus zonipectus',
    english: 'Cortez Angelfish',
    spanish: 'Ángel de Cortés',
    image: 'https://www.fishbase.se/images/species/Pozon_u4.jpg'
  },
  {
    scientific_name: 'Holacanthus clarionensis',
    english: 'Clarion Angelfish',
    spanish: 'Ángel de Clarión',
    image: 'https://www.fishbase.se/photos/workimagethumb.php?s=http://www.fishbase.se/tools/UploadPhoto/uploads/1446041641_173.19.96.111.jpg&w=600'
  }
])
