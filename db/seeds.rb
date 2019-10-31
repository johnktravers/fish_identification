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
        molas: 450
      }

family_codes = families.values

family_file = File.read('app/assets/data/family_data.json')
family_hash = JSON.parse(family_file)

family_hash['data'].each do |datum|
  if family_codes.include?(datum['FamCode'])
    Family.create(
      family_code: datum['FamCode'],
      name: datum['Family'],
      english: datum['CommonName'],
      genera: datum['Genera'],
      species: datum['Species'],
      image: datum['FamPic']
    )
  end
end
