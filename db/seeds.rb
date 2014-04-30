Style.delete_all
Pack.delete_all

4.times do |index|
  style = Style.create(name: "s_#{index}")
  (1..8).to_a.sample.times do |pack_index|
    pack = style.packs.build(name:"p_#{index}_#{pack_index}")
    (1..10).to_a.sample.times do |icon_index|
      pack.icons.build(name: "i_#{pack_index}_#{icon_index}")
    end
  end
  style.save
end