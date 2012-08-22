# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)
schools = {"Stanford University" => ["Arroyo", "Cedro", "Junipero", "Okada", "Otero", "Rinconada", "Soto", "Trancos", "Burbank", "Donner", "Larkin", "Serra", "Twain", "Casa Zapata", "Ujamma", "Roble", "Lagunita Court", "Alondra", "Cardenal", "Faisan", "Gavilan", "Loro", "Mirlo", "Paloma"]}

schools.each do |school,dorms|
d = School.find_or_create_by_name(:name => school)
dorms.each do |dorm|
  Dorm.where(:school_id => d.id, :name => dorm).first_or_create
  end
end



