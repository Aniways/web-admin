Style.delete_all
Pack.delete_all

4.times do |index|
	style = Style.create(name: "s_#{index}")
	style.packs.create(name:"p_#{index}")
	style.packs.create(name:"p_#{index}_2")
end