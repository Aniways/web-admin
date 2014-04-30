Style.delete_all
Pack.delete_all

4.times do |index|
	style = Style.create(name: "s_#{index}")
	style.packs.create(name:"p_#{index}")
	style.packs.create(name:"p_#{index}_2")
	style.packs.create(name:"p_#{index}_3")
	style.packs.create(name:"p_#{index}_4")
	style.packs.create(name:"p_#{index}_5")
	style.packs.create(name:"p_#{index}_6")
	style.packs.create(name:"p_#{index}_7")
	style.packs.create(name:"p_#{index}_8")
end