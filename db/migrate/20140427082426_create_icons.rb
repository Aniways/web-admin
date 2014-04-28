class CreateIcons < ActiveRecord::Migration
  def change
    create_table "icons", force: true do |t|
    t.string  "name"                  
    t.references "pack"                                          
    t.binary  "asset_ldpi"
    t.binary  "asset_mdpi"
    t.binary  "asset_hdpi"
    t.binary  "asset_xhdpi"
    t.binary  "asset_xxhdpi"
    t.binary  "asset_non_retina"
    t.binary  "asset_retina"
    t.string  "md5_ldpi"            
    t.string  "md5_mdpi"              
    t.string  "md5_hdpi"               
    t.string  "md5_xhdpi"             
    t.string  "md5_xxhdpi"             
    t.string  "md5_non_retina"         
    t.string  "md5_retina"             
    t.string  "unicode_representation" 
    t.binary  "is_emoji"               
    t.binary  "is_locked_default"      
    t.binary  "is_default"             
    t.integer "index_in_pack_default"  
    t.binary  "is_new"                
    t.string  "category"              
  end
  end
end
