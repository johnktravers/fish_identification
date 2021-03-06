# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# ----------------------- Families ----------------------- #

families = {
        butterflyfishes: 343,
        barracudas: 360,
        driftfishes: 422,
        angelfishes: 460,
        tarpons: 47,
        mojarras: 326,
        surgeonfishes: 412,
        milkfish: 98,
        aholeholes: 301,
        jacks: 314,
        sea_chubs: 339,
        silversides: 623,
        mackerels_and_tunas: 416,
        surfperches: 348,
        halfbeaks: 475,
        billfishes: 419,
        porgies: 330,
        spadefishes: 340,
        dolphinfishes: 315,
        sea_basses: 289,
        bigeyes: 303,
        molas: 450,
        cardinalfishes: 304,
        grunts: 327,
        parrotfishes: 364,
        gobies: 405,
        snappers: 323,
        wrasses: 362,
        blennies: 392,
        damselfishes: 350,
        jawfishes: 366,
        squirrelfishes: 243,
        frogfishes: 192,
        batfishes: 194,
        lizardfishes: 160,
        filefishes: 517,
        searobins: 266,
        hawkfishes: 352,
        remoras: 313,
        tonguefishes: 442,
        toadfishes: 189,
        puffers: 448,
        flounders: 439,
        scorpionfishes: 264,
        porcupinefishes: 449,
        clingfishes: 434,
        boxfishes: 446,
        drums_or_croakers: 331,
        stargazers: 378,
        triggerfishes: 445,
        tilefishes: 308,
        goatfishes: 332,
        snake_eels: 66,
        trumpetfishes: 253,
        requiem_sharks: 11,
        cornetfishes: 254,
        hammerhead_sharks: 12,
        pipefishes_and_seahorses: 258,
        eagle_and_manta_rays: 22,
        moray_eels: 56,
        conger_eels: 62
      }

family_codes = families.values

family_file = File.read('app/assets/data/family_data.json')
family_hash = JSON.parse(family_file)

family_hash['data'].each do |datum|
  if family_codes.include?(datum['FamCode'])
    Family.create!(
      family_code: datum['FamCode'],
      name: datum['Family'],
      english: datum['CommonName'],
      genera: datum['Genera'],
      species: datum['Species'],
      image: datum['FamPic']
    )
  end
end

# ----------------------- Species ----------------------- #

page_nums = (1..7).to_a

page_nums.each do |page_num|
  species_file = File.read("app/assets/data/species_data_#{page_num}.json")
  species_hash = JSON.parse(species_file)

  species_hash['data'].each do |datum|
    if family_codes.include?(datum['FamCode']) && datum['Pic'] && datum['FBname']
      family = Family.find_by(family_code: datum['FamCode'])
      family.fish.create!(
        species_code: datum['SpecCode'],
        family_code: datum['FamCode'],
        genus: datum['Genus'],
        species: datum['Species'],
        english: datum['FBname'],
        image: datum['Pic']
      )
    end
  end
end
